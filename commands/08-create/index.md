---
layout: default
parent: Commands
title: create
nav_order: 8
has_children: false
permalink: /create
has_toc: false
---

# create

The `create` command allows you to create a workspace on a Structurizr [server](/server).

## Options

- `-key`: The admin API key (required if authentication is enabled on the server).
- `-url`: The Structurizr API URL (required).
- `-json`: JSON output (optional).

## Example

To create a workspace:

```
create -url https://structurizr.example.com/api -key 1234567890
```