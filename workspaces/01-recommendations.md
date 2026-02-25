---
layout: default
title: Recommendations
parent: Workspaces
nav_order: 1
permalink: /workspaces/recommendations
---

# Recommendations

## Scope

A workspace should contain the model, views, documentation, and decisions for a __single software system__ - see [Scope](/workspaces/scope) for more details.

## Performance

For the best performance, `workspace.json` files should be kept small (not more than 1-2MB). To reduce the size of your workspaces:

1. Don't model every software system in a single workspace - see [enterprise usage pattern](https://www.patreon.com/collection/1351911) for an approach to model a landscape of connected software systems across multiple workspaces.
2. Reduce or minimise the number of images embedded in your workspace - [local](/local/images) and [server](/server/images) both provide a way to serve images without embedding them into your workspace.