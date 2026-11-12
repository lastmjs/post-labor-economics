"""Figure: the author's probabilities for where the United States is by 2036."""
import style

ROWS = [
    ("The squeeze", 40, "Mental work automated at the pace of diffusion; patchwork policy"),
    ("Slow diffusion", 15, "AI behaves like earlier technologies; decades, not years"),
    ("Rentier drift", 13, "Fast automation, concentrated gains, thin public support"),
    ("Shared dividend", 12, "The squeeze, met by a durable public claim on machine income"),
    ("Takeoff", 12, "AI improves itself; growth explodes; control is the issue"),
    ("The brake", 8, "Politics, an accident or a war stops the build-out"),
]

fig, ax = style.figure(height=2.5)
for i, (name, p, note) in enumerate(ROWS):
    y = len(ROWS) - 1 - i
    ax.barh(y, p, height=0.5, color=style.BLUE)
    ax.annotate(f"{p}%", (p, y), xytext=(6, 0), textcoords="offset points", va="center", fontsize=8, color=style.INK)
    ax.annotate(note, (p, y), xytext=(34, 0), textcoords="offset points", va="center", fontsize=7.2, color=style.SOFT)
ax.set_yticks(range(len(ROWS)))
ax.set_yticklabels([r[0] for r in reversed(ROWS)], fontsize=8, color=style.INK)
ax.set_xlim(0, 150)
ax.set_xticks([])
ax.grid(False)
ax.set_ylim(-0.6, len(ROWS) - 0.4)
fig.subplots_adjust(left=0.17, right=0.99, top=0.99, bottom=0.03)
style.save(fig, "probabilities", tight=False)
