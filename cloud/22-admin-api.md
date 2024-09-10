---
layout: default
title: Admin API
parent: Structurizr cloud service
nav_order: 22
permalink: /cloud/admin-api
---

# Admin API

The admin API provides a way to create, delete, and list workspaces.
To use the user API, you'll first need to generate
a user API key. This can be done via the "Regenerate user API key" link on your dashboard.

Your cloud service username and API key should be specified via the `X-Authorization` header:

- `X-Authorization: username:apiKey`

## Get all workspaces

Gets the metadata for all workspaces (i.e. ID, name, API key/secret pair, etc).

- `GET` `https://api.structurizr.com/workspace`

Example:

```
curl --header "X-Authorization: user@example.com:1234567890" https://api.structurizr.com/workspace
```

## Create workspace

Creates a new workspace.

- `POST` `https://api.structurizr.com/workspace`

Example:

```
curl -X POST --header "X-Authorization: user@example.com:1234567890" https://api.structurizr.com/workspace
```

## Delete workspace

Deletes the specified workspace.

- `DELETE` `https://api.structurizr.com/workspace/{workspaceId}`

Example:

```
curl -X DELETE --header "X-Authorization: user@example.com:1234567890" https://api.structurizr.com/workspace/1234
```

## Notes

- This is a paid cloud service feature.