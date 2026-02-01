---
layout: default
title: 4. Create with DSL, export to PlantUML/Mermaid
parent: Getting started
nav_order: 4
has_children: false
permalink: /getting-started/export-diagrams-as-code
has_toc: false
---

# 4. Create with DSL, export to PlantUML/Mermaid

1. Create and edit workspaces on your computer using the [Structurizr DSL](/dsl) and a text-editor/IDE.
2. Store the `workspace.dsl` and `workspace.json` files in version control (e.g. git).
3. [export](/export) the workspace to [PlantUML](/export/plantuml) or [Mermaid](/export/mermaid).
4. Share diagrams via your existing documentation workflow (e.g. GitHub Markdown, Confluence, etc).

## Summary

- Workspace editing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg) (all Structurizr DSL features are available, workspaces are stored in version control, slower feedback because an export step is required before diagrams can be rendered with PlantUML/Mermaid)
- Diagram viewing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg)![](/images/bootstrap-icons/star.svg) (static diagrams, automatic layout only, diagram look and feel is basic when compared to the Structurizr diagram viewer)

## Benefits

- Workspace editors can use [the full set of Structurizr DSL features](/dsl/parser) because the Structurizr DSL parser runs on their computer.
- The `workspace.dsl` and `workspace.json` files can easily be stored in version control.
- Multiple PlantUML/Mermaid diagrams can be created from a single Structurizr DSL file, thereby keeping all diagrams in sync when Structurizr DSL changes are made.
- Automatic diagram layout.
- Mermaid diagrams are rendered automatically in many tools, for example in GitHub `README.md` files. 

## Considerations

- Workspace editors require Docker or Java 21+ installed to run [export](/export).
- Doesn't require the Structurizr [server](/server) to be installed.
- The PlantUML and Mermaid diagrams don't look as polished as those rendered by the [diagram viewer](/server/diagrams/viewer) found in `local` and `server`.
- PlantUML/Mermaid diagrams are static, so there is no "double-click to zoom" feature, no tooltips, etc.
- Diagram layout cannot be modified.

### PlantUML examples

![PlantUML via the export command](/images/plantuml.png)

![C4-PlantUML via the export command](/images/c4-plantuml.png)

### Mermaid example

![Mermaid via the export command](/images/mermaid.png)
