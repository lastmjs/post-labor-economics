#import "template.typ": *

#show: guide.with(
  title: "Post-Labor Economics",
  subtitle: "What happens to the economy when machines can do all the work",
  date: "November 2026",
)

// ---------------------------------------------------------------- cover ----
#page(margin: (x: 1.32in, top: 1.6in, bottom: 1.2in), header: none, footer: none)[
  #set par(justify: false)
  #text(font: sans, size: 9.6pt, weight: 600, fill: accent, tracking: 1.4pt)[A FIRST-PRINCIPLES GUIDE]
  #v(18pt, weak: true)
  #text(size: 44pt, weight: 600, fill: ink)[Post-Labor\ Economics]
  #v(22pt, weak: true)
  #block(width: 82%, text(size: 16pt, fill: soft, style: "italic")[
    What happens to the economy when machines can do all the mental and physical work
  ])
  #v(1fr)
  #line(length: 100%, stroke: 0.5pt + hair)
  #v(10pt, weak: true)
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    text(font: sans, size: 9pt, fill: soft)[
      An argument built step by step from axioms,\ six scenarios for 2026–2036, and a best guess
    ],
    text(font: sans, size: 9pt, fill: soft)[
      November 2026\ Public domain (CC0 1.0)
    ],
  )
]

#include "front.typ"

#part-page("I", "The machine we live inside", [
  Before asking what breaks, we need to know how the thing works: what an economy is, how people get their share of it, and why two centuries of machines made workers richer and not poorer.
])
#include "ch02.typ"
#include "ch03.typ"

// Stubs for chapters not yet written, so that forward references resolve.
= The premise <ch-premise>
= Wages <ch-wages>
= Growth <ch-growth>
= Distribution <ch-distribution>
= Residual <ch-residual>
= Power <ch-power>
= Policy <ch-policy>
= Now <ch-now>
= Two transitions <ch-two-transitions>
= Speed <ch-speed>
= Scenarios <ch-scenarios>
= Belief <ch-belief>
