---
title: template post with syntax
date: 2023-04-21 23:09:57
tags:
description: This is a page that showcases all the syntax that are supported by fluid and hexo.
toc: true
---

{% raw %}<article class="message is-info"><div class="message-body">{% endraw %}
[Source](https://hexo.fluid-dev.com/docs/guide/)
This is a page that showcases all the syntax that are supported by fluid and hexo.
{% raw %}</div></article>{% endraw %}

# Index image in home page

```markdown
---
title: 文章标题
tags: [Hexo, Fluid]
index_img: /img/example.jpg
date: 2019-10-10 10:00:00
---

以下是文章内容
```
<!--more-->

# Codeblocks

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
```

# Latex formulas

$$
E=mc^2
$$

# Mermaid diagrams [^1]

[^1]: Links: [Source](https://mermaid-js.github.io/mermaid/#/); [Github](https://github.com/mermaid-js/mermaid)

## Gannt diagram

## classDiagram

```mermaid
classDiagram
Class01 <|-- AveryLongClass : Cool
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 --> C2 : Where am i?
Class09 --* C3
Class09 --|> Class07
Class07 : equals()
Class07 : Object[] elementData
Class01 : size()
Class01 : int chimp
Class01 : int gorilla
Class08 <--> C2: Cool label
```

[^2]: This is the footnote content
[^3]: This is the footnote content

## Graph

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

## Sequence diagram

```mermaid
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
```

## Git graph

```mermaid
gitGraph
   commit
   commit
   branch develop
   checkout develop
   commit
   commit
   checkout main
   merge develop
   commit
   commit

```

## Flowchart

```mermaid
flowchart TD
    A[Start] --> B{Is it?}
    B -- Yes --> C[OK]
    C --> D[Rethink]
    D --> B
    B -- No ----> E[End]
```

# Using footnotes

This is a sentence[^2]

This is a sentence[^2][^3]

This is a sentence[^2]

This is a sentence[^2]
