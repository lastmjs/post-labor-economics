"""Figure: labour's share of US income, 1947-2026."""
import csv

import style

xs, ys = [], []
with open(style.DATA / "fred" / "PRS85006173.csv") as f:
    for row in csv.DictReader(f):
        if row["PRS85006173"] not in ("", "."):
            year, month = int(row["observation_date"][:4]), int(row["observation_date"][5:7])
            xs.append(year + (month - 1) / 12)
            ys.append(float(row["PRS85006173"]))
# The series is an index (2017 = 100). BLS reports the level for Q3 2026 as 53.0 percent.
ys = [y * 53.0 / ys[-1] for y in ys]

fig, ax = style.figure(height=2.6)
ax.plot(xs, ys, color=style.BLUE)
ax.set_xlim(1947, 2027)
ax.set_ylim(50, 68)
ax.set_xticks([1950, 1960, 1970, 1980, 1990, 2000, 2010, 2020])
ax.set_ylabel("Percent")
style.end_label(ax, xs[-1], ys[-1], "53.0%", style.BLUE)
print(f"labour share: 1947 {ys[0]:.1f}, 2000Q1 {ys[212]:.1f}, max {max(ys):.1f}, latest {ys[-1]:.1f}")
fig.subplots_adjust(left=0.08, right=0.92, top=0.97, bottom=0.10)
style.save(fig, "labor_share", tight=False)
