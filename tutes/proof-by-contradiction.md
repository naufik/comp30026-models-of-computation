**Claim**:
For every transitive relation $R$: $R\circ R \subseteq R$.

**Proof** (by contradiction):

Let $R$ be a transitive relation, which means:
$$
\forall x,y,z : (x,y),(y,z)\in R \implies (x,z) \in R \quad [1]
$$
Assume $$R \circ R \not\subseteq R$$, which means that
$$
\exists (a,b): (a,b) \in R \circ R\and (a,b) \not\in R \quad [2]
$$
Let $(u,v)$ be an element such that $(u,v) \in (R\circ R)$ but $(u,v) \not\in R$ (we know such an element exists from [2]).

From definition of composition of relations:
$$
A \circ B = \{(a,b) | \exists c \ ((a,c) \in A, (c,b) \in B\}
$$
Then we know that for our element $(u,v)$:
$$
\exists w : (u,w) \in R \wedge (w, v) \in R
$$
Since $R$ is transitive, or since $[1]$ is true we can conclude that:
$$
(u,v) \in R
$$
Now we have concluded that
$$
(u,v) \in R \wedge (u,v) \not\in R
$$
**A contradiction**, hence we know that our assumption $R \circ R \not\subseteq R$ is false or in other words
$$
\therefore R\circ R \subseteq R
$$
**Backwards Proof**:

Let $R$ be a relation such that $R \circ R \subseteq R$, i.e.:
$$
\forall a,b : (a,b) \in R \circ R \implies (a,b) \in R
$$


Assume $R$ is nontransitive, that is:
$$
\exists a,b,c : (a,c),(c,b) \in R \and (a,b) \notin R
$$
Now let $(u,w), (w,v), (u,v)$ be tuples such that $(u,w),(w,v) \in R$ and $(u,v) \not\in R$ (we know such an element exists based on our nontransitivity assumption).

Based on our assumption, since we know that
$$
(u,w), (w,v) \in R
$$
therefore we must know that
$$
(u,v) \in R \circ R
$$
(by the definition of composition over relations).

Now since $R \circ R$ is a subset of $R$ then we know that our element must also satisfy:
$$
(u,v) \in R
$$
We have just concluded that
$$
(u,v) \in R \wedge (u,v) \notin R
$$
which is a contradiction, therefore what we assumed cannot be true and $R$ has to be transitive.

