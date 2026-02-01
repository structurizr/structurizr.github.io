---
layout: default
title: Workspace sharing
parent: server
nav_order: 12
permalink: /server/workspace-sharing
---

> This feature is not available in the open core - see [server](/server) for details.

# Workspace sharing

When [authentication is disabled](/server/authentication/none), anybody with access to your Structurizr server has read and write access to all workspaces. Enabling [authentication](/server/authentication) changes this behaviour, and the workspace can only be accessed by authenticated users who have access to the workspace via the [role-based access](/server/role-based-access) mechanism. This is the default for new workspaces.

You can additionally provide read-only access to a workspace by enabling a public link or a sharing link via the settings page of the workspace:  

- __Public link__: A read-only version of the workspace is accessible to anybody who has access to your Structurizr server. Workspaces that have the public link enabled will appear on the Structurizr server home page and included in the full-text search results when a user is unauthenticated.
- __Sharing link__: A read-only version of the workspace is accessible via a URL that includes a hard to guess random UUID token in the URL. Workspaces that have the sharing link enabled will _not_ appear on the Structurizr server home page or included in the full-text search results when a user is unauthenticated.

