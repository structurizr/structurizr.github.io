---
layout: default
title: 2. Create with local, view with local
parent: Getting started
nav_order: 2
has_children: false
permalink: /getting-started/local-local
has_toc: false
---

# 2. Create with local, view with local

1. Create and edit workspaces on your computer using the [Structurizr DSL](/dsl) and a text-editor/IDE, using [local](/local) to view your diagrams and modify their layout - see [step-by-step instructions](/local/workflow).
2. Store the `workspace.dsl` and `workspace.json` files in version control (e.g. git).
3. Provide instructions for team members of where to access the `workspace.dsl` and `workspace.json` files, and how to start [local](/local) so they can view/edit the diagrams too.

## Rating

- Workspace editing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) (fast feedback loop, all Structurizr DSL features are available, workspaces are stored in version control)
- Diagram viewing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) (interactive diagrams, double-click to zoom, etc)

## Benefits

- Workspace editors can use [the full set of Structurizr DSL features](/dsl/parser) because the Structurizr DSL parser runs on their computer.
- [local](/local) provides the quickest feedback loop, especially when running your text editor/IDE and web browser split screen in conjunction with the [auto-refresh option](/local/configuration#auto-refresh).
- The `workspace.dsl` and `workspace.json` files can easily be stored in version control.
- Doesn't require the Structurizr [server](/server) to be installed.

## Considerations

- Workspace editors require Docker or Java 21+ installed to run [local](/local).
- Diagram viewers require Docker or Java 21+ installed to run [local](/local).
- Diagram viewers require access to version control.
