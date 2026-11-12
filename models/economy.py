"""A small task economy, used to show what automation does to wages.

The economy makes one final good out of a continuum of tasks i in [0, 1].
Tasks combine with elasticity of substitution `sigma` (below 1 means every task
is needed: the tasks are complements).

    Y = A * ( integral of y(i)^rho di )^(1/rho),   rho = (sigma - 1) / sigma

A share `I` of the tasks has been automated. In an automated task a machine and
a person are perfect substitutes, and one unit of machine capital does the work
of `gamma` people. In the other tasks only people can work.

    y(i) = gamma * k(i) + l(i)   for automated tasks
    y(i) = l(i)                  for the rest

An optional fixed factor N (land, energy, raw materials) enters through
    Y_final = Y^alpha * N^(1 - alpha).

With competitive markets the allocation is the efficient one, and it has two
regimes:

  1. Machines are plentiful. People work only in the tasks machines cannot do.
     Those tasks are the bottleneck and the wage carries a scarcity premium.
  2. Machines are scarce, or everything is automated. People also work in
     automated tasks, side by side with machines, and an hour of human work is
     worth exactly what a machine doing the same work earns.

The closed forms below are checked against a brute-force optimiser in
`python3 models/economy.py`.
"""
from dataclasses import dataclass

import numpy as np


@dataclass
class Outcome:
    output: float
    wage: float
    rental: float  # income of one unit of machine capital
    labor_share: float
    regime: int


def task_economy(K, L, I, gamma=1.0, A=1.0, sigma=0.5, alpha=1.0, N=1.0) -> Outcome:
    """Competitive outcome for capital K, labour L and automated share I."""
    I = min(max(I, 0.0), 1.0)
    machine_intensity = gamma * K / I if I > 0 else 0.0
    human_intensity = L / (1 - I) if I < 1 else np.inf

    if I < 1 and human_intensity <= machine_intensity:
        regime = 1
        if abs(sigma - 1) < 1e-9:
            X = (machine_intensity**I) * (human_intensity ** (1 - I))
            dX_dL = (1 - I) * X / L
            dX_dK = I * X / K
        else:
            rho = (sigma - 1) / sigma
            X = (I * machine_intensity**rho + (1 - I) * human_intensity**rho) ** (1 / rho)
            dX_dL = X ** (1 - rho) * human_intensity ** (rho - 1)
            dX_dK = X ** (1 - rho) * machine_intensity ** (rho - 1) * gamma
    else:
        regime = 2
        X = gamma * K + L
        dX_dL = 1.0
        dX_dK = gamma

    Y = A * X**alpha * N ** (1 - alpha)
    scale = alpha * Y / X
    wage = scale * dX_dL
    rental = scale * dX_dK
    return Outcome(Y, wage, rental, wage * L / Y, regime)


def simulate(
    years=40,
    I0=0.50,
    I_max=1.0,
    start=4.0,
    finish=30.0,
    sigma=0.5,
    saving=0.10,
    depreciation=0.06,
    gamma_growth=0.05,
    A_growth=0.0,
    labor_share0=0.58,
    alpha=1.0,
    N=1.0,
):
    """Path of the economy while the automated share rises along an S-curve.

    The automated share of tasks rises from `I0` toward 1 between the years
    `start` and `finish`, and stops when it reaches `I_max`. Runs with different
    `I_max` therefore follow the same path until the lower ceiling is reached.
    Each unit of machine capital does `gamma_growth` more work every year
    (machines get better and cheaper). Owners reinvest the share `saving` of
    output in new machine capital. The starting capital stock is chosen so that
    the labour share equals `labor_share0`. Returns a dict of arrays by year.
    """
    L = 1.0

    def frontier(t):
        x = min(max((t - start) / (finish - start), 0.0), 1.0)
        return min(I0 + (1.0 - I0) * (3 * x**2 - 2 * x**3), I_max)

    # Calibrate initial capital by bisection on the labour share.
    lo, hi = 1e-6, 1e6
    for _ in range(200):
        mid = np.sqrt(lo * hi)
        share = task_economy(mid, L, I0, sigma=sigma, alpha=alpha, N=N).labor_share
        # With complementary tasks, more capital raises the labour share.
        if (share < labor_share0) == (sigma < 1):
            lo = mid
        else:
            hi = mid
    K = np.sqrt(lo * hi)

    out = {k: [] for k in ("year", "I", "K", "Y", "wage", "rental", "labor_share", "regime")}
    gamma, A = 1.0, 1.0
    for t in range(years + 1):
        I = frontier(t)
        o = task_economy(K, L, I, gamma=gamma, A=A, sigma=sigma, alpha=alpha, N=N)
        for key, value in zip(out, (t, I, K, o.output, o.wage, o.rental, o.labor_share, o.regime)):
            out[key].append(value)
        K = (1 - depreciation) * K + saving * o.output
        gamma *= 1 + gamma_growth
        A *= 1 + A_growth
    return {k: np.array(v) for k, v in out.items()}


def _check():
    """Compare the closed forms with direct numerical optimisation."""
    from scipy.optimize import minimize

    rng = np.random.default_rng(0)
    n = 40  # tasks
    worst = 0.0
    for _ in range(12):
        sigma = rng.choice([0.4, 0.5, 0.7, 1.5])
        rho = (sigma - 1) / sigma
        I = rng.choice([0.25, 0.5, 0.75, 0.9])
        K, L, gamma = rng.uniform(0.2, 5), 1.0, rng.uniform(0.5, 3)
        auto = np.arange(n) < round(I * n)

        def negative_output(z, K=K, L=L):
            k = np.where(auto, np.exp(z[:n]), 0.0)
            l = np.exp(z[n:])
            k = k / k.sum() * K * n
            l = l / l.sum() * L * n
            y = gamma * k + l
            return -np.mean(y**rho) ** (1 / rho)

        best = min(
            (minimize(negative_output, rng.normal(size=2 * n), method="L-BFGS-B") for _ in range(4)),
            key=lambda r: r.fun,
        )
        closed = task_economy(K, L, I, gamma=gamma, sigma=sigma).output
        worst = max(worst, abs(-best.fun - closed) / closed)
    print(f"largest gap between closed form and optimiser: {worst:.2e}")
    assert worst < 2e-3

    # Marginal products agree with finite differences.
    for I in (0.3, 0.8, 1.0):
        base = task_economy(2.0, 1.0, I, gamma=1.5, sigma=0.5)
        dL = (task_economy(2.0, 1.0 + 1e-6, I, gamma=1.5, sigma=0.5).output - base.output) / 1e-6
        dK = (task_economy(2.0 + 1e-6, 1.0, I, gamma=1.5, sigma=0.5).output - base.output) / 1e-6
        assert abs(dL - base.wage) < 1e-4 and abs(dK - base.rental) < 1e-4, (I, dL, base.wage, dK, base.rental)
    print("marginal products match finite differences")


if __name__ == "__main__":
    _check()
