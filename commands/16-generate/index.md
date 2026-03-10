---
layout: default
parent: Commands
title: generate
nav_order: 16
has_children: false
permalink: /generate
has_toc: false
---

# generate

> This feature is only available by building from source or using the `structurizr/structurizr:preview` Docker image.

## system-landscape

The `system-landscape` subcommand provides a way to merge a number of workspaces to generate a system landscape workspace.

### Options

- `-input`: The path to the workspace JSON/DSL files (required).
- `-output`: The path of output workspace (required). If a directory is specified, the resulting file is named `workspace.json` in that directory.
- `-include`: Include filename filter as a regex (optional; defaults to `.*workspace.(json|dsl)`).
- `-exclude`: Exclude filename filter as a regex (optional; defaults to an empty string).
- `-relationships`: Whether to only include the `first` relationship between two elements, or `all` relationships between them.

### Example

Generate a system landscape workspace from a directory of JSON workspaces (e.g. pulled from a [server](/server) installation):

```
generate system-landscape -input /path/to/workspaces -output /path/to/system-landscape.json
```