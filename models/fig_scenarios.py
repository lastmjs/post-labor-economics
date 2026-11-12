"""Figure: five technology paths for 2026-2036, from the scenario accounting."""
import csv

import numpy as np

import style
from scenarios import SCENARIOS, run

COLORS = dict(zip(["slow", "squeeze", "fast", "takeoff", "brake"], style.SERIES))
results = {s.key: run(s) for s in SCENARIOS}


def history(series, start_year=2016):
    xs, ys = [], []
    with open(style.DATA / "fred" / f"{series}.csv") as f:
        for row in csv.DictReader(f):
            year, month = int(row["observation_date"][:4]), int(row["observation_date"][5:7])
            if year >= start_year and row[series] not in ("", "."):
                xs.append(year + (month - 1) / 12)
                ys.append(float(row[series]))
    return np.array(xs), np.array(ys)


fig, axes = style.figure(height=5.3, ncols=2, nrows=2, gridspec_kw={"hspace": 0.42, "wspace": 0.30})
panels = [
    (axes[0, 0], "machine_share", "Share of all work done by machines, %", 100, None),
    (axes[0, 1], "employment_rate", "People aged 25–54 in work, %", 1, "LNS12300060"),
    (axes[1, 0], "labor_share", "Share of income paid for work, %", 1, "PRS85006173"),
    (axes[1, 1], "output", "Real output, 2026 = 100 (log scale)", 1, None),
]
for ax, key, title, scale, series in panels:
    if series:
        hx, hy = history(series)
        if series == "PRS85006173":
            hy = hy * 53.0 / hy[-1]  # the index, scaled to the published level for Q3 2026
        ax.plot(hx, hy, color=style.GRAY, lw=1.3)
    for s in SCENARIOS:
        r = results[s.key]
        ax.plot(r["years"], r[key] * scale, color=COLORS[s.key], lw=1.9, label=s.name)
    ax.set_title(title, fontsize=8)
    ax.set_xlim(2016 if series else 2026, 2036.4)
    ax.set_xticks([2016, 2021, 2026, 2031, 2036] if series else [2026, 2028, 2030, 2032, 2034, 2036])
    if series:
        ax.axvline(2026.8, color=style.AXIS, lw=0.7, ymax=0.96)

axes[1, 1].set_yscale("log")
axes[1, 1].set_yticks([100, 150, 200, 300, 500])
axes[1, 1].set_yticklabels(["100", "150", "200", "300", "500"])
axes[1, 1].minorticks_off()
axes[0, 0].set_ylim(0, 100)
axes[0, 1].set_ylim(20, 90)
axes[1, 0].set_ylim(0, 65)
axes[0, 1].annotate("recorded", (2016.3, 71.5), fontsize=7, color=style.MUTED)
axes[1, 0].annotate("recorded", (2016.3, 47.5), fontsize=7, color=style.MUTED)

handles, labels = axes[0, 0].get_legend_handles_labels()
fig.legend(handles, labels, loc="upper center", ncol=5, bbox_to_anchor=(0.5, 1.0), columnspacing=1.6)
fig.subplots_adjust(left=0.07, right=0.975, top=0.885, bottom=0.06)
style.save(fig, "scenarios", tight=False)

print("Scenario values in 2030 and 2036")
for s in SCENARIOS:
    r = results[s.key]
    row = lambda i: (f"machines {r['machine_share'][i]:.0%} of work (screen {r['screen'][i]:.0%}, physical {r['physical'][i]:.0%}), "
                     f"employment {r['employment_rate'][i]:.1f}%, labour share {r['labor_share'][i]:.1f}%, output {r['output'][i]:.0f}")
    print(f"  {s.name:15s} 2030: {row(4)}")
    print(f"  {'':15s} 2036: {row(10)}  avg growth {(r['output'][-1] / 100) ** 0.1 - 1:.1%}")
