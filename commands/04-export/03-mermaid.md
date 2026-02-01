---
layout: default
permalink: /export/mermaid
title: Mermaid
parent: export
nav_order: 3
has_children: false
has_toc: false
---

# Mermaid

```
export -format mermaid ...
```

Generates Mermaid diagram definitions. The following view types are supported:

- System landscape
- System context
- Containers
- Components
- Dynamic (collaboration and sequence diagram)
- Deployment

There are a number of properties that can be set to customise the exports, as follows:

- `mermaid.title`: `true` (default) to include diagram titles, `false` to exclude diagram titles.
- `mermaid.sequenceDiagram`: `true` to generate a UML sequence diagram, `false` (default) to generate a collaboration diagram (dynamic views only).

These properties can either be set on individual views, or on the view set to apply to all views.

## Mermaid configuration

Your Mermaid configuration will need to include `"securityLevel": "loose"` to render the diagrams correctly. See [Mermaid - Configuration - securityLevel](https://mermaid.js.org/config/usage.html#securitylevel) for more details.