#import "paper.typ"

#import paper: definition

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
== Stacks

#definition(break_end: false, title: [Stacks])[
A _stack_ $S$ consists of:
- a set $O subset.eq [n]$,
- types $T_1, ..., T_n$,
- types $bullet = sigma_1, sigma_2, ..., sigma_(n + 1) = nothing$,
- functions $f_1, ..., f_n$, each of which is:
  - of type $f_i : sigma_i arrow.r sigma_(i + 1) times T_i$ when $i in O$,
  - of type $f_i : sigma_i times T_i arrow.r sigma_(i + 1)$, when $i in.not O$.
]

#definition(break_end: false, title: [Games])[
A _game_ $G$ consists of:
- a list of stacks $S_1, ..., S_m$,
- a set $W$,
- a function $phi : union.sq.big_(i in [m])[n_i]#footnote[By this, we mean that the domain of $phi$ is the _disjoint_ union of the individual index sets.] arrow.r W^quest$ whose restriction to $union.sq.big_(i in [m]) O_i arrow.r W$ is injective.
]

#definition(title: [Literal Game Equality])[
Two games $A, B$ are said to be _literally equal_, written $A ident B$,
when $m_A = m_B$, and there exist bijections $pi : [m] arrow.l.r [m]$
and $psi : W_A arrow.l.r W_B$ such that $phi_(A)(i, x) = psi(phi_(B)(pi(i), x))$#footnote[Implicitly, $psi(bot) := bot$ here.].
]

== Diagrams
== Efficient Diagrams
== Randomized Diagrams
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
