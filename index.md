---
layout: default
title: Home
nav_order: 2
description: Structurizr
permalink: /
---

# Structurizr

Structurizr builds upon "diagrams as code", allowing you to create
__multiple software architecture diagrams__ using the [C4 model](https://c4model.com), in a __variety of rendering tools__,
from a __single model__.

<div style="text-align: center">
<iframe src="https://www.youtube-nocookie.com/embed/LYzOc7vI-Uo?si=Fiwayepq9xOKpgeK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>

Structurizr is a modelling tool, allowing you to create multiple diagrams from a single model.
Here's an example with the [Structurizr DSL](/dsl):

```
workspace {

    model {
        user = person "User"
        
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application"
            db = container "Database Schema"
        }

        user -> webapp "Uses"
        webapp -> db "Reads from and writes to"
    }

    views {
        systemContext softwareSystem "SystemContext" {
            include *
            autolayout lr
        }

        container softwareSystem "Containers" {
            include *
            autolayout lr
        }
        
        styles {
            element "Person" {
                shape person
            }
        }
    }

}
```

This creates the following diagrams:

![](/images/example-1.png)

![](/images/example-2.png)