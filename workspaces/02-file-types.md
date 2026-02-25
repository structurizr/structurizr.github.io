---
layout: default
title: DSL vs JSON
parent: Workspaces
nav_order: 2
permalink: /workspaces/file-types
---

# File types

Structurizr uses two file types to represent workspaces:

## workspace.dsl

Your workspace source, created using the [Structurizr DSL](/dsl). This defines your software architecture model and views, along with any processing instructions (e.g. [scripts](/dsl/scripts), [plugins](/dsl/plugins), [documentation](/dsl/docs), [ADRs](/dsl/adrs), etc).

## workspace.json

The "compiled" version of your workspace source, additionally including diagram layout information from the [diagram editor](/server/diagrams/editor). This is an [open JSON data format](/openapi) and is not designed to be edited by hand.