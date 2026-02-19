---
layout: default
parent: Commands
title: delete
nav_order: 8
has_children: false
permalink: /delete
has_toc: false
---

# delete

The `delete` command allows you to delete a workspace or branch from a Structurizr [server](/server).

## Options

- `-id`: The workspace ID (required).
- `-key`: The workspace or admin API key (required if authentication is enabled on the server).
- `-url`: The Structurizr API URL (required).
- `-branch`: The branch name (optional).
- `-force`: Force delete (non-interactive/quiet mode).

## Notes

The admin API key is required when deleting a workspace.

## Example

To delete the `dev` branch:

```
delete -url https://structurizr.example.com/api -id 1234 -key 1234567890 -branch dev
```

To delete a workspace:

```
delete -url https://structurizr.example.com/api -id 1234 -key 1234567890
```