# COMP30026: Termination and Well-Foundedness

To determine that a computation terminates, we need to find a function $m$ "the measure function" of the input variables such that:

- The measure is a natural number.
- The measure decreases every time.

If such a measure function $m(x_1,\cdots)$ exists then we can ensure that the computation will terminate as for any $n \in \mathbb{N}$, $n$ cannot be decreased indefinitely.

The general termination problem is **undecidable**.

## Well-Foundedness

The binary relation $\prec$ over some set $X$ is **well-founded** if and only if there is no infinite sequence $x_1,x_2,\cdots$ such that
$$
x_1 \succ x_2 \succ x_3 \succ \cdots
$$
The binary relation $(\mathbb{N}, <)​$ is well-founded, as it will terminate at 0 or in other words:
$$
\cancel\exists x \in \mathbb{N}: 0 \succ x
$$

## Ordering of Pairs

### Component-Wise Ordering

Here we can order a pair of two natural numbers $\mathbb{N}\times\mathbb{N}$ by:
$$
(x_1,x_2) \preceq (y_1,y_2) \iff x_1 \preceq y_1
$$

### Lexicographic Ordering

## Termination

Consider the Ackermann function:
$$
A(m,n) = \left\{
\begin{array}{cc}
n+1 & m = 0 \\
A(m-1,1) & n = 0 \\
A(m-1,A(m,n-1)) & m,n\neq 0
\end{array}
\right.
$$
We see that on each recursive calls, the tuple of arguments $(m,n)$ gets **lexicographically** smaller, and hence the function will terminate for all values $(m,n)\in\mathbb{N^2}$.

We can see that there a well-founded lexicographic ordering can be used as a measure of whether a recursive 