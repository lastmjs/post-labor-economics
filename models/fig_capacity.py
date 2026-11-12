"""Figure: machine minds are plentiful, machine hands are not (late 2026)."""
import style

# Millions. Sources: Epoch AI (Oct 2026 and Apr 2026), BLS, and trackers cited in research/04 and research/09.
ROWS = [
    ("US workers in screen-based jobs", 60, 60, "human"),
    ("AI agents that chips shipped by end-2026\ncould run (full-time equivalents)", 67, 240, "machine"),
    ("Same, chips shipped by end-2027", 140, 720, "machine"),
    ("US workers in mainly physical jobs", 65, 65, "human"),
    ("Humanoid robots in the world, end-2026", 0.06, 0.10, "machine"),
    ("Humanoid robots that could be built\nper year by 2030", 1.5, 10, "machine"),
]
COLOR = {"human": style.BLUE, "machine": style.ORANGE}

fig, ax = style.figure(height=3.0)
for i, (label, low, high, kind) in enumerate(ROWS):
    y = len(ROWS) - 1 - i + (0.25 if i < 3 else -0.25)
    if low == high:
        ax.plot([low], [y], marker="o", ms=7, color=COLOR[kind], mec=style.SURFACE, mew=1.3, zorder=4)
        text = f"{low:g} million"
    else:
        ax.plot([low, high], [y, y], color=COLOR[kind], lw=5, solid_capstyle="round", zorder=3)
        text = f"{low:g}–{high:g} million"
    ax.annotate(text, (high, y), xytext=(9, 0), textcoords="offset points", va="center", fontsize=7.5, color=style.SOFT)
    ROWS[i] = (label, low, high, kind, y)

ax.set_yticks([r[4] for r in ROWS])
ax.set_yticklabels([r[0] for r in ROWS], fontsize=7.5, color=style.INK)
ax.set_xscale("log")
ax.set_xlim(0.03, 30000)
ax.set_xticks([0.1, 1, 10, 100, 1000])
ax.set_xticklabels(["0.1", "1", "10", "100", "1,000"])
ax.minorticks_off()
ax.grid(axis="x")
ax.grid(axis="y", visible=False)
ax.set_ylim(-0.9, len(ROWS) - 0.1)
ax.set_xlabel("Millions (log scale)")
fig.subplots_adjust(left=0.40, right=0.98, top=0.99, bottom=0.14)
style.save(fig, "capacity", tight=False)
