---
layout: default
title: Admin API
parent: server
nav_order: 52
permalink: /server/admin-api
---

> This feature is not available in the open core - see [server](/server) for details.

# Admin API

The admin API provides a way to list, create, and delete workspaces, with the following endpoints:

- GET `/api/workspace` (list workspaces)
- POST `/api/workspace` (create a new workspace)
- DELETE `/api/workspace/{workspaceId}` (delete a workspace)

The admin API is enabled by default when server authentication is disabled,
and disabled by default when server authentication is enabled.

## Configuration

| Name                 | Value                    |
|----------------------|--------------------------|
| `structurizr.apiKey` | A bcrypt encoded API key |

## HTTP headers

Requests should include the following HTTP headers:

- `X-Authorization`: The authorisation header to specify the API key (required when server authentication is enabled)

## Examples

### Authentication is disabled

List workspaces from a Structurizr server running at `https://structurizr.example.com`:

```
curl https://structurizr.example.com/api/workspace
```

Create a new workspace on a Structurizr server running at `https://structurizr.example.com`:

```
curl -X POST https://structurizr.example.com/api/workspace
```

Delete workspace 1234 from a Structurizr server running at `https://structurizr.example.com`

```
curl -X DELETE https://structurizr.example.com/api/workspace/1234
```

### Authentication is enabled

List workspaces from a Structurizr server running at `https://structurizr.example.com`:

```
curl --header "X-Authorization: 1234567890" https://structurizr.example.com/api/workspace
```