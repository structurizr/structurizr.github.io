---
layout: default
parent: Commands
title: pull
nav_order: 6
has_children: false
permalink: /pull
has_toc: false
---

# pull

The `pull` command allows you to pull one or more workspaces from a Structurizr [server](/server).

## Options

- `-id`: The workspace ID (optional; integer workspace ID).
- `-key`: The workspace or admin API key (required if authentication is enabled on the server).
- `-url`: The Structurizr API URL (required).
- `-branch`: Branch name (optional).
- `-passphrase`: The passphrase to use (optional; only required if client-side encryption enabled on the workspace).
- `-output`: Relative or absolute path to an output directory (optional).
- `-json`: JSON output (optional).

## Example

To pull the content of a single Structurizr workspace and store it in a file:

```
pull -url https://structurizr.example.com/api -id 1234 -key 1234567890
```

To pull the content of a single Structurizr workspace and write to stdout:

```
pull -url https://structurizr.example.com/api -id 1234 -key 1234567890 -json
```

To pull the content of all workspaces (this requires the admin API key):

```
pull -url https://structurizr.example.com -key 1234567890
```