# COMP30026: Relations and Functions

## Binary Relation

An $n$-ary relation is a set of $n$-tuples. A binary relation is a set of $2$-tuples.

All of "$\leq$", "$\subset$" is a relation defined on different domains:

- $\leq$ is defined on $\mathbb{R}$ or $\mathbb{Z}$.
- $\subset$ is defined on $\mathcal{P}(A)$ for some set $A$.
- "are unifiable" is defined on the set of $Terms$.

The relation $\leq$ (on $\mathbb{N}$) can be defined as a set as:

$$
\leq \ = \ \{(0,0),(0,1),(0,2),\cdots,(1,1),(1,2),(1,3),\cdots,(2,2),(2,3),\cdots\}
$$

The statement of $a \leq b$ is then just a syntactic sugar for $(a,b)\in\leq$.

Binary relation properties:

- Reflexive: 

$$
\forall x \in A : R(x,x)
$$
- Irreflexive: 

$$
\forall x \in A : \neg R(x,x)
$$

- Symmetric: 

$$
\forall x,y \in A : R(x,y) \implies R(y,x)
$$
- Asymmetric:
  $$
  \forall x,y \in A: R(x, y) \implies \neg R(y,x)
  $$

- Antisymmetric: 
  $$
  \forall x,y \in A : R(x,y) \wedge R(y,x) \implies x = y
  $$




- Transitivity: 

$$
\forall x,y,z \in A : R(x,y) \wedge R(x,z) \implies R(x,z)
$$

**Closures of Transitivity**:

- The full relation is transitive.
- Transitive relation are closed under intersection, meaning that if $R_1, R_2$ are transitive then $R_1 \cap R_2$.

For any relation $R$ there exists relations $R_S$, $R_T$, $R_R$ such that $R \subseteq R^+$ and $R_R$ is reflexive, $R_T$ is transitive and $R_S$ is symmetric. $R_R$, $R_S$, $R_T$ are also the smallest possible such relations.

Here:

- $R_R$ is called the reflexive closure.
- $R_S$ is called the symmetric closure.
- $R_T$ is called the transitive closure.

$R_R$, $R_S$ and $R_T$ are **not** necessarily distinct.

### Composition of Relations

We define the composition of two relations $R_1,R_2$ as:

$$
(x, y) \in (R_1 \circ R_2) \iff \exists y : R_1(x,y)\wedge R_2(y,z)
$$

**Closure sets by composition**:

We can find the transitive closure of a relation is obtained by:

$$
R_T = \bigcup_{n \geq 1}R^n
$$

The transitive, reflexive closure of a relation is obtained by:

$$
R_{R,T} = \bigcup_{n \geq 0}R^n
$$

## Functions

A function $f​$ is a relation with the following property:

$$
(x,y) \in f \wedge (x,z) \in f \implies y = z
$$

For every $x$, there can be only one $y$ such that $(x,y)$ is in the relation.

We say that a function $f$ is **from $X$ to $Y$**, or

$$
f : x\mapsto y
$$
Meaning:

- $f$ has domain $X$.
- $f$ has co-domain $X$.
- $f$ has range that is a subset of $Y$.

Notice that **range and codomain are different**, in a sense that if $R$ denotes the range of the function then:
$$
R = \{f(x) \ | \ x \in X\} \subseteq Y
$$
This lenient syntax allows us to write $f : \mathbb{R} \mapsto \mathbb{R}$ for $f(x) = |x|$, as it still maps all the real number to **a subset** of the real numbers.

**Recurrence**:

A function can either be defined recursively, or in closed form (without reference to itself). However, it is not the case that a **closed form** of a function is always possible to find.

**A function $f: X \mapsto Y$ is**:

- Surjective if $F[X] = Y$, depends on how we define the "signature" of our function. The function $f(x) = |x|$ is:
  - Not surjective if we define the signature as $f: \mathbb{R} \mapsto \mathbb{R}$.
  - Surjective if we define $f$ as $f: \mathbb{R} \mapsto \mathbb{R^+_0}$, that is $\{x | x \in \mathbb{R},  x \geq 0\}$.
- Injective if $f(x) = f(y) \implies x = y​$.
- Bijective iff it is surjective and injective.

**Composition**:
$$
(g \circ f)(x) = g(f(x))
$$

- Note that the order is difference for relation, this is pronounced "$g$ after $f$".
- $\circ$ is associative over functions, and we have the function $\mathrm{id}_X$ is the identity function for domain $X$ which is the identity element for composition.

**Partial Functions**:
$$
f : X\hookrightarrow Y
$$

- Used to denote that $f$ is only defined on a proper subset of $X$.

- An example of such a function is
  $$
  f(n) = \left\{\begin{array}{cc}
  42 & n = 0 \\
  f(n-2) & n \neq 0
  \end{array}\right.
  $$
  which is only defined when $n$ is a positive even number.

- It can be impossible to determine of the domain of a function, consider the Collatz Conjecture
  $$
  c(n) = \left\{\begin{array}{cc}
  1 & n = 1 \\
  c(\frac{n}{2}) & n \text{ is even} \\
  c(3n+1 & n) \text{ is odd}
  \end{array}\right.
  $$
  The function $c : \mathbb{N} \hookrightarrow \mathbb{N}$ is partial, but it is not known that the function is total.
