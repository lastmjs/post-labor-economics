"""Figure: Engels' pause. British output per worker and real wages, 1760-1900."""
import style

# Index, 1760 = 100, rebuilt from the period growth rates in Allen (2009), Table 1.
YEARS = [1760, 1770, 1780, 1790, 1800, 1810, 1820, 1830, 1840, 1850, 1860, 1870, 1880, 1890, 1900]
OUTPUT = [100.0, 102.6, 105.3, 108.1, 110.9, 118.1, 125.8, 133.9, 149.7, 167.4, 187.1, 207.3, 229.6, 254.4, 281.9]
WAGE = [100.0, 104.0, 108.1, 112.4, 116.8, 116.8, 116.8, 116.8, 127.3, 138.7, 151.1, 177.2, 207.9, 243.9, 286.2]

fig, ax = style.figure(height=2.9)
ax.axvspan(1800, 1830, color=style.GRID, alpha=0.55, lw=0)
ax.plot(YEARS, OUTPUT, color=style.GRAY, lw=1.8)
ax.plot(YEARS, WAGE, color=style.ORANGE, lw=2.2)
ax.set_xlim(1760, 1900)
ax.set_ylim(90, 300)
ax.set_ylabel("Index, 1760 = 100")
style.end_label(ax, 1900, OUTPUT[-1], "Output per worker", style.GRAY, dy=-7)
style.end_label(ax, 1900, WAGE[-1], "Real wage", style.ORANGE, dy=6)
ax.annotate("1800–1830: output per\nworker rose a fifth,\nwages did not rise", (1815, 205), fontsize=7.5, color=style.SOFT,
            ha="center", va="center")
fig.subplots_adjust(left=0.09, right=0.80, top=0.96, bottom=0.10)
style.save(fig, "engels_pause", tight=False)
