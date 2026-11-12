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
#include "ch01.typ"

#part-page("I", "The machine we live inside", [
  Before asking what breaks, we need to know how the thing works: what an economy is, how people get their share of it, and why two centuries of machines made workers richer and not poorer.
])
#include "ch02.typ"
#include "ch03.typ"

#part-page("II", "The premise and what follows", [
  Suppose machines can do every task that people are paid to do. What happens to wages, to production, and to the distribution of what is produced? These chapters reason from the premise alone.
])
#include "ch04.typ"
#include "ch05.typ"
#include "ch06.typ"
#include "ch07.typ"
#include "ch08.typ"

#part-page("III", "Who decides", [
  The market does not settle who receives the output of a post-labor economy. Power does. These chapters ask where the majority's power has come from, what happens to it, and what could be done with it.
])
#include "ch09.typ"
#include "ch10.typ"

#part-page("IV", "The next ten years", [
  How much of the premise is true in November 2026, how fast the rest is arriving, six scenarios for the decade to 2036, and what I actually expect.
])
#include "ch11.typ"
#include "ch12.typ"
#include "ch13.typ"
#include "ch14.typ"
#include "ch15.typ"

// ----------------------------------------------------------- appendices ----
#counter(heading).update(0)
#set heading(numbering: "A.1")
#include "appendix_a.typ"
#include "appendix_b.typ"

#set heading(numbering: none)
#bibliography("refs.yml", style: "ieee", title: [Sources])
