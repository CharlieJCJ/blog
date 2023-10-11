---
title: CS 189 Kernalization
date: 2023-05-07 22:29:18
tags:
hidden: true
description: This is a blog post for CS 189 lecture on Learning Theory, contents are organized in the flow of the lecture. This blog isn’t the final version yet.
toc: true


---

# CS 189 Lecture 16: Kernelization

<aside>
💡 **Motivation**: with d input features, degree-p polynomials blow up to $O(d^p)$ features.

- weights can be written as a linear combo of sample pts
- we can use the inner product of $\Phi(x)$ only
</aside>

# 1. Kernal Ridge

Step 1: preprocess

![Untitled.png](https://s2.loli.net/2023/05/08/B4sFfat2QlIgVMz.png)

![Untitled 1.png](https://s2.loli.net/2023/05/08/6rfMFUOkazKV142.png)

We don’t have $(X^T X+\lambda I')w$ because of a justification, we need w be a linear combination of sample points.

![Untitled 2.png](https://s2.loli.net/2023/05/08/EZPRqB83f42XtVG.png)

![Untitled 3.png](https://s2.loli.net/2023/05/08/2pfH5bglDLPBhYQ.png)

## 1.1 Kernel

> 和之前完全一样的 formulation，只是我们把换了一个 notation，introduce 了 kernel，之后我们会换别的 kernel function。

$k(x,z)=x^Tz$ be a kernel fn.

Let $K = XX^T$ be a nxn kernel matrix, $K$ is the kernel matrix

$K_{ij} = k(X_i, X_j)$

![Untitled 4.png](https://s2.loli.net/2023/05/08/INUSFaqKTvZrcm6.png)

![Untitled 5.png](https://s2.loli.net/2023/05/08/xUd7Pq8SFu1W4Hi.png)

- comparison of runtime between dual and primal problems.

## 1.2 The Kernel Trick (kernelization)

![Untitled 6.png](https://s2.loli.net/2023/05/08/ECvBDhFUb6ey2ft.png)

The factor of $\sqrt 2$ doesn’t matter that much in practice.

$\Phi(x)$, $\Phi (z)$ are vectors, they are defined symbolically.

!! don’t compute $\Phi(x)$ or $\Phi(z)$, compute $k(x, z)=(x^Tz+1)^p$

![Untitled 7.png](https://s2.loli.net/2023/05/08/9nC2oNadf1BblJw.png)

- The running time is sublinear, actually much smaller than linear, in the length of the $\Phi$ vectors.

# 2. Kernel Perceptrons

## 2.1. Original Perceptron formulation:

![Untitled 8.png](https://s2.loli.net/2023/05/08/oP1LcDukA5JdYg8.png)

![Untitled 9.png](https://s2.loli.net/2023/05/08/qAVdG42CUphO1zi.png)

1. Initialize $w$
2. Uses stochastic gradient descent
   1. use gradients of the misclassified points to do gradient descents
   2. gradient is $-y_i\Phi(X_i)$
   3. so, we do this update $w \leftarrow w+\epsilon y_i\Phi(X_i)$ since $-(-...)=+...$
3. On testing, since perceptron is doing $sign(X_i\cdot w)= class$

## 2.2. Dualized version

Let $\Phi(X)$ be $n\times D$ matrix with rows $\Phi(X_i)^T$, $D=$ length of $\Phi(.)$, $K=\Phi(X)\Phi(X)^T$

![Untitled 10.png](https://s2.loli.net/2023/05/08/3smMYhE6nG4y5JF.png)

![Untitled 11.png](https://s2.loli.net/2023/05/08/Zchr3goaLBRQs2O.png)

![Untitled 12.png](https://s2.loli.net/2023/05/08/9lWrIO7FMu6zdn2.png)

# 3. Kernel Logistic Regression

![Untitled 13.png](https://s2.loli.net/2023/05/08/qdZDk23jS7zEQNp.png)

# 4. Gaussian Kernel (let D be infinite dimension)

![Untitled 14.png](https://s2.loli.net/2023/05/08/6CpQ4D1gtJ7Eima.png)

We can inspect what the $\Phi(x)$ is, but we don’t use it in practice

![Untitled 15.png](https://s2.loli.net/2023/05/08/b1MJdZ3VFrIP6YK.png)

<aside>
💡 It’s best ******not****** to think of points in a high-d space. It’s no longer a useful intuition. Instead, think of the kernel $k$ as a measure of how similar or close together two points

</aside>

Referencing back to the **dual ridge regression**, now the $h(z)$ in test time is a linear combination of Gaussians centered at x. $h(z)=\sum_{j=1}^na_j\cdot k(X_j,z)$ ← dual weights are the coefficients

![Untitled 16.png](https://s2.loli.net/2023/05/08/fkIWSrO4y26GnYA.png)

- Intuition from Gaussian kernel function (a measure of similarity)
  ![Untitled 17.png](https://s2.loli.net/2023/05/08/vg6LBriAox9wd7F.png)

The Gaussian kernel is very popular in practice

![Untitled 18.png](https://s2.loli.net/2023/05/08/5qlmchoiZjbAIDN.png)

<aside>
💡 Note: we treat $\sigma$ in kernel function as a hyper-parameter. 
Larger $\sigma$ → wider Gaussians & smoother $h$ → more bias & less variance.

</aside>

A function is qualified to be a kernel function only if it always generates a PSD kernel matrix for every sample.
