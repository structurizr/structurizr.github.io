---
layout: default
parent: Commands
title: regenerate-apikey
nav_order: 17
has_children: false
permalink: /regenerate-apikey
has_toc: false
---

# regenerate-apikey

The `regenerate-apikey` command provides a way to regenerate the API key for a Structurizr [server](/server) workspace.

### Options

- `-id`: The workspace ID (required)
- `-key`: The workspace or admin API key (required if authentication is enabled on the server)
- `-url`: The Structurizr API URL (required)

## Example

To regenerate the API key for a Structurizr workspace:

```
regenerate-apikey -url https://structurizr.example.com/api -id 1234 -key 1234567890
```