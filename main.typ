#import "paper.typ"

#let abstract = [
  Ahoy
]

#show: doc => paper.template(
  title: "A Graphical Framework for Cryptographic Games",
  author: (name: "Lúcás Críostóir Meier", email: "lucas@cronokirby.com"),
  abstract: abstract,
  doc,
)

= Introduction
== Outline
= An Informal Framework
= A Formal Framework
= Some Basic Theory
= Examples
== Encryption from Pseudorandom Functions
== The KEM-DEM Paradigm
== IND-CPA Secure KEMs from Group Assumptions
= Further Work
== A Framework for Protocols
== Categorical Structure
== Alternative Interpretations
= Conclusion

#heading(level: 1, numbering: "A.1")[Foo]
