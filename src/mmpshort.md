---
title: Minimal Model Program
updated_at: 2025-10-13T01:11:11.009+02:00
---

Call for speakers. Please contact Bojin Han at *`bojin.han` at `ens.psl.eu`* to join.

## Why minimal model program?

*We want to classify all algebraic varieties!*

But it's **impossible**, we can not even classify all smooth algebraic varieties (or even manifold) up to homeomorphism :(

> Manifolds in dimension 4 and above cannot be effectively classified: Given two $n$-manifolds ($n \geq 4$) presented as CW complexes, there is no algorithm for determining if they are homeomorphic / diffeomorphic. This is due to the unsolvability of the word problem for groups. [Click Here](https://en.wikipedia.org/wiki/Classification_of_manifolds#Computability)

Hence we have to find a better notation, just like homotopy, which is birational equivalence.

### Examples of birational transform

1. normalization;
2. blow up;
3. Veronese map of $\mathbb P^n\times \mathbb P^m\to \mathbb P^{n + m}$;
4. etc.

But acturally they all look like blow up: birational equivalence between $\mathbb P^1\times \mathbb P^1\subset \mathbb P^3$ and $\mathbb P^2$ is exactly the blow up of $\mathbb P^2$! So how important is blow up?

### Theorem [Hart, Theorem V.5.5]

Let $T\colon X \to X'$ be a birational transformation of **surfaces**. Then 
it is possible to factor T into a finite sequence of monoidal transformations (blow down)
and their inverses (blow up). 

---

So now we are going to examine blow up. The self-intersection number of the exceptional divisor is $-1$, and the converse also holds:

### Theorem (Castelnuovo, [Hart, Theorem V.5.7])

If $E$ is a rational curve on a surface $Y$ with self-intersection number $-1$, then there exists a surface $X$ and a birational morphism (monoidal transformation, i.e. blow down) $f : Y \to X$ such that the exceptional divisor corresponding to $f$ is exactly $E$.

---

Thus, by continuously contracting exceptional divisors, one can simplify the surface until there are no rational curves with negative self-intersection left.  
The culmination of this idea is the **Enriques classification**, proposed in the 19th century: by using the Kodaira dimension, the genus, and the irregularity number, one can determine the corresponding minimal model.

In the early 20th century, **Kuni­hiko Kodaira** rigorized the intuitive proofs of the Italian school using modern language, for which he was awarded the **Fields Medal**.

---

So now the question is: can we do the same for higher dimensional algebraic varieties? This is what minimal model program (mmp) talks about.

The difficulty in higher dimensions lies in the fact that the blow-up is not unique, and the notion of self-intersection no longer makes sense.  

Until 1981, **Shigefumi Mori** solved **Hartshorne's conjecture** and discovered that instead of considering self-intersection numbers, we can study the intersection with the canonical divisor $K_X$.

### Theorem (Contraction Theorem, Smooth Version).
Let $X$ be a projective algebraic variety, and let $F \subset \overline{NE}(X)$ be a $K_X$-negative extremal ray. Then, up to isomorphism, there exists a unique projective variety $Z$ and a unique morphism $\operatorname{cont}_F : X \to Z$ such that $(\operatorname{cont}_F)_* \mathcal{O}_Z = \mathcal{O}_X$, and for any irreducible curve $C$, we have $\operatorname{cont}_F(C)$ is a point if and only if $C \in F$.

Mori was awarded the **Fields Medal in 1990** for this result.  
Moreover, Mori's original proof is difficult to generalize to dimensions four and higher. The higher-dimensional cases were later developed by **Kawamata**, **Reid**, **Kollár**, **Birkar**, and others.

---

However, the **Minimal Model Program (MMP)** was still far from complete, since there are three types of contractions, and in one of them the image is not klt (recall that klt requires $K$ to be $\mathbb{Q}$-Cartier):

1. **Fibre contraction**: $\dim \mathrm{cont}(X) < \dim X$.
   In this case, $X$ is a ruled variety over $\mathrm{cont}(X)$, corresponding to Mori's first case (1981).
2. **Divisorial contraction**: the exceptional locus of $\mathrm{cont}$ is a divisor, corresponding to Mori's second case.
3. **Small contraction**: the exceptional locus has codimension at least two, which does not occur for smooth threefolds.

For small contractions, the image $Y := \mathrm{cont}(X)$ has a canonical divisor $K_Y$ that is **not $\mathbb{Q}$-Cartier**.
Indeed, if $K_Y$ were $\mathbb{Q}$-Cartier, then for any contracted curve $l$ we would have
$$
K_X \cdot l = \mathrm{cont}^*K_Y \cdot l = 0,
$$
contradicting the fact that $K_X \cdot l < 0$.

---

To solve this issue, one introduces a new variety $X^+$ satisfying certain properties, called a **flip**.

Here we give an example [KM, Example 2.7]

### Example of flip

Consider the three-dimensional algebraic variety
$Y = \{(x, y, z, w) \in \mathbb{C}^4 \mid xy = zw\}$.
Recall that it has a **log canonical singularity** at the origin.
Let $\tilde{X}$ be the **blow-up of $Y$ at the origin**.
By definition, the **exceptional divisor** $Q$ is the surface
$xy - zw = 0$ in $\mathbb{P}^3$.
This is a **ruled surface**, which can be viewed as the **Veronese embedding** of
$\mathbb{P}^1 \times \mathbb{P}^1$.
In other words, the two copies of $\mathbb{P}^1$ can be identified respectively with
$(x : z)$ and $(y : w)$.

Now, consider the two three-dimensional varieties obtained by **contracting each of the two different $\mathbb{P}^1$'s** in $Y$.
Denote them by $X$ and $X^+$.
By the universal property of blow-ups, there exist **canonical morphisms**
$X \to Y$ and $X^+ \to Y$.
Let $C$ and $C^+$ be the **exceptional loci** of these two morphisms.
By definition, both are isomorphic to $\mathbb{P}^1$.

On $X$, the locus $y = w = 0$ is contracted to a point, while $x = z = 0$ remains unchanged.
On $X^+$, the situation is reversed: $x = z = 0$ is contracted to a point, while $y = w = 0$ remains unchanged.
The following diagram illustrates the situation.

Now consider the action of the cyclic group $\mathbb{Z}/n\mathbb{Z}$ on $\mathbb{C}^4$:
$(x, y, z, w) \mapsto (\zeta_n x, y, \zeta_n z, w)$,
where $\zeta_n$ is an $n$-th root of unity.
This action preserves $Y$, and the fixed loci in $Y$ are the planes
$x = z = 0$ and $y = w = 0$.
Denote the quotient variety by $Y_n$.

By the universal property of the blow-up, the action of $\mathbb{Z}/n\mathbb{Z}$ also extends to $\tilde{X}$.
Restricted to the exceptional divisor $Q$, the action preserves the two lines $x = z = 0$ and $y = w = 0$ in $\mathbb{P}^3$.
Again by the universal property, this induces actions of $\mathbb{Z}/n\mathbb{Z}$ on $X$ and $X^+$.

Denote the quotient varieties by $X_n$ and $X_n^+$.
It can be seen that these two varieties have very different properties:
$X_n^+$ is **smooth**, while $X_n$ is **singular**.

We call $X_n^+$ the **flip** of $X_n \to Y_n$.

---

So now the question is: When flip exists? When it terminates?

In 1988, Mori proved the **existence of flips in dimension three**.

Major progress followed in the 21st century:
in 2003, **Shokurov** proved the existence of flips in dimension four;
in 2005, **Hacon** and **McKernan** showed that the existence of flips in dimension $n$ implies their existence in dimension $n + 1$, thus completing the proof of existence for dimension 4;
and in 2010, the famous paper BCHM established the existence of **log flips** and the **termination** of special flip sequences. But for general termination, the situation remains largely open — the most significant progress is due to **Kawamata**, who proved finiteness for three- and four-dimensional cases.

### Theorem (BCHM)

Let $X \to U$ be a projective morphism between normal quasi-projective varieties, and let $\Delta$ be a $\mathbb{Q}$-divisor such that $(X, \Delta)$ is a klt pair.
Then there exists a $(K_X + \Delta)$-MMP on $X$ consisting of finitely many flips and divisorial contractions:
$$
X = X_1 \dashrightarrow X_2 \dashrightarrow \ldots \dashrightarrow X_N
$$
such that either $K_{X_N} + \Delta_N$ is nef over $U$, or there exists a morphism $X_N \to Z$ which is a Mori fiber space.
(See [HK, Theorem 5.54].)
  
**Caucher Birkar** was subsequently awarded the **Fields Medal in 2018** for his contributions.

---

The target of this gt is study the proof of contraction theorem and the proof of BCHM.

## Lectures (planned, each lecture about 1h30min-2h)

1. Varieties and birational morphisms (i.e. [Deb1, Chapitre 1-3] and [Mumf, Chapter 1, 2, 8])
2. Regularity and smooth (i.e. [Deb1, Chapitre 4])
3. Divisor (i.e. [Deb1, Chapitre 5], [Deb2, Chapter 1], [HK, 2.B] and [Laz, 1.1])
4. $\mathbb Q-$Divisor, $\mathbb R-$Divisor and klt pairs (i.e. [Deb2, 2.1-2.3], [Deb3, 1.1-1.3], [Kaw, 1.1-1.4], [Kaw, 1.10] and [Mat, 2])
5. lc, dlt, plt pairs and singularities (i.e [Kaw, 1.11], [Mat] and [HK, 3.A-3.G])
6. Positivity: ample and cone (i.e. [Deb1, 6.5], [Laz, 1.2A], [KM, 1.5] and [Deb3, 1.4, 1.5, 1.7])
7. Positivity: nef, big, pseudo-effective, and relative sense. (i.e. [Deb3, 1.5-1.9] and [HK, Chapter 2])
8. Vanishing theorems and induction process (i.e. [HK, 3.H])
9. Non-vanishing and basepoint free
10. to be continued...

## References

- [Bea] Complex Algebraic Surfaces (Arnaud Beauville)
- [Hart] Algebraic Geometry (Robin Hartshorne)
- [Deb1] [Intoduction à la Geometrie Algèbrique](https://perso.imj-prg.fr/olivier-debarre/wp-content/uploads/debarre-pub/DEA99.pdf) (Olivier Debarre, polycopie)
- [Deb2] [Introduction to Mori Theory](https://www.math.ens.psl.eu/~debarre/M2.pdf) (Olivier Debarre, polycopie)
- [Laz] Positivity in Algebraic Geometry I (Robert Lazarsfeld)
- [Deb3] Higher dimensional algebraic geometry (Olivier Debarre)
- [KM] **Birational Geometry of Algebraic Varieties (Janos Kollár, Shigefumi Mori)**
- [Mat] Introduction to the Mori Program (Kenji Matsuki)
- [HK] **Classification of Higher Dimensional Algebraic Varieties (Christopher D. Hacon, Sándor J. Kovács)**
- [AC] Flips for 3-folds and 4-folds (Alessio Corti (Editor))
- [Kaw] Algebraic Varieties Minimal Models and Finite Generation (Yujiro Kawamata)
- [Mumf] Complex Projective Varieties (David Mumford)
