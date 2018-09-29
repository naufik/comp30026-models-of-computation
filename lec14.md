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

## Alphabets and Languages

An alphabet $\Sigma$ is a non-empty finite set of symbols. A **string** over $\Sigma$ is a finite ordered sequence of symbols from $\Sigma$. We use $\Sigma^*$ to denote all possible finite strings from the alphabet $\Sigma$.

- We write the concatination of a string $x \cdots y$: as $xy = (x_1,x_2,\cdots,x_m,y_1,y_2,\cdots,y_n)$.
- We use $\varepsilon$ to denote the empty string.

$$
\Sigma^* = \{\exists k : (x_1,x_2,\cdots,x_k) | \forall i: x_i \in \Sigma\}
$$

We say that an automaton accepts a string if:
$$
\exists (r_0, r_1, \cdots, r_n) \in Q^n: r_0 =q_0, \ r_n \in F, \delta(r_i, v_{i+1}) = r_{i+1}
$$

For a string $(w_1,w_2,w_3,\cdots)$:
$$
\delta(\delta(\cdots(\delta(\delta(q_1,w_1), w_2), w_3),\cdots) w_n) \in F
$$

### Regular Languages

Regular if there is a finite automaton that accepts them. Regular language operations:

- Union: $A \cup B$.
- Concatenation: $A \circ B = \{xy | x \in A, y \in B\}$.
- Kleene star: $A* = \{x_1x_2\cdots x_k | k \geq 0, x_i \in A\}$

The set of regular languages are closed under this operation.

## Nondeterministic Finite Automata

A finite automata where a symbol does not have to correspond to *one* transition. The difference in the formal defintion is only on the function $\delta$, where:
$$
\delta: Q \times (\Sigma\cup\{\varepsilon\}) \mapsto 2^Q
$$
A NFA is **biased towards acceptance**, meaning that a string $w \in \Sigma^*$ will be accepted if there exists a path that brings it to an accept state.

More properties:

- It is allowed to have a transition for the empty string (called an $\varepsilon$-transition).
- An NFA is *not any more powerful than a DFA*. It is just a syntactic sugar. 
- Equivalently, every NFA has a corresponding DFA. The DFA for a corresponding NFA of $k​$ states has at most $2^k​$ states (by powerset rule).

### Conversion from NFA to DFA

Let $N$ be a NFA, $M$ be the new DFA we construct.

- Let $q_0$ be the `begin` state of $N$.
- Let $Q' = (q_0)$ be a queue of states
- While $Q'$ is not empty: pop the first state in $Q'$ as $q_k$. ` `
  - Create a set of states $R_k = \{q_k\}$.
  - For every state $t$ that is reachable **by epsilon transitions**, redefine $R_k = R_k \cup \{t\}$.
  - For every state $s$ that is reachable by consuming a symbol $\sigma$, insert $s$ to the end of the queue and call this $q_{n+1}$, later on create a transition for $\sigma$ from $q_k$ to $r_{n+1}$.
  - Create a state $r_k$ that corresponds to $R_k$.