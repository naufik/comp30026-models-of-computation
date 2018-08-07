# Predicate Logic: Syntax

## Quantifiers 

- Universal quantifier: $\forall x  \ p(x)$, read as "for all $x$, $p(x)$ is satisfied".
- Existensial quantifier: $\exists x \ p(x)$, read as "there exists some $x$ that satisfies $p(x)$".

The quantifiers can also be defined as:

$$
\forall x: P(x) \equiv P(x_1) \wedge  P(x_2) \wedge \cdots \wedge P(x_n)
$$

$$
\exists x : P(x) \equiv P(x_1) \vee  P(x_2) \vee \cdots \vee P(x_n) 
$$

**Notation used**:

- "Functions" starting with a lowercase letter refers to some object, i.e. `father(ron)` is used to denote "the father of ron".
- "Functions" starting with a capitalized letter refers to a predicate or a truth value, i.e. `Father(ron)` will most likely refer to the truth question "is ron a father?".

Variable within the scope of a quantifier is **bound**, a variable that is not bound is **free**. Formulas with no free variables are **closed**.

Example:

$$
\forall x,y: P(x,y,z)
$$


In the formula above, both $x$ and $y$ are bound variables but $z$ is free. 

Bound variables are dummies, replacing the name of *all* occurences of a bound variable does not change the meaning of the formula:

$$
\forall x \ \exists y : (x < y) \equiv \forall x \ \exists z : (x < z)
$$

**Exercise** (slide 16):

$$
\forall x, \exists y : M(x) \implies T(y) \wedge B(x, y)
$$