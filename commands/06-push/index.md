---
layout: default
nav_order: 5
parent: Commands
title: push
has_children: false
permalink: /push
has_toc: false
---

# push

The `push` command allows you to push the specified DSL/JSON file to a Structurizr [server](/server).

## Options

- -id: The workspace ID (required)
- -key: The workspace or admin API key (required if authentication is enabled on the server)
- -workspace: The path or URL to the workspace JSON/DSL file (required)
- -url: The Structurizr API URL (required) 
- -branch: Branch name (optional)
- -passphrase: The passphrase to use (optional; only required if client-side encryption enabled on the workspace)
- -merge: Whether to merge layout information from the remote workspace (optional; defaults to `true`)
- -archive: Whether to store the previous version of the remote workspace (optional; default to `true`)

## Examples

To push a new version of a workspace defined using the DSL:

```
push -url https://structurizr.example.com/api -id 1234 -key 1234567890 -workspace workspace.dsl
```