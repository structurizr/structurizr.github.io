---
layout: default
parent: Commands
title: branches
nav_order: 7
has_children: false
permalink: /branches
has_toc: false
---

# branches

The `branches` command allows you to list the branches associated with a Structurizr [server](/server) workspace.

## Options

- -id: The workspace ID (required)
- -key: The workspace or admin API key (required if authentication is enabled on the server)
- -url: The Structurizr API URL (required)

## Example

To list all branches for a Structurizr workspace:

```
branches -url https://structurizr.example.com/api -id 1234 -key 1234567890
```