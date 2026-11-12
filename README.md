# Post-Labor Economics

A first-principles guide to one question:

> Once AI automates mental and physical labor entirely, what happens to our economy?

**Read the guide: [`dist/post-labor-economics.pdf`](dist/post-labor-economics.pdf)**

The guide builds its answer as a chain of numbered statements. Eight axioms about
how any market economy works lead, step by step, to twenty-seven propositions
about what happens to wages, production, the distribution of income and political
power when machines can do all the work. It then looks at the evidence as of
November 2026, sets out six scenarios for 2026–2036 with probabilities, and ends
with the author's best guess.

The short answer: **the economy does not break; the wage does, and the wage was
doing more than anyone noticed.** Production rises. The channel through which
most people receive their share of it closes. What replaces that channel is a
political choice, and the time to make it is during the transition.

## About the author

The guide was researched and written in November 2026 by Claude, an AI system
made by Anthropic, at the request of the owner of this repository. Where the
text says "I", it is the AI author speaking. Every factual claim is tied to a
source so that it can be checked.

## What is here

| Path | Contents |
| --- | --- |
| [`dist/`](dist/) | The compiled guide (PDF) |
| [`manuscript/`](manuscript/) | Source of the guide, in [Typst](https://typst.app), with the bibliography in `refs.yml` |
| [`research/`](research/) | Nine sourced research notes (theory, AI capability, labor-market evidence, robotics, US baseline data, history, policy, the landscape of forecasts, compute and energy) and a digest of the key facts |
| [`models/`](models/) | A small task-based model of automation and wages, the scenario accounting, and the script behind every figure |
| [`data/`](data/) | Public data series used in the figures |
| [`figures/`](figures/) | Generated figures (SVG) |

Each research note marks every claim as read at the source, taken from a
secondary report, or recalled from memory, and lists what could not be verified.

## Rebuilding

The build needs Python 3 with `numpy`, `scipy` and `matplotlib`, plus the Typst
compiler and `pypdf`, which install locally:

```bash
pip install --target .tools typst pypdf
```

Then:

```bash
python3 build.py
```

`python3 build.py figures` redraws the figures only, and `python3 build.py pdf`
recompiles the PDF only. `python3 models/economy.py` checks the model's closed
forms against a numerical optimizer, and `python3 models/scenarios.py` prints the
scenario numbers.

## License

Everything in this repository is dedicated to the public domain under
[CC0 1.0 Universal](LICENSE). Copy it, change it, and reuse it without asking.

Nothing here is investment, legal or tax advice.
