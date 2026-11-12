"""Scenario accounting for 2026-2036.

This is bookkeeping, not prediction. Each scenario is a set of assumptions about
how fast machines take over three kinds of work. The model turns those
assumptions into paths for hours worked, the employment rate, labour's share of
income and output, using a few simple relations that are stated here in full.

Kinds of work (shares of US jobs and of US wages):

    screen      work that can be done entirely from home, which in
                practice means at a computer                        37% / 46%
    physical    the nine mainly physical occupation groups          42% / 29%
    in_person   the rest: face-to-face and mixed work               21% / 25%

Sources: Dingel and Neiman (2020) for the screen share; BLS Occupational
Employment and Wage Statistics, May 2025, for the physical share; the remainder
is in-person work. See research/04 and research/05.

Relations:

1. Machine share of each kind of work follows an S-curve from its 2026 level
   toward a ceiling (the ceiling is below 1 where law or preference keeps work
   human).

2. Hours of human work, relative to a no-AI trend:
       hours = 1 - M * (1 - r * (1 - M)) + policy_jobs - recession
   M is the job-weighted machine share. r is the share of displaced hours that
   find other work when machines are still rare; reabsorption fades as M rises,
   because there is less and less work that machines cannot also do.

3. Output, relative to a 1.9%-a-year trend:
       output = (1 + 1.6 * Mw^2) * exp(kappa * cumulative physical share)
   Mw is the wage-weighted machine share. The second factor is the extra growth
   that comes when machines can build machines; kappa is zero or small except in
   the takeoff scenario.

4. Labour's share of income:
       share = 53.0% * hours * (1 - 0.5 * (1 - hours))
   While people are still needed, pay per hour keeps pace with output per
   person, less a discount for slack in the labour market.

Relations 2 to 4, with r = 0.85, roughly match the three 2030 scenarios that
Anthropic published with Korinek, Jones, Sacher, Cotter and McCrory (2026): the
fit is close for output and loose for labour's share (run this file to see the
comparison). The published scenarios describe their middle and upper cases as AI
doing about half, and nearly all, of knowledge work; the level of one fifth used
here for the lowest case is an assumption. Everything beyond those levels, and
everything about physical work, is extrapolation.

A limit of this bookkeeping: relation 4 keeps pay per hour in step with output
per person, so total pay stays close to its no-AI path in every scenario and the
pay of those still in work rises as their number falls. That is the regime in
which remaining human tasks are a bottleneck. The model has no machine price and
no wage ceiling, so for the two fast scenarios its labour-share figures are
upper limits.
"""
from dataclasses import dataclass, field

import numpy as np

JOBS = {"screen": 0.37, "physical": 0.42, "in_person": 0.21}
WAGES = {"screen": 0.46, "physical": 0.29, "in_person": 0.25}
START = {"screen": 0.05, "physical": 0.005, "in_person": 0.005}  # machine share in 2026

LABOR_SHARE_2026 = 53.0  # percent, BLS nonfarm business, Q3 2026
PRIME_AGE_RATE_2026 = 80.7  # percent of people aged 25-54 in work, October 2026
TREND_GROWTH = 0.019
SLACK_DISCOUNT = 0.5
OUTPUT_GAIN = 1.6

YEARS = np.arange(2026, 2037)


@dataclass
class Scenario:
    key: str
    name: str
    # (ceiling, midpoint year, steepness) of the S-curve for each kind of work
    screen: tuple
    physical: tuple
    in_person: tuple
    reabsorption: float = 0.85
    kappa: float = 0.0
    policy_jobs_2036: float = 0.0  # share of trend hours created by public programmes by 2036
    recession: dict = field(default_factory=dict)  # year -> (hours lost, output lost)


SCENARIOS = [
    Scenario(
        "slow", "Slow diffusion",
        screen=(0.50, 2042, 0.25), physical=(0.40, 2050, 0.20), in_person=(0.20, 2050, 0.20),
        reabsorption=0.90,
    ),
    Scenario(
        "squeeze", "The squeeze",
        screen=(0.85, 2035, 0.35), physical=(0.85, 2041, 0.40), in_person=(0.50, 2042, 0.30),
        reabsorption=0.85, kappa=0.02, policy_jobs_2036=0.015,
        recession={2028: (0.025, 0.03), 2029: (0.020, 0.02), 2030: (0.010, 0.01), 2031: (0.003, 0.0)},
    ),
    Scenario(
        "fast", "Rentier drift",
        screen=(0.95, 2032.5, 0.50), physical=(0.90, 2037, 0.50), in_person=(0.60, 2039, 0.35),
        reabsorption=0.75, kappa=0.06, policy_jobs_2036=0.02,
        recession={2028: (0.030, 0.03), 2029: (0.020, 0.02), 2030: (0.010, 0.0)},
    ),
    Scenario(
        "takeoff", "Takeoff",
        screen=(0.98, 2030, 0.90), physical=(0.95, 2033.5, 0.80), in_person=(0.70, 2035, 0.60),
        reabsorption=0.65, kappa=0.25, policy_jobs_2036=0.03,
    ),
    Scenario(
        "brake", "The brake",
        screen=(0.30, 2030, 0.45), physical=(0.15, 2040, 0.30), in_person=(0.05, 2040, 0.30),
        reabsorption=0.90,
    ),
]


def s_curve(years, start, ceiling, midpoint, steepness):
    """Machine share rising from `start` in 2026 toward `ceiling`."""
    logistic = lambda t: 1 / (1 + np.exp(-steepness * (t - midpoint)))
    progress = (logistic(years) - logistic(2026)) / (1 - logistic(2026))
    return start + (ceiling - start) * progress


def hours_index(M, reabsorption, policy_jobs=0.0, recession=0.0):
    return 1 - M * (1 - reabsorption * (1 - M)) + policy_jobs - recession


def labor_share(hours):
    return LABOR_SHARE_2026 * hours * (1 - SLACK_DISCOUNT * (1 - hours))


def run(s: Scenario, years=YEARS):
    share = {k: s_curve(years, START[k], *getattr(s, k)) for k in JOBS}
    M = sum(JOBS[k] * share[k] for k in JOBS)
    Mw = sum(WAGES[k] * share[k] for k in JOBS)
    policy = s.policy_jobs_2036 * (years - 2026) / 10
    lost_hours = np.array([s.recession.get(int(y), (0, 0))[0] for y in years])
    lost_output = np.array([s.recession.get(int(y), (0, 0))[1] for y in years])

    hours = hours_index(M, s.reabsorption, policy, lost_hours)
    hours = hours / hours[0]  # every scenario starts from the same 2026 position
    cumulative_physical = np.cumsum(share["physical"]) - share["physical"][0]
    output_vs_trend = (1 + OUTPUT_GAIN * Mw**2) * np.exp(s.kappa * cumulative_physical) * (1 - lost_output)
    output = 100 * output_vs_trend * (1 + TREND_GROWTH) ** (years - 2026)
    return {
        "years": years,
        "screen": share["screen"],
        "physical": share["physical"],
        "in_person": share["in_person"],
        "machine_share": M,
        "machine_share_wages": Mw,
        "hours": hours,
        "employment_rate": PRIME_AGE_RATE_2026 * hours,
        "labor_share": labor_share(hours),
        "output_vs_trend": output_vs_trend,
        "output": output,
        "wage_bill_vs_trend": labor_share(hours) / LABOR_SHARE_2026 * output_vs_trend,
    }


def check_against_published():
    """Compare with Korinek, Jones, Sacher, Cotter and McCrory (2026), 2030 scenarios.

    Published: output above the no-AI path of 1.6%, 8.3% and 32.4%; labour share
    down 0.6, 3.9 and 14.8 points from 60%. The 'substantial' and 'extreme' cases
    are described as AI doing about half, and nearly all, of knowledge work.
    """
    print("Check against the published 2030 scenarios (screen work only):")
    print("  AI share of screen work | output gain: model, published | labour share change (of 60): model, published")
    for screen_share, pub_output, pub_share in ((0.20, 1.6, -0.6), (0.50, 8.3, -3.9), (0.97, 32.4, -14.8)):
        M, Mw = JOBS["screen"] * screen_share, WAGES["screen"] * screen_share
        hours = hours_index(M, 0.85)
        gain = 100 * OUTPUT_GAIN * Mw**2
        change = 60 * (labor_share(hours) / LABOR_SHARE_2026 - 1)
        print(f"  {screen_share:>22.0%} | {gain:5.1f}%  {pub_output:5.1f}% | {change:6.1f}  {pub_share:6.1f}")


if __name__ == "__main__":
    check_against_published()
    print()
    for s in SCENARIOS:
        r = run(s)
        print(s.name)
        for i in (0, 2, 4, 7, 10):
            growth = (r["output"][i] / r["output"][i - 1] - 1) * 100 if i else float("nan")
            print(
                f"  {r['years'][i]}: machines do {r['screen'][i]:4.0%} of screen, {r['physical'][i]:4.0%} of physical, "
                f"{r['machine_share'][i]:4.0%} of all work | employment rate {r['employment_rate'][i]:4.1f}% | "
                f"labour share {r['labor_share'][i]:4.1f}% | output {r['output'][i]:5.0f} | "
                f"wage bill vs trend {r['wage_bill_vs_trend'][i]:4.2f}"
            )
        avg = (r["output"][-1] / 100) ** (1 / 10) - 1
        print(f"  average real growth 2026-2036: {avg:.1%}")
