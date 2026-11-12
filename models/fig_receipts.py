"""Figure: where the US federal government's money comes from, fiscal 2026."""
import style

# Billions of dollars. US Treasury, Monthly Treasury Statement, September 2026.
ROWS = [
    ("Individual income tax", 2850),
    ("Payroll taxes (Social Security, Medicare)", 1810),
    ("Corporate income tax", 381),
    ("Customs duties", 173),
    ("Excise taxes", 106),
    ("Estate, gift and other", 80),
]
total = 5400

fig, ax = style.figure(height=2.3)
for i, (label, value) in enumerate(ROWS):
    y = len(ROWS) - 1 - i
    ax.barh(y, value, height=0.5, color=style.BLUE)
    ax.annotate(f"${value / 1000:.2f} trillion · {value / total:.0%}" if value >= 1000 else f"${value} billion · {value / total:.0%}",
                (value, y), xytext=(6, 0), textcoords="offset points", va="center", fontsize=7.5, color=style.SOFT)
ax.set_yticks(range(len(ROWS)))
ax.set_yticklabels([r[0] for r in reversed(ROWS)], fontsize=7.5, color=style.INK)
ax.set_xlim(0, 3900)
ax.set_xticks([])
ax.grid(False)
ax.set_ylim(-0.6, len(ROWS) - 0.4)
fig.subplots_adjust(left=0.36, right=0.99, top=0.99, bottom=0.03)
style.save(fig, "federal_receipts", tight=False)
