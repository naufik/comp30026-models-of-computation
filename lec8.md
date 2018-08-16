# Models of Computation - Clausal Reasoning
## Models and Proofs

We use $A \models B$ to say that $B$ is a logical consequence of $A$. Usage of this symbol in consequents that we have only proven mechanically may be inaccurate since the "computer-based proof" may not satisfy all cases (i.e. edge cases or uncomputable cases).

Therefore we use the notation $A \vdash B$ to mean $B$ **can be proven from** $A$ by using some **process (or mechanized rules)**. An 

## Proof Methods

### Eliminating Existensial Quantifiers

Consider the formula $F$:

$$
\exists x\forall y : P(x, y)
$$

Take a fresh constant $a$. $F$ is satisfiable **if and only if** the following formula is satisfiable:

$$
\forall y : P(a,y)
$$

We just need a valuation $\sigma$ from the same interpretation $\mathcal I$ with mapping $a \mapsto d_0\in\mathbb D$.

The intuition behind this is similar to **proof by example**. Such constant $a$ is called the Skolem constant.


If we have a formula in the form of:

$$
\forall x\exists y : P (x,y)
$$

We cannot use the Skolem constant to (dis)prove the formula above as keeping a variable constant doesn't help. The existensial quantifier cannot be easily eliminated because holding it constant will result in a formula that is not bi-provable. However, we can use a **Skolem function**:

$$
\forall x : P(x, f(x))
$$

Since in the original formula, **there is a $y$ that satisfies for different values of $x$**. We can think of it as a bijection from the domain of $x$ to the domain of $y$.

## Resolution for Predicate 

Simple example of resolution:

$$
(\neg B(x) \wedge M(x)) \vee \neg M(c) \models \neg B(c)
$$

This is similar to propositional resolution but


X would say I tell the truth.