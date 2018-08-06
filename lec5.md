## Mechanized Reasoning

A **literal** is a single boolean variable representing true or false (e.g. $P, Q$).

**Normal forms of propositional logic**:

- Conjunctive Normal Form (conjunction of disjunction of literals). *This subject will primarily work with this normal form*.
- Disjunctive Normal Form (disjunction of conjunction of literals).
- In both forms, negation ($\neg$) can only be attached to a literal and not an expression.

Conversion to CNF or DNF: [*See slide 7 of lecture 5*].

**Reduced CNF / RCNF**:

A CNF formula is in RCNF if and only if for each of the clauses, no single literal occurs more than once.

The following formula is in CNF **but not RCNF** (because the literal $A$ appears twice in the first clause):
$$
(A \vee B \vee \neg A) \wedge (C \vee B \vee A)
$$
The formula above can be reduced to:
$$
(C \vee B \vee A) \text{ because } A\vee\neg A = \text{true }
$$

#### XOR Canonical Forms

A formula that **uniquely defines** (up to reordering) a boolean formula, in terms of exclusive-or and conjunctions, e.g:
$$
(A\wedge B \wedge C) \oplus C \oplus (B \wedge A)
$$

## Clauses

The clause $\emptyset$ is always valid because *there is nothing to be satisfied*! However, the clause $\{\emptyset\}$ is not valid because nothing can **satisfy the inner $\emptyset$**.

### Resolution-Based Inference

See slide 18 of lecture 5.

If we know a set of clauses $S$ is true, therefore if we can find a formula $P$ that follows from all the clauses in $S$ (i.e. satisfies clauses in $S$) then $P$ is **a resolvent of** $R$.

**Theorem**:
$$
R \text{ is a resolvent of } C_1, C_2 \implies C_1\wedge C_2 \models R
$$
**Theorem (Modus Ponens)**:
$$
\{A, A \implies B\} \models B
$$
If **the resolvent** $R$ is false, then the set of clauses $C_1, C_2$ will also be false (i.e. *contrapositive?*).

### Refutations

That is, the act of trying to "resolve" a set of logical clauses $S$ as unsatisfiable.

We cannot resolve on multiple literals at the same time.

**Applications of Refutations**:

- Use to prove a formula is a contradiction (original use).
- For a formula $P$ we can prove $P$ is valid by refuting $\neg P$.
- **Theorem**: $\phi \models \psi \iff \phi\and\neg\psi \text{ is unsatisfiable}$.

