---
layout: default
title: 1. Create with local, publish to server
parent: Getting started
nav_order: 1
has_children: false
permalink: /getting-started/local-server
has_toc: false
---

# 1. Create with local, publish to server

1. Create and edit workspaces on your computer using the [Structurizr DSL](/dsl) and a text-editor/IDE, using [local](/local) to view your diagrams and modify their layout - see [step-by-step instructions](/local/workflow).
2. Store the `workspace.dsl` and `workspace.json` files in version control (e.g. git).
3. Publish workspaces to a Structurizr [server](/server) via the [workspace API](/server/workspace-api) and the [push](/push) command.

## Rating

- Workspace editing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) (fast feedback loop, all Structurizr DSL features are available, workspaces are stored in version control)
- Diagram viewing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) (interactive diagrams, double-click to zoom, etc)

## Benefits

- Workspace editors can use [the full set of Structurizr DSL features](/dsl/parser) because the Structurizr DSL parser runs on their computer.
- [local](/local) provides the quickest feedback loop, especially when running your text editor/IDE and web browser split screen in conjunction with the [auto-refresh option](/local/configuration#auto-refresh).
- The `workspace.dsl` and `workspace.json` files can easily be stored in version control.
- Diagram viewers only require a web browser to view the diagrams.
- Diagrams can be embedded into existing websites using an [iframe embed](/server/diagrams/iframe-embed) or [image embed](/server/diagrams/image-embed).

## Considerations

- Workspace editors require Docker or Java 21+ installed to run [local](/local).
- Requires a [server](/server) to be installed somewhere, accessible to all diagram viewers.
- The `workspace.json` file created by `local` needs to be pushed to the server via the [workspace API](/server/workspace-api), either manually or via a build pipeline.
