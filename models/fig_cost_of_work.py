"""Figure: what an hour of work costs, people and machines, late 2026."""
import style

# (label, low, high, kind). Sources are given in the caption and in research/00-key-facts.md.
ROWS = [
    ("Average cost to a US employer of an hour of work\n(pay plus benefits, all private industry)", 46.89, 46.89, "human"),
    ("Same, service occupations", 23.73, 23.73, "human"),
    ("Poverty-line living costs, per hour of a full-time year", 7.52, 7.52, "human"),
    ("Humanoid robot today, per robot-hour\n(and it works more slowly than a person)", 13, 55, "machine"),
    ("Humanoid robot at plausible 2030 prices", 5, 19, "machine"),
    ("Frontier AI agent, market price per hour it runs", 16, 50, "machine"),
    ("AI tokens to do an hour of an expert's work,\non tasks agents can complete", 0.2, 5, "machine"),
]
COLOR = {"human": style.BLUE, "machine": style.ORANGE}

fig, ax = style.figure(height=3.5)
for i, (label, low, high, kind) in enumerate(ROWS):
    y = len(ROWS) - 1 - i
    if low == high:
        ax.plot([low], [y], marker="o", ms=7, color=COLOR[kind], mec=style.SURFACE, mew=1.3, zorder=4)
        text = f"${low:,.2f}"
    else:
        ax.plot([low, high], [y, y], color=COLOR[kind], lw=5, solid_capstyle="round", zorder=3)
        text = f"${low:g}–{high:g}"
    ax.annotate(text, (high, y), xytext=(9, 0), textcoords="offset points", va="center", fontsize=7.5, color=style.SOFT)

ax.set_yticks(range(len(ROWS)))
ax.set_yticklabels([r[0] for r in reversed(ROWS)], fontsize=7.5, color=style.INK)
ax.set_xscale("log")
ax.set_xlim(0.1, 200)
ax.set_xticks([0.1, 1, 10, 100])
ax.set_xticklabels(["$0.10", "$1", "$10", "$100"])
ax.minorticks_off()
ax.grid(axis="x")
ax.grid(axis="y", visible=False)
ax.set_ylim(-0.6, len(ROWS) - 0.4)
ax.set_xlabel("Dollars per hour (log scale)")
ax.plot([], [], marker="o", ms=6, lw=0, color=style.BLUE, label="People")
ax.plot([], [], color=style.ORANGE, lw=4, label="Machines (range)")
ax.legend(loc="lower left", bbox_to_anchor=(-0.72, -0.17), ncol=2)
fig.subplots_adjust(left=0.47, right=0.93, top=0.98, bottom=0.14)
style.save(fig, "cost_of_work", tight=False)
