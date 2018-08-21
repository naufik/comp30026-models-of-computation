# Models of Computation

## Susbtitution

**Finite set** of replacements of variables (not constants) by term, a set $\theta$ of the form:

$$
\theta = \{x_1 \mapsto t_1, x_2 \mapsto t_2, \cdots, x_n \mapsto t_n\}
$$

Naturally, $\theta$ is a function from the formula space to a formula space.

The finiteness of a unifier is not only in terms of length of the set $|\theta|$, but also depth. The **following substitution is not allowed**:

$$
\theta = \{x\mapsto f(f(f(\cdots)))\}
$$

### Unifiers

A special kind of a substitution set for two formulas $s,t$ such that:

$$
\theta(s) = \theta(t)
$$

The terms $s,t$ are unifiable if such unifier exists.

A **most general unifier** $\phi$ for $s,t$ is a substitution such that:

- $\phi$ is a unifier for $s,t$.
- Any other unifier for $s,t$ can be written as $\tau \circ \phi$ (a composition of $\tau$ and $\phi$).

Examples:

- $P(x, a)$ and $P(b, c)$ are not unifiable. $\theta = \{x \mapsto b, a \mapsto c\}$ is **invalid** since the constant $a$ cannot be substituted.
- $P(f(x), y)$ and $P(a,w)$ are also not unifiable.
- $P(x,c)$ and $P(a,w)$ are unifiable using $\theta = \{x \mapsto a, w \mapsto c\}$.

Unifiers are not unique, therefore for a pair of formulas we might find multiple substitutions $\theta_1, \theta_2, \cdots, \theta_m$. In this case, the **best** solution is to choose an *mgu*.

**Unification Algorithm**: *See Lecture 9, Slide 7*.

A unifier is in **normal form** if and only if:

- All the left-hand side terms are variables.
- None of the variables on the left-hand side appear on the right hand side.

### Resolvents for Predicate Logic

- Two literals $L_1$ and $\neg L_2$ are complementary if $L_1, L_2$ are unifiable.
- For two clauses $C_1,C_2$. Let $\theta$ be an *mgu* for complementary literals $L_1\in C_1, \neg L_2 \in C_2$. Then, their resolvent will be $\theta(C_1\setminus\{L_1\})\cup\theta(C_2\setminus\{\neg L_2\})$.

Therefore if we build a resolution tree for a predicate logic, we apply unifiers as we take two clauses and resolve them.

### Factoring

Let $C$ be a clause and $A_1,A_2 \in C$ where $A_1, A_2$ are unifiable with mgu $\theta$ then we can add the clause $\theta(C)$ (note that $\theta$ is applied to **every** literal inside of $C$). Factoring is often needed in order to generate new clauses **that will not end up creating an infinite loop of resolutions.**

## Unsatisfiability by Resolution (Refutation)

$\mathcal{C}$ is unsatisfiable if and only if the resolution method can produce $\emptyset$ in a **finite** number of steps. We say that the resolution is sound and complete.

This gives us a proof procedure for unsatisfiability and validity. However, this does not give a **decision procedure** for unsatisfiability.

Resolution only works if we apply a sensible search strategy, say for the set of clauses:

$$
\mathcal C = \{\{\neg P(x)\}, \{P(x)\}, \{Q(f(x)), \neg Q(x)\}\}
$$

We can resolve using two copies of the third clause and the unifier $\theta = \{x \mapsto f(x)\}$. This will result in an infinite resolution. However if we have chosen the first two clauses and resolve them on $P(x),\neg P(x)$, then it would have been easier.

**Horn Clauses**:
A horn clause is a clause with **at most** one single positive literal. Example: $\{\neg p_0, \neg p_1, \neg p_2, \cdots, \neg p_k, q\}$.

Horn clauses are easier to work with in resolutions, hence choosing two horn clauses in a resolution is often a wise choice.

Horn clauses can also be written as the following implication:

$$
p_0 \wedge p_1 \wedge p_2 \wedge \cdots \wedge p_k \implies q
$$