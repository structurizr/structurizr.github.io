---
layout: default
title: Admin users
parent: server
nav_order: 11
permalink: /server/admin-users
---

> This feature is not available in the open core - see [server](/server) for details.

# Admin users

The admin users feature enables you to further restrict who can perform the following actions:

- Create a workspace
- Delete a workspace
- Regenerate the workspace API key
- Configure the public and sharing links for a workspace(*)
- Configure role-based access for a workspace(*)

(*) when the admin users feature is enabled, these functions are also disabled via the workspace API

Admin users additionally have read/write access to _all_ workspaces.

## Configuration

| Name                     | Value                                                                                                                                                                                               |
|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `structurizr.admin`      | A comma separated list of usernames or roles specifying which authenticated users have admin user access | 