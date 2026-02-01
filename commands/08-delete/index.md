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

The `delete` command allows you to delete a branch associated with a Structurizr [server](/server) workspace.

## Options

- -id: The workspace ID (required)
- -key: The workspace or admin API key (required if authentication is enabled on the server)
- -url: The Structurizr API URL (required)
- -branch: The branch name (required)

## Example

To delete the `dev` branch for a Structurizr workspace:

```
delete -url https://structurizr.example.com/api -id 1234 -key 1234567890 -branch dev
```