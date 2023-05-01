---
title: latex equation align
date: 2023-04-30 21:41:15
tags: latex
---

# latex equation align

{% note primary%}
Daily tip of new latex skills.
{% endnote %}

I was search for ways to align multiple parts of an equation, and found this [post](https://tex.stackexchange.com/questions/49014/aligning-equations-with-text-with-alignat) on stackexchange.

The `align` environment is the vanilla way to align equations, and the `&` symbol is used to specify the point of alignment.

```latex
\begin{align}
    a &= b + c \\
      &= d + e
\end{align}
```

$$
\begin{align}
a &= b + c\\\\
      &= d + e
\end{align}
$$

To specify more than one point of alignment, use the `alignat` environment. The first argument is the number of points of alignment, and the second argument is the number of columns in the equation.

```latex
\begin{alignat*}{3}
& m   \quad && \text{módulo}            \quad && m>0\\
& a   \quad && \text{multiplicador}     \quad && 0<a<m\\
& c   \quad && \text{constante aditiva} \quad && 0\leq c<m\\
& x_0 \quad && \text{valor inicial}     \quad && 0\leq x_0 <m
\end{alignat*}
```

![](/source/img/latex0.png)

Additionally, there's a discussion of what's the difference between `&` and `&&` in this thread, feel free to checkout this for more information!

[What does a double ampersand (&&) mean in LaTeX?](https://tex.stackexchange.com/questions/159723/what-does-a-double-ampersand-mean-in-latex)

{% note secondary %}
Thanks for reading, if you have any questions/suggestions, please leave a comment below.
{% endnote %}
