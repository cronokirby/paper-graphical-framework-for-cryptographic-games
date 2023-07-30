#let defc = counter("definition")
#let thmc = counter("theorem")

#let template(title: none, abstract: none, author: none, doc) = {
  set document(title: title, author: author.name)
  set page(
    paper: "a4",
    margin: (x: 1.6in, y: 1in),
    numbering: "1"
  )

  set text(
    font: "Stix Two Text",
    size: 12pt
  )

  show heading.where(level: 1): it => {
    defc.step(level: 1) 
    thmc.step(level: 1) 
    it
  }

  show math.equation.where(block: true): it => text(font: "Stix Two Math")[
    #v(-0.25em)
    #it
    #v(-0.5em)
  ]

  show list: it => {
    it
    v(-0.5em)
  }

  show heading: it => {
    v(0.2em)
    it 
    v(0.2em)
  }
  set heading(numbering: "1.1")

  show par: set block(spacing: 1.5em)

  
  set cite(style: "alphanumerical")

  align(center, text(2em, hyphenate: false)[
    #title
  ])

  align(center, text(1.2em)[
    #author.name \
    #author.email \
    #parbreak()
    #datetime.today().display()
  ])

  set par(
    justify: true,
    leading: 0.8em
  )

  align(left, [
    #align(center, [
      #text(1.0em)[*Abstract*]
    ])
    #v(-0.5em)
    #pad(x: 2em, abstract)
  ])

  doc
}


#let definition(break_end: true, title: none, content) = {
  defc.step(level: 2)
  if title != none {
    text(weight: "bold")[Definition #defc.display(): #title]
  } else {
    text(weight: "bold")[Definition #defc.display()]
  }
  linebreak()
  content
  if break_end {
    linebreak()
  }
  [$square.stroked.medium$]
  parbreak()
}

#let theorem(content) = {
  thmc.step(level: 2)
  text(weight: "bold")[Theorem #thmc.display()]
  linebreak()
  content
  linebreak()
}

#let lemma(content) = {
  thmc.step(level: 2)
  text(weight: "bold")[Lemma #thmc.display()]
  linebreak()
  content
  linebreak()
}

#let claim(content) = {
  thmc.step(level: 2)
  text(weight: "bold")[Claim #thmc.display()]
  linebreak()
  content
  linebreak()
}

#let proof(content) = {
  text(weight: "bold")[Proof]
  linebreak()
  content
  linebreak()
  [$square.filled.medium$]
  parbreak()
}
