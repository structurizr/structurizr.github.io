---
layout: default
nav_order: 2
parent: Commands
title: local
permalink: /local
has_children: true
has_toc: false
---

# local

The `local` command provides a way to view diagrams and modify their layout. It's equivalent to the previous Structurizr Lite tooling.

> Please note that `local` is not designed for collaboration, so it is only available to access via `localhost` URLs. The Structurizr [server](/server) is designed to run on a server.

By default, Structurizr will look for a `workspace.dsl` and `workspace.json` file in your Structurizr data directory, in that order, and use the file it finds first. Any changes made to the `workspace.dsl` or `workspace.json` file will be reflected when you refresh your web browser. You can also configure [multi-workspace mode](/local/configuration#multi-workspace-mode).

## local vs server

The `local` command is for viewing diagrams and modifying their layout on your own computer. Access is only permitted via `localhost` URLs, there are no authentication, authorisation, or collaboration features. The `server` command is designed to run on a server to publish workspaces to a wider audience, with workspace content being pushed to the server via the workspace API.