---
layout: default
title: Usage
parent: Structurizr on-premises
nav_order: 4
permalink: /onpremises/usage
---

# Usage

The on-premises installation is designed as a way to "publish" diagrams and documentation (a "workspace")
via a unique URL per workspace, for other people within your organisation to view. The general usage pattern is:

1. Create a workspace:
   1. Using the UI (you'll see a "New workspace" link after signing in).
   2. Using the [admin API](/onpremises/admin-api).
2. Author your workspace:
   1. Pushing a Structurizr DSL file via the [workspace API](/onpremises/workspace-api) using the [Structurizr CLI push command](/cli/push) (recommended).
   2. Pushing a workspace created using one of the code-based client libraries (e.g. [Structurizr for Java](https://github.com/structurizr/java)) via the [workspace API](/onpremises/workspace-api).
   3. Using the browser-based DSL editor (not recommended - [it doesn't support the full feature set](https://structurizr.com/help/dsl#comparison)).
3. View the diagrams and documentation via your web browser.

Please note that, unlike [Structurizr Lite](/lite/usage), you should not directly modify any `workspace.json` files in the data directory. 