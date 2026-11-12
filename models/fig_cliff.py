"""Figure: the same economy with automation stopping at 90% of tasks, and reaching 100%."""
import numpy as np

import style
from economy import simulate

YEARS = 40
GAMMA_GROWTH = 0.05  # each unit of machine capital does 5% more work every year
runs = {
    "Machines stop at 90% of tasks": simulate(years=YEARS, I_max=0.90, gamma_growth=GAMMA_GROWTH),
    "Machines reach 100% of tasks": simulate(years=YEARS, I_max=1.00, gamma_growth=GAMMA_GROWTH),
}

fig, axes = style.figure(height=3.9, ncols=2, nrows=2, sharex=True, sharey="row",
                         gridspec_kw={"height_ratios": [3.2, 1], "hspace": 0.18, "wspace": 0.42})

for col, (title, run) in enumerate(runs.items()):
    top, bottom = axes[0, col], axes[1, col]
    t = run["year"]
    output = run["Y"] / run["Y"][0]
    wage = run["wage"] / run["wage"][0]

    top.plot(t, output, color=style.GRAY, lw=1.8)
    top.plot(t, wage, color=style.ORANGE, lw=2.2)
    top.set_yscale("log")
    top.set_ylim(0.5, 130)
    top.set_yticks([0.5, 1, 2, 5, 10, 20, 50, 100])
    top.set_yticklabels(["0.5", "1", "2", "5", "10", "20", "50", "100"])
    top.minorticks_off()
    top.set_title(title)
    top.axhline(1, color=style.AXIS, lw=0.8, zorder=1)
    close = abs(np.log(output[-1] / wage[-1])) < 0.5
    style.end_label(top, t[-1], output[-1], f"Output  ×{output[-1]:.0f}", style.GRAY, dy=5 if close else 0)
    style.end_label(top, t[-1], wage[-1], f"Wage  ×{wage[-1]:.1f}" if wage[-1] < 10 else f"Wage  ×{wage[-1]:.0f}",
                    style.ORANGE, dy=-5 if close else 0)
    if col == 1:
        peak = int(np.argmax(wage))
        top.annotate(f"Wage peaks at ×{wage[peak]:.1f}", (t[peak], wage[peak]), xytext=(0, -14),
                     textcoords="offset points", ha="center", fontsize=7.5, color=style.SOFT)

    bottom.fill_between(t, 0, run["I"] * 100, color=style.BLUE, alpha=0.10, lw=0)
    bottom.plot(t, run["I"] * 100, color=style.BLUE, lw=1.6)
    bottom.set_ylim(0, 105)
    bottom.set_yticks([0, 50, 100])
    bottom.set_xlabel("Years")
    bottom.set_xlim(0, YEARS)
    style.end_label(bottom, t[-1], run["I"][-1] * 100, f"{run['I'][-1] * 100:.0f}%", style.BLUE)

axes[0, 0].set_ylabel("Index, start = 1 (log scale)")
axes[1, 0].set_ylabel("Tasks done\nby machines, %")
fig.subplots_adjust(left=0.10, right=0.88, top=0.92, bottom=0.11)
style.save(fig, "cliff", tight=False)

for title, run in runs.items():
    w = run["wage"] / run["wage"][0]
    print(f"{title}: wage peak x{w.max():.2f} in year {int(np.argmax(w))}, final x{w[-1]:.2f}; "
          f"output final x{run['Y'][-1] / run['Y'][0]:.1f}; labour share final {run['labor_share'][-1]:.3f}")
