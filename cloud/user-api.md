---
layout: default
title: User API
parent: Structurizr cloud service
nav_order: 10
permalink: /cloud/user-api
---

# User API

In addition to the [workspace API](/cloud/workspace-api) for putting/getting workspaces,
there's also a rudimentary API that can be used to list all owned workspaces, and create new workspaces.

## User API key

To use the user API, you'll first need to generate a user API key. This can be done via the "Regenerate user API key" link on your dashboard.

## Listing owned workspaces

To list all of the workspaces owned by a user, issue a HTTP `POST` request to `https://api.structurizr.com/user/workspaces` with the following parameters:

- `username`: your Structurizr username (required).
- `apiKey`: your user API key (required).

The response is a JSON document listing all workspaces owned by the specified user.

## Creating a new workspace

Send a HTTP `POST` request to `https://api.structurizr.com/user/workspaces/create` with the following parameters:

- `username`: your Structurizr username (required).
- `apiKey`: your user API key (required).
- `name`: the name of the workspace (optional).

The response is a JSON document listing the properties of the newly created workspace, or an error if something went wrong.

## Notes

This is a paid cloud service feature.