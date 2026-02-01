---
layout: default
title: 5. Create with server, view with server
parent: Getting started
nav_order: 5
has_children: false
permalink: /getting-started/server
has_toc: false
---

# 5. Create with server, view with server

1. Create and edit workspaces using the [Structurizr DSL](/dsl) in the [browser-based DSL editor](/server/configuration#dsl-editor) provided by the Structurizr [server](/server).
2. View diagrams via the Structurizr [server](/server).

## Rating

- Workspace editing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star.svg) (fast feedback loop, limited Structurizr DSL features are available, workspaces are not stored in version control)
- Diagram viewing: ![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg)![](/images/bootstrap-icons/star-fill.svg) (interactive diagrams, double-click to zoom, etc)

## Benefits

- Workspace editors only require a web browser.
- Diagram viewers only require a web browser.
- Diagrams can be embedded into existing websites using an [iframe embed](/server/diagrams/iframe-embed) or [image embed](/server/diagrams/image-embed).

## Considerations

- Workspace editors can only use [a limited set of Structurizr DSL features](/dsl/parser) because the Structurizr DSL parser runs on the Structurizr server, which doesn't have access to their local file system.
- Requires a [server](/server) to be installed somewhere, accessible to all workspace editors and diagram viewers.
- The `workspace.dsl` and `workspace.json` files are not stored in version control.
- Requires your server administrator to [enable the browser-based DSL editor](/server/configuration#dsl-editor).
- The browser-based DSL editor is very limited (e.g. there are no code completion features).
