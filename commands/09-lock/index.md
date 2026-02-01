---
layout: default
parent: Commands
title: lock
nav_order: 9
has_children: false
permalink: /lock
has_toc: false
---

# lock

The `lock` command allows you to lock a Structurizr [server](/server) workspace.

## Options

- -id: The workspace ID (required)
- -key: The workspace or admin API key (required if authentication is enabled on the server)
- -url: The Structurizr API URL (required)

## Example

To lock a Structurizr workspace:

```
lock -url https://structurizr.example.com/api -id 1234 -key 1234567890
```