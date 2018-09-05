# COMP30026: Finite-State Automata

A representation of a machine in terms of **states**.

Notation:

- **Tail-less arrow** $\to$, meaning that the machine needs to start at that state.
- **Double-edged circle**, denotes a state that the machine wants to return to or an **accept state**.

A string of operations is only allowed as input **iff**:

- It is possible to trace the path in the automaton.
- The path leads back to an accept state.

A **reject state** is required, that is a state $\bar q \in Q$:

- $\forall x \in \Sigma : \delta(\bar q, x) = \bar q$.
- We can leave this out in the diagram to "declutter" it. 

## Alphabet

An alphabet $\Sigma$ is a non-empty finite set of symbols. A **string** over $\Sigma$ is a finite ordered sequence of symbols from $\Sigma$. We use $\Sigma^*$ to denote all possible finite strings from the alphabet $\Sigma$.

- We write the concatination of a string $x \cdots y$: as $xy = (x_1,x_2,\cdots,x_m,y_1,y_2,\cdots,y_n)$.
- We use $\varepsilon$ to denote the empty string.

$$
\Sigma^* = \{\exists k : (x_1,x_2,\cdots,x_k) | \forall i: x_i \in \Sigma\}
$$



