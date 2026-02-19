---
layout: default
parent: Commands
title: merge
nav_order: 11
has_children: false
permalink: /merge
has_toc: false
---

# merge

The `merge` command allows you to merge the layout information from one workspace into another.

## Options

- `-workspace`: The path or URL to the workspace JSON/DSL file (required)
- `-layout`: The path or URL to the workspace JSON file that includes layout information (required)
- `-view`: The key of the view to merge layout information for (optional; default is all views in workspace)
- `-output`: Path and name of an output file (required)

## Examples

To merge the layout from one JSON workspace into another:

```
merge -workspace workspace-without-layout.json -layout workspace-with-layout.json -output workspace.json
```