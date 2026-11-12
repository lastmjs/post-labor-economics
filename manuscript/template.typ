// Shared layout and building blocks for the guide.

#let ink = rgb("#17171a")
#let soft = rgb("#52514e")
#let muted = rgb("#898781")
#let hair = rgb("#d6d5cd")
#let accent = rgb("#1c5cab")
#let warm = rgb("#b5451b")
#let paper-wash = rgb("#f5f6f8")

#let sans = ("Noto Sans", "DejaVu Sans", "Liberation Sans")
#let serif = ("Libertinus Serif",)

// ---------------------------------------------------------------------------
// Numbered statements: the links of the chain.
// ---------------------------------------------------------------------------

#let kinds = (
  axiom: (prefix: "A", name: "Axiom", color: rgb("#1c5cab")),
  definition: (prefix: "D", name: "Definition", color: rgb("#52514e")),
  hypothesis: (prefix: "H", name: "Hypothesis", color: rgb("#5a3fb5")),
  proposition: (prefix: "P", name: "Proposition", color: rgb("#0d6b4c")),
  forecast: (prefix: "F", name: "Forecast", color: rgb("#b5451b")),
)

#let chain = state("chain", ())

#let statement(kind, title, body, from: none, breakable: false) = figure(
  kind: kind,
  supplement: kinds.at(kind).prefix,
  numbering: "1",
  outlined: false,
  {
    let k = kinds.at(kind)
    block(
      width: 100%,
      breakable: breakable,
      inset: (left: 12pt, right: 10pt, top: 9pt, bottom: 10pt),
      stroke: (left: 2.5pt + k.color),
      fill: paper-wash,
      radius: (right: 3pt),
      {
        chain.update(c => c + ((kind: kind, title: title, from: from),))
        set align(left)
        set par(justify: false)
        text(font: sans, size: 8.2pt, weight: 600, fill: k.color, tracking: 0.4pt)[
          #upper(k.name) #context counter(figure.where(kind: kind)).display("1")
        ]
        h(6pt)
        text(font: sans, size: 9.6pt, weight: 600, fill: ink, title)
        v(7pt, weak: true)
        set par(justify: true, leading: 0.62em)
        text(size: 10.4pt, body)
        if from != none {
          v(8pt, weak: true)
          text(font: sans, size: 7.8pt, fill: soft)[Rests on: #from]
        }
      },
    )
  },
)

#let axiom(title, body) = statement("axiom", title, body)
#let definition(title, body) = statement("definition", title, body)
#let hypothesis(title, body, breakable: false) = statement("hypothesis", title, body, breakable: breakable)
#let proposition(title, body, from: none, breakable: false) = statement("proposition", title, body, from: from, breakable: breakable)
#let forecast(title, body, from: none, breakable: false) = statement("forecast", title, body, from: from, breakable: breakable)

// An objection and the reply to it.
#let objection(title, body) = block(
  width: 100%,
  breakable: false,
  inset: (left: 12pt, right: 10pt, top: 8pt, bottom: 9pt),
  stroke: (left: 2.5pt + rgb("#898781")),
  {
    set par(justify: false)
    text(font: sans, size: 8.2pt, weight: 600, fill: soft, tracking: 0.4pt)[OBJECTION]
    h(6pt)
    text(font: sans, size: 9.6pt, weight: 600, fill: ink, title)
    v(7pt, weak: true)
    set par(justify: true, leading: 0.62em)
    text(size: 10.4pt, body)
  },
)

// A recap of what the chapter has established.
#let checkpoint(body) = block(
  width: 100%,
  breakable: false,
  inset: (x: 14pt, top: 11pt, bottom: 12pt),
  stroke: 0.6pt + hair,
  radius: 3pt,
  {
    set par(justify: false)
    text(font: sans, size: 8.2pt, weight: 600, fill: accent, tracking: 0.4pt)[WHERE THE CHAIN STANDS]
    v(8pt, weak: true)
    set text(size: 10.2pt)
    set par(leading: 0.6em)
    body
  },
)

// A boxed aside: a worked example or a piece of evidence.
#let aside(title, body) = block(
  width: 100%,
  breakable: true,
  inset: (x: 14pt, top: 11pt, bottom: 12pt),
  fill: rgb("#faf7f2"),
  radius: 3pt,
  {
    set par(justify: false)
    text(font: sans, size: 8.2pt, weight: 600, fill: warm, tracking: 0.4pt, upper(title))
    v(8pt, weak: true)
    set text(size: 10.2pt)
    set par(justify: true, leading: 0.6em)
    body
  },
)

// A figure produced by the models, with a caption and a source line.
#let plot(path, caption, source: none, width: 100%, placement: auto) = figure(
  kind: image,
  supplement: [Figure],
  placement: placement,
  {
    image(path, width: width)
  },
  caption: {
    caption
    if source != none {
      linebreak()
      text(size: 7.6pt, fill: muted)[Source: #source]
    }
  },
)

#let part-page(number, title, blurb) = {
  [#heading(level: 1, numbering: none, supplement: [Part #number])[#title] <part>]
  block(width: 78%, text(size: 12pt, fill: soft, style: "italic", blurb))
  v(2fr)
  pagebreak()
}

#let is-part(it) = it.has("label") and it.label == <part>

// ---------------------------------------------------------------------------
// Document setup.
// ---------------------------------------------------------------------------

#let guide(title: "", subtitle: "", date: "", body) = {
  set document(title: title, author: "post-labor-economics contributors")
  set text(font: serif, size: 11pt, fill: ink, lang: "en", hyphenate: true)
  set par(justify: true, leading: 0.66em, spacing: 0.95em, first-line-indent: 0pt)
  set page(
    paper: "us-letter",
    margin: (x: 1.32in, top: 1.12in, bottom: 1.18in),
    header: context {
      let p = counter(page).get().first()
      if p > 1 {
        let chapters = query(heading.where(level: 1).before(here()))
        let here-chapters = query(heading.where(level: 1)).filter(h => h.location().page() == here().page())
        if here-chapters.len() == 0 and chapters.len() > 0 {
          set text(font: sans, size: 7.8pt, fill: muted, tracking: 0.3pt)
          grid(
            columns: (1fr, auto),
            upper(title), upper(chapters.last().body),
          )
          v(-5pt)
          line(length: 100%, stroke: 0.4pt + hair)
        }
      }
    },
    footer: context {
      let p = counter(page).get().first()
      if p > 1 {
        set align(center)
        text(font: sans, size: 8.4pt, fill: muted, str(p))
      }
    },
  )

  set heading(numbering: "1.1")
  show heading: set text(hyphenate: false)
  show heading: set par(justify: false)
  show heading.where(level: 1): set heading(supplement: [Chapter])
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    if is-part(it) {
      v(1fr)
      text(font: sans, size: 10pt, weight: 600, fill: accent, tracking: 1.2pt, upper(it.supplement))
      v(10pt, weak: true)
      block(text(font: serif, size: 30pt, weight: 600, fill: ink, it.body))
      v(14pt, weak: true)
    } else {
      v(0.55in)
      if it.numbering == "A.1" {
        text(font: sans, size: 9.6pt, weight: 600, fill: accent, tracking: 1.1pt)[
          APPENDIX #counter(heading).display("A")
        ]
        v(9pt, weak: true)
      } else if it.numbering != none {
        text(font: sans, size: 9.6pt, weight: 600, fill: accent, tracking: 1.1pt)[
          CHAPTER #counter(heading).display("1")
        ]
        v(9pt, weak: true)
      }
      block(text(font: serif, size: 23pt, weight: 600, fill: ink, it.body))
      v(18pt, weak: true)
    }
  }
  show heading.where(level: 2): it => {
    v(15pt, weak: true)
    block(text(font: sans, size: 12.2pt, weight: 600, fill: ink, it.body))
    v(8pt, weak: true)
  }
  show heading.where(level: 3): it => {
    v(11pt, weak: true)
    block(text(font: sans, size: 10.2pt, weight: 600, fill: soft, it.body))
    v(6pt, weak: true)
  }

  // Statements are full-width, left-aligned and may break across pages.
  show figure.where(kind: "axiom"): set block(breakable: true)
  show figure.where(kind: "definition"): set block(breakable: true)
  show figure.where(kind: "proposition"): set block(breakable: true)
  show figure.where(kind: "hypothesis"): set block(breakable: true)
  show figure.where(kind: "forecast"): set block(breakable: true)

  show figure.caption: it => {
    set align(left)
    set par(justify: false, leading: 0.55em)
    text(font: sans, size: 8.6pt, fill: soft)[
      #text(weight: 600, fill: ink)[#it.supplement #context it.counter.display(it.numbering).]
      #it.body
    ]
  }
  set figure(gap: 9pt)
  show figure.where(kind: image): set block(above: 16pt, below: 16pt)
  set place(clearance: 18pt)
  show figure.where(kind: table): set block(above: 16pt, below: 16pt)
  show figure.where(kind: table): set figure.caption(position: top)

  // References to statements print as "A1", "P7" and link to the statement.
  show ref: it => {
    let el = it.element
    if el != none and el.func() == figure and el.kind in ("axiom", "definition", "hypothesis", "proposition", "forecast") {
      let n = counter(figure.where(kind: el.kind)).at(el.location()).first()
      link(el.location(), text(font: sans, size: 0.86em, weight: 600, fill: kinds.at(el.kind).color)[#kinds.at(el.kind).prefix#n])
    } else {
      it
    }
  }

  show link: it => if type(it.dest) == str { text(fill: accent, it) } else { it }
  set table(stroke: none, inset: (x: 7pt, y: 5pt))
  show table: set text(font: sans, size: 8.6pt)
  show table: set par(justify: false, leading: 0.5em)
  set list(indent: 6pt, body-indent: 7pt, spacing: 0.7em)
  set enum(indent: 6pt, body-indent: 7pt, spacing: 0.7em)
  set footnote.entry(separator: line(length: 22%, stroke: 0.4pt + hair), gap: 0.55em)
  show footnote.entry: set text(size: 8.4pt)
  show math.equation.where(block: true): set block(above: 12pt, below: 12pt)

  body
}

// A plain three-rule table.
#let datatable(columns: (), align: auto, header: (), ..rows) = table(
  columns: columns,
  align: align,
  table.hline(stroke: 0.7pt + ink),
  table.header(..header.map(h => text(weight: 600, h))),
  table.hline(stroke: 0.4pt + ink),
  ..rows,
  table.hline(stroke: 0.7pt + ink),
)

// The whole chain, in order, for the appendix.
#let chain-listing() = context {
  let counts = (axiom: 0, definition: 0, hypothesis: 0, proposition: 0, forecast: 0)
  let rows = ()
  for item in chain.final() {
    counts.insert(item.kind, counts.at(item.kind) + 1)
    let k = kinds.at(item.kind)
    rows.push(text(font: sans, size: 8.4pt, weight: 600, fill: k.color)[#k.prefix#counts.at(item.kind)])
    rows.push({
      text(size: 9.6pt, item.title)
      if item.from != none {
        text(font: sans, size: 7.6pt, fill: soft)[#h(6pt)← #item.from]
      }
    })
  }
  set par(justify: false, leading: 0.5em)
  grid(columns: (30pt, 1fr), row-gutter: 6.5pt, ..rows)
}
