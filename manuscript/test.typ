#import "template.typ": *
#show: guide.with(title: "After Labor", subtitle: "Test", date: "November 2026")

#align(center)[Cover page]
#pagebreak()

#outline(depth: 2)

#part-page("I", "What an economy is", [Before asking what breaks, we need to know what the thing is.])

= The question

#lorem(60)

== A section

#lorem(40) See @a-wants and @p-ceiling. Inline math: $w <= c / gamma$.

#axiom([People want things])[
  #lorem(30)
] <a-wants>

#definition([Wage])[The price of an hour of human work.] <d-wage>

#proposition([The wage ceiling], from: [@a-wants, @d-wage])[
  A human hour of work cannot be paid more than the cost of the machine that does the same work:
  $ w <= (r + delta) p_K / gamma $
] <p-ceiling>

#objection([But comparative advantage])[#lorem(30)]

#forecast([Cognitive labor first])[#lorem(20)] <f-cog>

#checkpoint[
  - One. #lorem(10)
  - Two. #lorem(10)
]

#aside([Worked example])[#lorem(40)]

#figure(
  datatable(
    columns: (auto, auto, auto),
    align: (left, right, right),
    header: ([Item], [2025], [2036]),
    [Labor share], [56%], [44%],
    [Unemployment], [4.3%], [9%],
  ),
  caption: [A test table.],
)

=== A subsection

#lorem(200)

= Second chapter

#lorem(500) #footnote[A footnote with a #link("https://example.com")[link].]
