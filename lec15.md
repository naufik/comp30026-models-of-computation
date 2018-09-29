# COMP30026: Regular Language Theory

## Closure of Operations 

Let $A,B$ be regular languages.

### Closure Under Concatenation

Let $N,M$ be two NFAs that recognizes the language $A$ and $B$ respectively. Proof:

- Let $m_k$ be the accept states of $M$, and $n_0$ be the begin state of $N$.
- Construct an NFA $Q$ where we start from $m_0$, then construct an $\varepsilon$ transition from $m_k \to n_0$.
- $Q$ recognizes $A \circ B$.

## Regular Expressions

Well formed regular expressions have the following syntax, given the alphabet $\Sigma = \{\sigma_1,\sigma_2,\cdots\}$.

A regular expression can be recursively defined:
$$
\begin{align}
rx \to & \sigma_1 | \cdots | \sigma_n | \varepsilon | \emptyset \\
&|rx \cup rx| rx\cdot rx|rx^*
\end{align}
$$

## Non-Regular Languages

Some languages are non-regular, so that cannot be captured with **regular expressions** and there does not exist any DFA that can recognize them. A good example is the following language:
$$
\Sigma^* = \{0^n1^n | n \geq 0\} = \{\varepsilon, 01, 0011, 000111, \cdots\}
$$
That is, the language of $n$ number of $0$-s followed by the same exact $n$ number of $1$s. There is no **finite** state automata that can recognize this language. (Although an automata with infinite states can capture this language.)

The following language, however, is regular:
$$
\Sigma^*= \{0^n1^n | 0 \leq n \leq 999999\}
$$
**Proof**, consider $\Sigma_k = \{0^n1^n | n = k\}$. For any $k$, $\Sigma_k$ only captures one string $\{\underbrace{0000\cdots0}_{k \text{ times}}\underbrace{1111\cdots1}_{k \text{ times}} \}$. We can easily build a DFA for this language (which probably only looks like a straight line), therefore the language $\Sigma_k$ is regular.

Now in this case $\Sigma^*$ is defined as:
$$
\Sigma^* = \Sigma_1 \cup \Sigma_2 \cup \Sigma_3 \cup \cdots \cup \Sigma_k
$$
As $\Sigma^*$ is a union of regular languages therefore $\Sigma^*$ is regular.

**Theorem**: It follows from the construction above that every finite language is regular.

By intuition, if a language *requires* you to have some sort of "memory" then most likely it is non-regular. This intuition does not always follow through.

### Pumping Lemma

A standard construction to prove that a language is non-regular.

**Pumping Lemma**: 

If $A$ is a regular language then:
$$
\exists p \in \mathbb{N}: \forall s\in A: |s|>p \implies s = xyz
$$
such that:

- $xy^iz \in A$
- $y \neq \varepsilon$
- $|xy| \leq p$

Proof on *Slide 17*.

For any language $A$ we use the **contrapositive of the pumping lemma** in order to prove that $A$ is non regular.

