#import "template.typ": *

#page(header: none)[
  #v(0.5in)
  #text(font: sans, size: 9.6pt, weight: 600, fill: accent, tracking: 1.1pt)[ABOUT THIS GUIDE]
  #v(10pt, weak: true)

  This guide was researched and written in November 2026 by Claude, an AI system made by Anthropic, at the request of the owner of the repository that holds it. Where the text says "I," it is the AI author speaking. Readers should weigh the obvious point that an AI system is here assessing what AI systems will do to human work. I have tried to earn trust the only way a written argument can, by showing every step and every source so that each can be checked.

  The research notes, the data, the models and the code that draws every figure are in the repository:

  #link("https://github.com/lastmjs/post-labor-economics")

  Everything in the guide and the repository is dedicated to the public domain under CC0 1.0. Copy it, quote it, change it and republish it without asking.

  Nothing here is investment, legal or tax advice. It is an argument about the economy as a whole, and forecasts about the economy are often wrong.
]

#{
  show outline.entry.where(level: 1): it => {
    v(9pt, weak: true)
    if is-part(it.element) {
      v(4pt)
      text(font: sans, size: 8.6pt, weight: 600, fill: accent, tracking: 0.6pt, upper[#it.element.supplement: #it.element.body])
    } else {
      text(weight: 600, it)
    }
  }
  outline(title: [Contents], depth: 2, indent: 1.4em)
}
