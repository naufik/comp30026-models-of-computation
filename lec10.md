# Models of Computation: Mathematical Proofs 

## Proof by Induction

A proof method that is used in the domain where the elements can be written as:

$$
\mathbb{D} = \{0, s(0),s(s(0)), s(s(s(0))), \cdots\}
$$

For the case of $\mathbb{D = N}$, then $s(n) = n+1$, or it is called the successor function.

Proof method: if we want to prove that 

$$
\forall x \in \mathbb{D}: P(x)
$$

Then we start by proving:

- $P(0)$ holds, or the base case is established.
- $P(n) \implies P(s(n))$, or the inductive case holds.
- The above is proven by assuming that $P(n)$ is true and deriving that $P(s(n))$.

If the above is true, then we know $P(n)$ is true $\forall n\in \mathbb{D}$. Because:

- We have proven that $P(0)$ holds, and $P(n) \implies P(s(n))$ holds.
- Therefore by modus ponens, we can conclude that $P(s(0))$ holds.
- Therefore by modus ponens again, we can conclude that $P(s(s(0)))$ holds.

### Multiple Base Cases

Sometimes we need multiple base cases, with the reason being that our $s(n)$ is not $n+1$ but we include all elements of the naturals.

For example, to prove that a set of all numbers in some domain $\mathbb{D}$ are multiple of 3, then we know if $n-3$ is an multiple of 3 then so is $n$.

### Induction on Recursive Definitions

For example, our definition of a **formula** is as follows:

$$
formula \to \mathbf{t} | \mathbf{f} | var | (formula \iff formula)|\cdots
$$

Then, proving that **every formula has tthe same amount of right-parenthesis and left-parenthesis** requires induction based on the definition: *See Lecture 10, Slide 15*.
