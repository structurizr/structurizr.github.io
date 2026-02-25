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

The `push` command allows you to push the specified DSL/JSON file to a Structurizr [server](/server). The default behaviour is:

- Pull the remote version of the workspace.
- Merge diagram layout information from the remote version into the local version.
- Push the local version, which now includes diagram layout information.

## Options

- `-id`: The workspace ID (required)
- `-key`: The workspace or admin API key (required if authentication is enabled on the server)
- `-workspace`: The path or URL to the workspace JSON/DSL file (optional)
- `-image`: The path to a PNG/JPG/SVG image file (optional)
- `-url`: The Structurizr API URL (required) 
- `-branch`: Branch name (optional)
- `-passphrase`: The passphrase to use (optional; only required if client-side encryption enabled on the workspace)
- `-merge`: Whether to merge layout information from the remote workspace (optional; defaults to `true`)
- `-trim`: Whether to trim the workspace before pushing (optional; defaults to `false`)
- `-archive`: Whether to store the previous version of the remote workspace (optional; default to `true`)

## Notes

 - One of `-workspace` and `-image` must be provided.
 - You will need to use `-merge false` when pushing a workspace to a branch that doesn't exist on your Structurizr server.

## Examples

To push a new version of a workspace defined using the DSL:

```
push -url https://structurizr.example.com/api -id 1234 -key 1234567890 -workspace workspace.dsl
```

To push an image to a workspace (see [server - Images](/server/images) for details):

```
push -url https://structurizr.example.com/api -id 1234 -key 1234567890 -image image.png
```