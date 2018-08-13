# Models of Computation: Semantics

We need to know domains of quantifiers.


$$
\forall x,z: (x < z \implies \exists y: (x < y \wedge y < z))
$$

This formula is **false** for $x,y,z \in \mathbb{Z}$ but **true** for $\mathbb{Z} \in \mathbb{R}$

## Interpretation

An interpretation $\mathcal{I}$ consists of:

- Non-empty set $\mathbb{D}$, or the **domain**.
- An $n$-ary predicate function $P: \mathbb{D}^n \mapsto \{\mathbf{t,f}\}$.
- An $n$-ary function symbol $g: \mathbb{D}^n \mapsto \mathbb{D}$
- An assignment for all constants $a_i$ from an element in $\mathbb{D}$

Formulas with free variables needs:

- A valuation $\sigma: v \mapsto \mathbb{D}$, that maps the free variables to a value in our domain.
- An interpretation just as discussed (i.e. how do we interpret the $<$ symbol).
- Connectives are always given their standard meaning.

Definition of $\exists$ can now be given as:

$$ \exists x : F \equiv \neg \forall x: \neg F $$

A **model for** formula $F$ is an interpretation $\mathcal I$ such that $F$ is true in $\mathcal I$, i.e. $\mathcal I \models F$.

**Logical equivalence**:

$$F_1 \equiv F_2 \iff F_1 \models F_2 \wedge F_2 \models F_1$$

### Validity

We say that a well-formed formula $F$ is:

- Satisfiable iff $\exists \mathcal{I}: \mathcal{I} \cancel \models F$
- Valid iff $\forall \mathcal{I} : \mathcal{I} \cancel \models F$
- Unsatisfiable iff $\forall \mathcal{I}: \mathcal{I} \cancel \models F$

**Non-validity** for a well-formed formula: A formula can be **non-valid**, but **satisfiable** if there exists an interpretation $\mathcal I$ that makes it true, but also there exists an interpretation $\mathcal I$ that makes it false.

Example:

$$
(\forall y \ \exists x: P(x,y)) \implies (\exists x \ \forall y: P(x,y))
$$

**Validity proof**:

$$
\neg F \text{ unsatisfiable} \iff F \text{ is valid}
$$

Example of valid formula:

$$
F = (\forall x : P(x)) \implies P(t)
$$
By intuition: if $P$ is true for all $x$ in the element of some domain $\mathbb{D}$, then $P$ must be true for **any single arbitrary element** $t$ in $\mathbb{D}$