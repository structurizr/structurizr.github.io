---
layout: default
title: 3. Create with local, export to static site
parent: Getting started
nav_order: 3
has_children: false
permalink: /getting-started/local-export-static-site
has_toc: false
---

# 3. Create with local, export to static site

1. Create and edit workspaces on your computer using the [Structurizr DSL](/dsl) and a text-editor/IDE, using [local](/local) to view your diagrams and modify their layout - see [step-by-step instructions](/local/workflow).
2. Store the `workspace.dsl` and `workspace.json` files in version control (e.g. git).
3. [export](/export) the workspace to a [static site](/export/static-site), for inclusion in an existing website.

## Rating

- Workspace editing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) (fast feedback loop, all Structurizr DSL features are available, workspaces are stored in version control)
- Diagram viewing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg) (interactive diagrams, double-click to zoom, etc but limited when compared to the diagram viewer in `local` and `server`)

## Benefits

- Workspace editors can use [the full set of Structurizr DSL features](/dsl/parser) because the Structurizr DSL parser runs on their computer.
- [local](/local) provides the quickest feedback loop, especially when running your text editor/IDE and web browser split screen in conjunction with the [auto-refresh option](/local/configuration#auto-refresh).
- The `workspace.dsl` and `workspace.json` files can easily be stored in version control.
- Doesn't require the Structurizr [server](/server) to be installed.
- Diagram viewers only require a web browser to view the diagrams.

## Considerations

- Workspace editors require Docker or Java 21+ installed to run [local](/local).
- The static site has interactive diagrams, but they are not as full-featured as the [diagram viewer](/server/diagrams/viewer) found in `local` and `server`.
- The static site needs to be regenerated and republished whenever the workspace source changes.

