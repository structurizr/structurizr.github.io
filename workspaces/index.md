---
layout: default
title: Workspaces
nav_order: 5
has_children: true
permalink: /workspaces
has_toc: false
---

# Workspaces

In Structurizr, a __workspace__ is the wrapper for your software architecture model, views, and supplementary documentation.
The recommendation is that a workspace contains the model, views, and documentation for a __single software system__ -
see [Workspaces - Scope](/workspaces/scope) for more details.

Unlike most modelling tools, Structurizr separates workspace authoring from workspace rendering via its
[open JSON data format](https://github.com/structurizr/json).

![](../images/authoring-vs-rendering.png)

## Troubleshooting

See [Workspaces - Scope - Troubleshooting](/workspaces/scope#troubleshooting) if you are seeing error messages like
`Strict workspace scope validation has been enabled ... Unscoped workspaces are not permitted`.