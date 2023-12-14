---
layout: default
title: Properties
nav_order: 50
parent: Structurizr UI
permalink: /ui/properties
has_toc: false
---

# Properties

There are a number of properties that can be used to customise a few parts of the Structurizr UI, as follows:

| Property name                          | Location        | Description                                                                                                                                                                                                                                                                     |
|----------------------------------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `structurizr.locale`                   | Viewset         | Provides a way to customise how last modified dates on diagrams, documentation, and decisions are rendered in the browser (e.g. `en-GB` for British English).                                                                                                                   |
| `structurizr.timezone`                 | Viewset         | Provides a way to customise which timezone should be used when displaying last modified dates on diagrams, documentation, and decisions in the browser (e.g. `UTC`, `Europe/London`, `Australia/Sydney`).                                                                       |
| `structurizr.sort`                     | Viewset         | Provides a way to specify how diagrams should be [sorted](/ui/diagrams/sorting) - `key`, `type`, or `created`.                                                                                                                                                                  |
| `structurizr.tooltips`                 | Viewset or view | Provides a way to automatically enable (`true`) or disable (`false`) diagram tooltips.                                                                                                                                                                                          |
| `structurizr.enterpriseBoundary`       | View            | Include (`true`) or exclude (`false`) the enterprise boundary on system landscape, system context, and unscoped dynamic diagrams.                                                                                                                                               |
| `structurizr.groupSeparator`           | Model           | Element groups are defined as a single string property on the element named group, and defining [nested groups](/dsl/cookbook/groups/#nested-groups) requires a separator to be defined that will be used to split this single string into a set of hierarchical/nested groups. |
| `structurizr.groups`                   | View            | Include (`true`; default) or exclude (`false`) groups.                                                                                                                                                                                                                          |
| `structurizr.softwareSystemBoundaries` | View            | Include (`true`) or exclude (`false`; default) software system boundaries on component diagrams.                                                                                                                                                                                |

For example, to force the last modified date to be in English, with the DSL:

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
