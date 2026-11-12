"""Figure: capability is racing, the economy-wide numbers are not (late 2026)."""
import csv

import style

# METR 50% time horizon, hours, by model release date (METR Time Horizon 1.1 results file).
METR = [
    (2024.37, 7 / 60), (2025.13, 1.0), (2025.29, 2.0), (2025.60, 3.4), (2025.90, 4.9), (2025.95, 5.9),
    (2026.10, 12.0), (2026.27, 17.4),
]
# Remote Labor Index, percent of freelance projects completed to a professional standard, best agent.
RLI = [(2025.80, 2.5), (2026.50, 15.8), (2026.67, 17.9), (2026.73, 21.3), (2026.86, 41.3)]
# US firms using AI in any business function, percent (Census Business Trends and Outlook Survey).
FIRMS = [(2025.86, 17.3), (2026.05, 18.9), (2026.25, 19.8), (2026.47, 21.7), (2026.62, 23.2), (2026.74, 24.6)]

unemployment = []
with open(style.DATA / "fred" / "UNRATE.csv") as f:
    for row in csv.DictReader(f):
        year, month = int(row["observation_date"][:4]), int(row["observation_date"][5:7])
        if year >= 2024 and row["UNRATE"] not in ("", "."):
            unemployment.append((year + (month - 0.5) / 12, float(row["UNRATE"])))

fig, axes = style.figure(height=4.6, ncols=2, nrows=2, gridspec_kw={"hspace": 0.5, "wspace": 0.28})
panels = [
    (axes[0, 0], METR, style.BLUE, "Task length AI finishes half the time, hours", (0, 20), "17 hours"),
    (axes[0, 1], RLI, style.BLUE, "Freelance projects AI completes, %", (0, 50), "41%"),
    (axes[1, 0], FIRMS, style.ORANGE, "US firms that use AI, %", (0, 50), "25%"),
    (axes[1, 1], unemployment, style.ORANGE, "US unemployment rate, %", (0, 10), "4.1%"),
]
for ax, data, color, title, ylim, label in panels:
    xs, ys = zip(*data)
    ax.plot(xs, ys, color=color, marker="o" if len(xs) < 12 else None, ms=3.5, mec=style.SURFACE, mew=0.8)
    ax.set_title(title, fontsize=8)
    ax.set_xlim(2024, 2027)
    ax.set_xticks([2024, 2025, 2026, 2027])
    ax.set_ylim(*ylim)
    style.end_label(ax, xs[-1], ys[-1], label, color, dx=-2, dy=9 if ys[-1] < ylim[1] * 0.8 else -10)
fig.subplots_adjust(left=0.06, right=0.97, top=0.93, bottom=0.06)
style.save(fig, "capability_gap", tight=False)
