---
layout: default
title: Workflow
parent: server
nav_order: 3
permalink: /server/workflow
---

# Workflow

The Structurizr server is designed as a way to publish workspaces via a unique URL per workspace, for other people within your team/organisation to view. Structurizr's primary focus is software architecture diagrams, although it does have support for rendering Markdown/AsciiDoc docs and decision records for teams that don't have an existing way to do this. The Structurizr server can either be used on its own, or in conjunction with other tools such as Backstage/Atlassian Confluence/etc via the diagram [iframe embed](/server/diagrams/iframe-embed) or [image embed](/server/diagrams/image-embed) feature.

The general usage pattern is:

1. Create a workspace:
   1. Using the UI (you'll see a "New workspace" link after signing in).
   2. Using the [admin API](/server/admin-api).
2. Create your workspace content:
   1. Pushing a Structurizr DSL file via the [workspace API](/server/workspace-api) using the [push](/push) command (recommended).
   2. Pushing a workspace created using one of the code-based client libraries (e.g. [the Java library](/java)) via the [workspace API](/server/workspace-api).
   3. Using the browser-based DSL editor (disabled by default and not recommended because [it doesn't support the full feature set](/dsl/parser)).
3. View the diagrams, documentation, and decision records via your web browser.

## Note

Please note that, unlike [local](/local), you should not directly modify any files in the server data directory. 