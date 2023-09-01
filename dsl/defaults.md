---
layout: default
title: Defaults
parent: Structurizr DSL
nav_order: 3
permalink: /dsl/defaults
---

# Defaults

The DSL is designed to be as compact as possible.
When used in conjunction with [Structurizr Lite](/lite)
or the [Structurizr CLI](/cli),
the following DSL fragment will automatically:

- Create the [implied relationship](https://github.com/structurizr/java/blob/master/docs/implied-relationships.md)
between the ```user``` and ```softwareSystem``` elements.
- Create a default set of views (1 x System Landscape, 1 x System Context, 1 x Container - all with auto-layout enabled, see [ViewSet.createDefaultViews()](https://github.com/structurizr/java/blob/master/structurizr-core/src/com/structurizr/view/ViewSet.java)).
- Add some default element styles from a theme.

```
workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application"
            database = container "Database"
         }

        user -> webapp "Uses"
        webapp -> database "Reads from and writes to"
    }
    
    views {
    	theme default
    }

}
```