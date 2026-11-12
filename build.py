#!/usr/bin/env python3
"""Build the guide: run the models, draw the figures, compile the PDF.

Usage:
    python3 build.py            # figures, then PDF
    python3 build.py pdf        # PDF only, from existing figures
    python3 build.py figures    # figures only

The Typst compiler is installed locally with:
    pip install --target .tools typst pypdf
"""
import pathlib
import subprocess
import sys

ROOT = pathlib.Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / ".tools"))

MAIN = ROOT / "manuscript" / "main.typ"
OUT = ROOT / "dist" / "post-labor-economics.pdf"


def figures() -> None:
    for script in sorted((ROOT / "models").glob("fig_*.py")):
        print(f"figure  {script.name}")
        subprocess.run([sys.executable, str(script)], check=True, cwd=ROOT)


def pdf(main: pathlib.Path = MAIN, out: pathlib.Path = OUT) -> None:
    import typst

    out.parent.mkdir(exist_ok=True)
    typst.compile(str(main), output=str(out), root=str(ROOT))
    from pypdf import PdfReader

    pages = len(PdfReader(str(out)).pages)
    print(f"pdf     {out.relative_to(ROOT)}  ({pages} pages, {out.stat().st_size / 1e6:.1f} MB)")


if __name__ == "__main__":
    what = sys.argv[1] if len(sys.argv) > 1 else "all"
    if what in ("all", "figures"):
        figures()
    if what in ("all", "pdf"):
        pdf()
    if what == "test":
        pdf(ROOT / "manuscript" / "test.typ", ROOT / "build" / "test.pdf")
