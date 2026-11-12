"""Figure: the race between automation and the accumulation of machines.

Two worlds that follow the same path until machines can do 90% of tasks. In
one, automation stops there. In the other it goes on to 100%. In each world the
wage is shown for three rates at which owners reinvest output in more machines.
"""
import numpy as np
from matplotlib import patheffects

import style
from economy import simulate

YEARS = 40
SAVING = [(0.05, "5%", style.BLUES[0]), (0.10, "10%", style.BLUES[2]), (0.20, "20%", style.BLUES[4])]
WORLDS = [("Machines stop at 90% of tasks", 0.90), ("Machines reach 100% of tasks", 1.00)]

fig, axes = style.figure(height=4.1, ncols=2, nrows=2, sharex=True, sharey="row",
                         gridspec_kw={"height_ratios": [3.4, 1], "hspace": 0.16, "wspace": 0.34})

report = []
for col, (title, I_max) in enumerate(WORLDS):
    top, bottom = axes[0, col], axes[1, col]
    for saving, label, color in SAVING:
        run = simulate(years=YEARS, I_max=I_max, saving=saving)
        t = run["year"]
        wage = run["wage"] / run["wage"][0]
        top.plot(t, wage, color=color, lw=2.0)
        peak = int(np.argmax(wage))
        floor = next((int(y) for y, r in zip(t, run["regime"]) if r == 2), None)
        report.append((title, label, wage[peak], peak, run["I"][peak], floor, None if floor is None else run["I"][floor], wage[-1]))
        if col == 0:
            style.end_label(top, t[-1], wage[-1], f"×{wage[-1]:.0f}", color, dy={0.05: -3, 0.10: -4, 0.20: 6}[saving])
        else:
            # Labels sit inside each curve's own hump (or above the top one), clear of the other lines.
            offset, va = {0.05: ((0, -6), "top"), 0.10: ((-9, -17), "top"), 0.20: ((0, 5), "bottom")}[saving]
            text = top.annotate(f"peak ×{wage[peak]:.1f}" if wage[peak] < 10 else f"peak ×{wage[peak]:.0f}", (t[peak], wage[peak]),
                                xytext=offset, textcoords="offset points", ha="center", va=va, fontsize=7.2, color=style.SOFT)
            text.set_path_effects([patheffects.withStroke(linewidth=2.2, foreground="white")])
    if col == 1:
        style.end_label(top, t[-1], wage[-1], f"×{wage[-1]:.2f}: the\nmachine price", style.BLUES[4])
    top.set_yscale("log")
    top.set_ylim(0.5, 100)
    top.set_yticks([0.5, 1, 2, 5, 10, 20, 50, 100])
    top.set_yticklabels(["0.5", "1", "2", "5", "10", "20", "50", "100"])
    top.minorticks_off()
    top.set_title(title)
    top.axhline(1, color=style.AXIS, lw=0.8, zorder=1)

    bottom.fill_between(t, 0, run["I"] * 100, color=style.GRAY, alpha=0.25, lw=0)
    bottom.plot(t, run["I"] * 100, color=style.SOFT, lw=1.4)
    bottom.set_ylim(0, 105)
    bottom.set_yticks([0, 50, 100])
    bottom.set_xlabel("Years")
    bottom.set_xlim(0, YEARS)
    bottom.annotate(f"{run['I'][-1] * 100:.0f}%", (t[-1], run["I"][-1] * 100), xytext=(5, 0), textcoords="offset points",
                    va="center", fontsize=7.5, color=style.SOFT, annotation_clip=False)

axes[0, 0].set_ylabel("Wage, start = 1 (log scale)")
axes[1, 0].set_ylabel("Tasks done\nby machines, %")
handles = [axes[0, 0].plot([], [], color=c, lw=2.0)[0] for _, _, c in SAVING]
legend = fig.legend(handles, [label for _, label, _ in SAVING], loc="upper center", ncol=3, bbox_to_anchor=(0.48, 1.0),
                    columnspacing=1.6, handlelength=1.4, title="Share of output that owners reinvest in more machines")
legend.get_title().set_fontsize(7.5)
legend.get_title().set_color(style.SOFT)
fig.subplots_adjust(left=0.10, right=0.86, top=0.84, bottom=0.11)
style.save(fig, "cliff", tight=False)

for title, label, peak, year, share, floor, floor_share, final in report:
    tail = f"reaches the machine price in year {floor} at {floor_share:.0%} automation" if floor is not None else "never reaches the machine price"
    print(f"{title}, reinvest {label}: wage peaks x{peak:.2f} in year {year} at {share:.0%} automation; {tail}; ends x{final:.2f}")
