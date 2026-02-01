---
layout: default
title: Workspace API
parent: server
nav_order: 51
permalink: /server/workspace-api
---

# Workspace API

The Structurizr server provides a JSON/HTTP API for workspaces, with the following endpoints:

- GET `/api/workspace/{workspaceId}` (get workspace - [pull](/pull))
- PUT `/api/workspace/{workspaceId}` (put workspace - [push](/push))
- GET `/api/workspace/{workspaceId}/branch` (get branches - [branches](/branches))
- DELETE `/api/workspace/{workspaceId}/branch/{name}` (delete branch - [delete](/delete))
- PUT `/api/workspace/{workspaceId}/lock` (lock workspace - [lock](/lock))
- DELETE `/api/workspace/{workspaceId}/lock` (unlock workspace - [unlock](/unlock))

## HTTP headers

Requests should include the following HTTP headers:

- `X-Authorization`: The authorisation header to specify the API key (required when server authentication is enabled)

PUT requests must also include the following HTTP headers:

- `Content-Type: application/json; charset=UTF-8`

## Workspace JSON schema

See [OpenAPI](/openapi) for details of the JSON schema.

## Examples

### Authentication disabled

Get workspace 123 from a Structurizr server running at `https://structurizr.example.com`:

```
curl https://structurizr.example.com/api/workspace/123
```

Put workspace 123 to a Structurizr server running at `https://structurizr.example.com`:

```
curl -T workspace.json https://structurizr.example.com/api/workspace/123 -H "Content-Type: application/json"
```

### Authentication enabled

Get workspace 123 from a Structurizr server running at `https://structurizr.example.com`:

```
curl https://structurizr.example.com/api/workspace/123 -H "X-Authorization: 1234567890"
```

## Notes

Please note that diagrams are rendered client-side (i.e. in your web browser), so this API __does not__ provide access to diagrams. An automated export is only possible using a web browser in conjunction with an automation framework such as headless Chrome and Puppeteer. See the [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) for an example script.