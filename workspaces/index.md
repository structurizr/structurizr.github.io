---
layout: default
title: Workspaces
nav_order: 8
has_children: true
permalink: /workspaces
has_toc: false
---

# Workspaces

## What is a "workspace"?

In Structurizr, a __workspace__ is the wrapper for:

- A software architecture model (elements and relationships).
- Views (that become rendered as diagrams).
- Markdown/AsciiDoc documentation.
- Markdown/AsciiDoc architecture decision records.

The recommended approach is that a workspace contains the model, views, documentation, and decisions for a __single software system__ - see [Scope](/workspaces/scope) for more details.

## Workspace files

Structurizr uses two file types to represent workspaces:

- `workspace.dsl`: Your workspace source, created using the [Structurizr DSL](/dsl). This defines your software architecture model and views, along with any processing instructions (e.g. [scripts](/dsl/scripts), [plugins](/dsl/plugins), [documentation](/dsl/docs), [ADRs](/dsl/adrs), etc).
- `workspace.json`: The "compiled" version of your workspace source, additionally including diagram layout information from the [diagram editor](/server/diagrams/editor). This is an [open JSON data format](/openapi) and is not designed to be edited by hand. For the best performance, this file should be kept small (not more than 1-2MB).
