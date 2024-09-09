---
layout: default
title: Workspace versioning
parent: Structurizr on-premises
nav_order: 10
permalink: /onpremises/workspace-versioning
---

# Workspace versioning

Structurizr retains previous versions of your workspaces, enabling you to (for example) rollback layout
changes to your diagrams.

## Viewing a previous version

To view a previous version, open the workspace summary page for your workspace, select a version from the dropdown list,
and click the "Load version" button. A label will be displayed when viewing content from a previous version of a workspace,
to signify that you are not looking at the latest version.

## Reverting to a previous version

To revert to a previous version, click the "Revert to" button on the workspace summary page when viewing an older
version of the workspace. If you don't see this button, check that the workspace isn't locked.
Alternatively, opening and saving a previous version of a workspace (e.g. in the diagram editor) will
cause that version to be the latest version once again.

## Notes

- The number of retained versions can be [configured](/onpremises/configuration) via a property named `structurizr.maxWorkspaceVersions`.
- Diagram thumbnails are not stored for previous workspace versions.