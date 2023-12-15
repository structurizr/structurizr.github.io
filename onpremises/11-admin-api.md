---
layout: default
title: Admin API
parent: Structurizr on-premises
nav_order: 12
permalink: /onpremises/admin-api
---

# Admin API

The admin API provides a way to create, delete, and list workspaces.
This API is disabled by default, and can be enabled by adding a property named
`structurizr.apiKey` to your `structurizr.properties` file - see [Configuration](configuration) for more details.

The following endpoints are available:

- GET `/api/workspace` (list all workspaces)
- POST `/api/workspace` (create workspace)
- DELETE `/api/workspace/{workspaceId}` (delete workspace)

The API key should be specified via the `X-Authorization` header.
For example, the following `curl` command could be used to get a list of workspaces:

```
curl --header "X-Authorization: 123456789" http://localhost:8080/api/workspace
```