---
layout: default
title: Example
parent: Structurizr DSL
nav_order: 1
permalink: /dsl/example
---

# Structurizr DSL

The Structurizr DSL provides a way to define a software architecture model
(based upon the [C4 model](https://c4model.com)) using a text-based domain specific language (DSL).
The Structurizr DSL has appeared on the
[ThoughtWorks Tech Radar - Techniques - Diagrams as code](https://www.thoughtworks.com/radar/techniques/diagrams-as-code)
and is text-based wrapper around the [Structurizr for Java library](https://github.com/structurizr/java).

## Example

As an example, the following DSL can be used to create a software architecture __model__ and
an associated __view__ that describes a user using a software system.

```
workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System"

        user -> softwareSystem "Uses"
    }

    views {
        systemContext softwareSystem {
            include *
            autolayout lr
        }
    }
    
}
```

![Example system context diagram](/assets/images/dsl/example.png)