"""Shared chart styling. Every figure in the guide is drawn through this module.

The palette is a fixed, colour-blind-checked categorical order. Text is always
drawn in ink colours, never in a series colour; a coloured mark next to the
label carries identity.
"""
import pathlib

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib import font_manager

ROOT = pathlib.Path(__file__).resolve().parent.parent
FIGURES = ROOT / "figures"
DATA = ROOT / "data"

# Categorical slots, in fixed order.
BLUE = "#2a78d6"
ORANGE = "#eb6834"
AQUA = "#1baf7a"
YELLOW = "#eda100"
MAGENTA = "#e87ba4"
GREEN = "#008300"
VIOLET = "#6250d6"
RED = "#e34948"
SERIES = [BLUE, ORANGE, AQUA, YELLOW, MAGENTA, GREEN, VIOLET, RED]

# Sequential blue ramp (light to dark) for ordered categories.
BLUES = ["#86b6ef", "#5598e7", "#2a78d6", "#1c5cab", "#104281"]

INK = "#0b0b0b"
SOFT = "#52514e"
MUTED = "#898781"
GRID = "#e1e0d9"
AXIS = "#c3c2b7"
GRAY = "#b4b2a9"  # de-emphasis series
SURFACE = "#ffffff"

WIDTH = 5.86  # inches: the text block of the guide


def _font() -> str:
    names = {f.name for f in font_manager.fontManager.ttflist}
    for candidate in ("Noto Sans", "DejaVu Sans"):
        if candidate in names:
            return candidate
    return "sans-serif"


plt.rcParams.update(
    {
        "font.family": _font(),
        "font.size": 8,
        "axes.titlesize": 8.5,
        "axes.titleweight": "semibold",
        "axes.titlelocation": "left",
        "axes.titlepad": 8,
        "axes.labelsize": 8,
        "axes.labelcolor": SOFT,
        "axes.edgecolor": AXIS,
        "axes.linewidth": 0.6,
        "axes.spines.top": False,
        "axes.spines.right": False,
        "axes.spines.left": False,
        "axes.grid": True,
        "axes.grid.axis": "y",
        "axes.axisbelow": True,
        "grid.color": GRID,
        "grid.linewidth": 0.6,
        "grid.linestyle": "-",
        "xtick.color": MUTED,
        "ytick.color": MUTED,
        "xtick.labelcolor": SOFT,
        "ytick.labelcolor": SOFT,
        "xtick.labelsize": 7.5,
        "ytick.labelsize": 7.5,
        "xtick.major.size": 3,
        "ytick.major.size": 0,
        "xtick.major.width": 0.6,
        "lines.linewidth": 1.8,
        "lines.solid_capstyle": "round",
        "lines.solid_joinstyle": "round",
        "legend.frameon": False,
        "legend.fontsize": 7.5,
        "legend.handlelength": 1.4,
        "legend.labelcolor": SOFT,
        "figure.facecolor": SURFACE,
        "axes.facecolor": SURFACE,
        "savefig.facecolor": SURFACE,
        "svg.fonttype": "path",
        "text.color": INK,
    }
)


def figure(height: float = 3.2, ncols: int = 1, nrows: int = 1, width: float = WIDTH, **kwargs):
    fig, axes = plt.subplots(nrows, ncols, figsize=(width, height), **kwargs)
    return fig, axes


def end_label(ax, x, y, text, color, dx=4, dy=0, **kwargs):
    """Label a line at its end: a small dot in the series colour, text in ink."""
    ax.plot([x], [y], marker="o", ms=4.5, color=color, mec=SURFACE, mew=1.2, zorder=5, clip_on=False)
    ax.annotate(
        text,
        (x, y),
        xytext=(dx + 3, dy),
        textcoords="offset points",
        va="center",
        ha="left",
        fontsize=kwargs.pop("fontsize", 7.5),
        color=kwargs.pop("textcolor", SOFT),
        annotation_clip=False,
        **kwargs,
    )


def note(ax, x, y, text, **kwargs):
    ax.annotate(
        text,
        (x, y),
        fontsize=kwargs.pop("fontsize", 7.5),
        color=kwargs.pop("color", SOFT),
        annotation_clip=False,
        **kwargs,
    )


def save(fig, name: str, tight: bool = True) -> None:
    FIGURES.mkdir(exist_ok=True)
    if tight:
        fig.tight_layout()
    fig.savefig(FIGURES / f"{name}.svg")
    plt.close(fig)
