# Models of Computation - Lecture 3

Let $\mathcal{B}$ be the set $\{True, False\}$

## Propositional Value

A propositional formula $P$:

- $P$ is always true $\implies$ $P$ is **valid** or **a tautology**.
- $P$ is always false $\implies$ $P$ is **valid** or **a contradiction**.

Valid formula example:

$$
A \implies A
$$

## Inference

Let $\theta$ be a truth assignment ($\theta \in \mathcal{B}^n$) and $\phi$ be a proposition with $n$ variables. If $\theta$ makes $\phi$ true, then we call $\theta$ to be **a model of** $\phi$.

$\psi$ is a logical consequence of $\phi$ if every model of $\phi$ is also every model of $\psi$.

We say $\phi$ **infers** $\psi$ or symbollically $\phi \models \psi$.


