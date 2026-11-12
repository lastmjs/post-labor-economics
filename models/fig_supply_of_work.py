"""Figure: what a machine substitute does to the supply of work (conceptual)."""
import numpy as np

import style

fig, ax = style.figure(height=3.4)


def demand(q):
    """The value of one more hour of work falls as more work is supplied."""
    return 9.0 / q**0.75


def quantity(price):
    return (9.0 / price) ** (1 / 0.75)


L = 1.6  # the human workforce
w0 = demand(L)
q = np.linspace(0.25, 10, 400)

ax.plot(q, demand(q), color=style.INK, lw=1.8)
ax.plot([L, L], [0, 10.5], color=style.BLUE, lw=2.2)

upkeep = 3.5
ax.plot([0, 10], [upkeep, upkeep], color=style.MUTED, lw=1.0)
ax.annotate("Cost of keeping\na person", (10, upkeep), xytext=(8, 0), textcoords="offset points", fontsize=7.5,
            color=style.SOFT, va="center", annotation_clip=False)

levels = [(4.9, "Machine cost,\nearly"), (2.5, "Machine cost,\nlater"), (1.65, "Later still")]
for cost, label in levels:
    ax.plot([0, 10], [cost, cost], color=style.ORANGE, lw=1.6)
    ax.plot([quantity(cost)], [cost], marker="o", ms=5.5, color=style.ORANGE, mec=style.SURFACE, mew=1.3, zorder=5)
    ax.annotate(label, (10, cost), xytext=(8, 0), textcoords="offset points", va="center", fontsize=7.5,
                color=style.SOFT, annotation_clip=False)

ax.plot([L], [w0], marker="o", ms=6.5, color=style.BLUE, mec=style.SURFACE, mew=1.3, zorder=6)
ax.annotate("Wage before machines: set where demand\nmeets the fixed number of people", (L, w0), xytext=(12, 8),
            textcoords="offset points", fontsize=7.5, color=style.SOFT, va="center")
ax.annotate("Supply of human work\n(fixed by population)", (L, 10.3), xytext=(7, 0), textcoords="offset points",
            fontsize=7.5, color=style.SOFT, ha="left", va="top")
ax.annotate("Demand: the value of\none more hour of work", (2.75, demand(2.75)), xytext=(46, 30),
            textcoords="offset points", fontsize=7.5, color=style.SOFT, ha="left", va="center",
            arrowprops={"arrowstyle": "-", "color": style.AXIS, "lw": 0.7, "shrinkA": 2, "shrinkB": 3})
ax.annotate("Wage with machines:\nwherever machine cost is", (quantity(1.65), 1.65), xytext=(0, -9),
            textcoords="offset points", fontsize=7.5, color=style.SOFT, ha="center", va="top")

ax.set_xlim(0, 10)
ax.set_ylim(0, 10.5)
ax.set_xticks([])
ax.set_yticks([])
ax.grid(False)
ax.spines["left"].set_visible(True)
ax.set_xlabel("Quantity of work done (by people and machines together)")
ax.set_ylabel("Price of an hour of work")
fig.subplots_adjust(left=0.06, right=0.84, top=0.98, bottom=0.10)
style.save(fig, "supply_of_work", tight=False)
