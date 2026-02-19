---
layout: default
parent: Commands
title: unlock
nav_order: 10
has_children: false
permalink: /unlock
has_toc: false
---

# unlock

The `unlock` command allows you to unlock a Structurizr [server](/server) workspace.

## Options

- `-id`: The workspace ID (required)
- `-key`: The workspace or admin API key (required if authentication is enabled on the server)
- `-url`: The Structurizr API URL (required)

## Example

To unlock a Structurizr workspace:

```
unlock -url https://structurizr.example.com/api -id 1234 -key 1234567890
```