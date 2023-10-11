---
title: Build a deep-learning workstation
date: 2023-04-23 02:37:34
tags:
index_img: /img/3060.png
comments: on
description: Step by step guide to build a deep-learning workstation.
toc: true
---

# Build a deep-learning workstation

<!-- toc -->

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}

**Motivation**:
not rely on any lab’s computing resource, **learn & experiment with** public deep learning repos. I can’t replicate the results on my XPS 15 RTX 3050TI 4GB GPU, which forces me to look at other resources. Looking at the pricing and setup needed to work with cloud computing, I found better returns by building my own deep-learning workstation. Trying and replicating the results of these repos are absolutely important for learning and creativity. Crazy GPU Speed isn’t my focus at the moment, but large GPU mem is the key. 3060 seems to be the most price efficient one in the market at this point.

{% raw %}</div></article>{% endraw %}
![](https://s2.loli.net/2023/05/08/kfaZXiT4WUlRFr7.jpg)
![](https://s2.loli.net/2023/05/08/NQOLasbGrAmSy5u.jpg)

<!--more-->

## Videos referenced:

Which GPU to choose for deep learning?

[How to Choose an NVIDIA GPU for Deep Learning in 2023: Ada, Ampere, GeForce, NVIDIA RTX Compared](https://www.youtube.com/watch?v=F1ythHjdWI0)

[How to Build a Deep Learning Machine - Everything You Need To Know](https://www.youtube.com/watch?v=OWvy-fCWTBQ)

[How to Assemble a Deep Learning Machine - Full Process | Part 2](https://www.youtube.com/watch?v=XIHG11EzB28)

[How To Install CUDA, cuDNN, Ubuntu, Miniconda | ML Software Stack | Part 3/3](https://www.youtube.com/watch?v=ttxtV966jyQ)

### (Optional) Article references

[which-gpu-for-deep-learning](https://timdettmers.com/2023/01/30/which-gpu-for-deep-learning/#)

[deep-learning-hardware-guide](https://timdettmers.com/2018/12/16/deep-learning-hardware-guide/)

## Specs of my machine (for replication purpose):

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}

**Price**: $924.99
**CPU**: AMD Ryzen 7-5800
**Memory:** 16GB
**GPU:** NVIDIA GeForce RTX 3060 12GB
**SSD:** 1TB (Samsung 970 evo plus) +$69.99
{% raw %}</div></article>{% endraw %}

[](https://www.bestbuy.com/site/lenovo-legion-tower-5-amd-gaming-desktop-amd-ryzen-7-5800-16gb-memory-nvidia-geforce-rtx-3060-256gb-ssd-1tb-hdd-raven-black/6501812.p?skuId=6501812)

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}

🔗 Follow this video for in-depth environment installation instruction [How To Install CUDA, cuDNN, Ubuntu, Miniconda | ML Software Stack | Part 3/3](https://www.youtube.com/watch?v=ttxtV966jyQ)

{% raw %}</div></article>{% endraw %}

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}

📘 Official documentation referenced from `How To Install CUDA, cuDNN, Ubuntu, Miniconda | ML Software Stack | Part 3/3`

{% raw %}</div></article>{% endraw %}

1.  ✅ [Ubuntu installation](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview)

2.  ✅ [CUDA installation](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)

3.  ✅ [cuDNN installation](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html)

# SSH-ing

### Step 1: Step up ssh from remote laptops (e.g. mac/windows) to Ubuntu _within LAN_

[How to enable SSH on Linux Ubuntu (Easy step by step guide)](https://www.youtube.com/watch?v=Wlmne44M6fQ&t=1s)

### Step 2: Step up ssh port forwarding to connect from any network through remote laptops (e.g. mac/windows) to Ubuntu

[windows 系统如何通过 ssh 远程连接 linux？ - 知乎](https://www.zhihu.com/zvideo/1621515254902521856)

[cpolar - 安全的内网穿透工具](https://www.cpolar.com/)

> I used the free account that fulfills my personal usage and need. Works perfectly at the moment. There can be other cleaner approaches, but I haven’t find such one. Please send me a message if you found one.

### Step 3: passwordless login instructions

[How to connect without password using SSH (passwordless)](https://levelup.gitconnected.com/how-to-connect-without-password-using-ssh-passwordless-9b8963c828e8)

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}
Thanks for reading, if you have any questions/suggestions, please leave a comment below.
{% raw %}</div></article>{% endraw %}
