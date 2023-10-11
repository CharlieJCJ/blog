---
title: CS 189 Intro to Learning Theory
date: 2023-05-07 22:21:44
tags: ml
description: This is a blog post for CS 189 lecture on Learning Theory, contents are organized in the flow of the lecture. This blog isn't the final version yet.
toc: true

---

# CS 189 Learning Theory blog

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}
This is a blog post for CS 189 lecture on Learning Theory, contents are organized in the flow of the lecture. This blog isn't the final version yet.
{% raw %}</div></article>{% endraw %}
A range space is a pair $P$, $H$:

$P$ is **set of all possible test/training points** (can be infinite)

$H$ is a **hypothesis class** (set the boundary of legal classifiers), a set of hypotheses (classifiers)

- e.g. all the linear classifiers
<!--more-->

Suppose all training pts & test pts are drawn _independently_ from same prob. distribution $\mathcal D$ defined on domain $P$

$h\in \mathcal H$ be a hypothesis (a classifier), h predicts a pt x is in class C if $x\in h$

Risk (generalization error) $R(h)$ of $h$ is the probability that $h$ misclassifies a random pt $x$ drawn from $\mathcal D$ (i.e. the prob that $x\in C$ but $\notin h$) ← essentially test error

- risk is the average test error for test points drawn randomly from $\mathcal D$ (但我们一般是一个 subset of the theoretical entire set of $\mathcal D$, so test error sometimes is high, sometimes is low).

Notation:

Let $X\subseteq P$ be a set of $n$ training pts drawn from $\mathcal D$

Empirical risk (training error) $\hat R(h)$ is % of $X$ misclassified by $h$

$h$ misclassfies each training pt w/ prob. $R(h)$, so total misclassified has a binomial distributio.

$P(|\hat R(h)-R(h)|>\epsilon) \le2e^{-2\epsilon^2n}$

- when n is very large, the probability gets smaller.

Idea for learning algorithm: choose $\hat h\in H$ that minimizes $\hat R(\hat h)$ ← empirical risk minimization

Problem: if too many hypotheses, some $h$ with high $R(h)$ will get lucky and have very low $\hat R(h)$

- we can have so many hypotheses that some of them just get lucky and score far lower training error than their actual risk.
  → This is overfitting

Dichotomies

- a dichotomy of $X$ is $X \cap h$, where $h\in H$
  - picks out the training points that $h$ predicts are in class $C$
  - e.g. for $n$ training points, there could be up to $2^n$ dichotomies.
  - $\hat R(\hat h) = 0$ even if every $h\in H$ has high risk
  - we simply overfits

We limit to have a constant $\prod$ dichotomies,

$P(\text{at least one dichotomy has } |\hat R - R|\ge\epsilon)\le\delta$

- $\delta = 2\prod e^{-2\epsilon^2n}$
- Hence with prob. $\ge 1-\delta$ for every $h\in H$
- $\downarrow$ complement of the above inequality
- $|\hat R(h) - R(h)| \le \epsilon = \sqrt{\frac 1{2n}ln\frac{2\prod}{\delta}}$

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}
💡Lesson: the smaller we make $\prod$, the number of dichotomies, and larger the n, the number of training points, the more accurately the training error will approximate how well the classifier performs on test data.
{% raw %}</div></article>{% endraw %}

Smaller $\prod$ means we’re less likely to overfit, we have less variance, but more bias. But it doesn’t mean that risk is small.

- Goal: we want a H that fits the data well and doesn’t produce many dichotomies.

Let $h^* \in H$ minimizes $R(h^*)$: “best” classifier

Let $\hat h\in H$ minimizes $\hat R(\hat h)$; the classifier we learn, with prob $\ge 1-\delta$, our chosen $\hat h$ has nearly optimal risk:

> Note: we still choose the best classifier $\hat h$ that minimizes the empirical risk. We don’t know the actual $h^*$ since we have no means to know it. But if $\prod$ is small and $n$ is large, the hypothesis $\hat h$ we have chosen is probably nearly as good as $h^{\*}$.

We have the following inequalities:

$R(\hat h) \le \hat R(\hat h) +\epsilon$

- got from previous inequalities

since $\hat R$ is lowest on classifiers trained on training data, it’s not the lowest on the theoretical optimal $\hat h$.

Then, using the previous inequality again, we have  
$\hat R (h^{\*})+ \epsilon \le R(h^*) + 2\epsilon$

To sum up,

![](https://s2.loli.net/2023/05/08/gYk8ltA9ZPvf7nM.png)

Sample complexity: the # of training pts needed to achieve this $\epsilon$ with prob $\ge 1-\epsilon$
