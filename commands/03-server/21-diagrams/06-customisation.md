---
layout: default
title: Customisation
grand_parent: server
parent: Diagrams
nav_order: 6
permalink: /server/diagrams/customisation
---

# Customisation

There are a number of properties that can be used to customise diagrams, as follows:

| Property name                          | Location        | Description                                                                                                                                                                                                                                                                     |
|----------------------------------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `structurizr.locale`                   | Viewset         | Provides a way to customise how last modified dates on diagrams, documentation, and decisions are rendered in the browser (e.g. `en-GB` for British English).                                                                                                                   |
| `structurizr.timezone`                 | Viewset         | Provides a way to customise which timezone should be used when displaying last modified dates on diagrams, documentation, and decisions in the browser (e.g. `UTC`, `Europe/London`, `Australia/Sydney`).                                                                       |
| `structurizr.sort`                     | Viewset         | Provides a way to specify how diagrams should be [sorted](/server/diagrams/viewer#diagram-order) - `key`, `type`, or `created`.                                                                                                                                                                  |
| `structurizr.tooltips`                 | Viewset or view | Provides a way to automatically enable (`true`) or disable (`false`) diagram tooltips.                                                                                                                                                                                          |
| `structurizr.title`                    | Viewset or view | Provides a way to include (`true`; default) or exclude (`false`) the diagram title.                                                                                                                                                                                             |
| `structurizr.description`              | Viewset or view | Provides a way to include (`true`; default) or exclude (`false`) the diagram description.                                                                                                                                                                                       |
| `structurizr.metadata`                 | Viewset or view | Provides a way to include (`true`; default) or exclude (`false`) the diagram metadata (last modified date and version).                                                                                                                                                         |
| `structurizr.groups`                   | View            | Include (`true`; default) or exclude (`false`) groups.                                                                                                                                                                                                                          |

For example, to force the last modified date to be in English, if you're using the DSL:

```
workspace {
    
    ...
    
    views {
        properties {
            "structurizr.locale" "en-GB"
        }
    }

}
```
