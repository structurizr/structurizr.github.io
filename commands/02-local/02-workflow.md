---
layout: default
permalink: /local/workflow
title: Workflow
parent: local
nav_order: 2
has_children: false
has_toc: false
---

# Workflow

1. Create your workspace using the DSL, as a file named `workspace.dsl` in your Structurizr data directory. Any included files (documentation, ADRs, icons, etc) should also be accessible from this directory.
2. Start Structurizr `local`.
3. Open your web browser and navigate to [http://localhost:8080](http://localhost:8080) to see your workspace content.
4. Modify the diagram layout as needed, and save your workspace via the UI. Structurizr will write a JSON version of your workspace into your Structurizr data directory to a file named `workspace.json` - this includes your workspace and the layout information for your diagrams.
5. Make any changes as required to the content of your `workspace.dsl` file, and save it.
6. Refresh your web browser to see the changes.

For a faster feedback loop you can use the [auto-refresh](/local/configuration#auto-refresh) configuration in conjunction with a web browser running split-screen. VS Code's Simple Browser is sufficient for this purpose.

![VS Code showing the DSL and diagrams](/images/vscode.png)
