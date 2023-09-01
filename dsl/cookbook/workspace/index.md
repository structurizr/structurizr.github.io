---
layout: default
title: Workspace
nav_order: 1
parent: Cookbook
grand_parent: Structurizr DSL
has_children: true
permalink: /dsl/cookbook/workspace
---

# Workspace

In Structurizr terminology, a "workspace" is a wrapper for a software architecture model (elements and relationships) and views.

```
workspace "Name" "Description" {

    model {
    }
    
    views {
    }
    
}
```

A workspace can be given a name and description, although these are only used by the [Structurizr cloud service and on-premises installation](https://structurizr.com) - you don't need to specify a name/description if you're exporting views to one of the export formats (PlantUML, Mermaid, etc).

## Links

- [DSL language reference - workspace](/dsl/language#workspace)
- [Example](http://structurizr.com/dsl?src=https://docs.structurizr.com/dsl/cookbook/workspace/example-1.dsl)
