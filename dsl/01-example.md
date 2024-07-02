---
layout: default
title: Example
parent: Structurizr DSL
nav_order: 1
permalink: /dsl/example
---

# Example

As an example, the following DSL can be used to create a software architecture __model__ and
an associated __view__ that describes a user using a software system.

```
workspace {

    model {
        u = person "User"
        ss = softwareSystem "Software System"

        u -> ss "Uses"
    }

    views {
        systemContext ss {
            include *
            autolayout lr
        }
    }
    
}
```

And the Structurizr browser-based renderer produces the following diagram.

![Example system context diagram](/assets/images/dsl/example.png)