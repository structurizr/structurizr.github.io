---
layout: default
title: Sorting
nav_order: 50
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/sorting
has_toc: false
---

# Sorting

By default, diagrams are first sorted by scope (unscoped, followed by software systems by name), and then by diagram type, as follows:

- Unscoped diagrams
  - System landscape diagrams
  - Dynamic diagrams
  - Deployment diagrams
- Software system 1
  - System context diagrams
  - Container context diagrams
  - Component context diagrams
  - Dynamic diagrams
  - Deployment diagrams
- Software system 2
  - System context diagrams
  - Container context diagrams
  - Component context diagrams
  - Dynamic diagrams
  - Deployment diagrams
- etc

A viewset property named `structurizr.sort` can be used to change the sort order:

- `key`: sort by view key
- `type`: sort by view type (e.g. keep all system context views together)
- `created`: sort by creation order (e.g. the order in which views are defined in your DSL)

For example, with the DSL:

```
workspace {

    model {
        ...
    }

    views {
        properties {
            "structurizr.sort" "created"
        }
    }

}
```