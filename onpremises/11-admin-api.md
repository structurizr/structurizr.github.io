---
layout: default
title: Admin API
parent: Structurizr on-premises
nav_order: 11
permalink: /onpremises/admin-api
---

# Admin API

The admin API provides a way to create, delete, and list workspaces.
This API is disabled by default, and can be enabled by adding a property named
`structurizr.apiKey` to your `structurizr.properties` file - see [Configuration](configuration) for more details.

The API key should be specified via the `X-Authorization` header.

## Get all workspaces

Gets the metadata for all workspaces (i.e. ID, name, API key/secret pair, etc).

- `GET` `/api/workspace`

Example:

```
curl --header "X-Authorization: 1234567890" http://localhost:8080/api/workspace
```

## Create workspace

Creates a new workspace.

- `POST` `/api/workspace`

Example:

```
curl -X POST --header "X-Authorization: 1234567890" http://localhost:8080/api/workspace
```

## Delete workspace

Deletes the specified workspace.

- `DELETE` `/api/workspace/{workspaceId}`

Example: 

```
curl -X DELETE --header "X-Authorization: 1234567890" http://localhost:8080/api/workspace/1234
```
