---
layout: default
title: Workspace branches
parent: Structurizr cloud service
nav_order: 15
permalink: /cloud/workspace-branches
---

# Workspace branches

__This page describes a feature that is in development...__

The workspace branches feature provides a way to store/publish a number of workspace versions under a single workspace.
For example, you could publish documentation for the live version of your software system on the default (`main`) branch,
while the engineering team could use a `dev` branch to publish documentation for the next version that's in development.

## Creating a branch

There are a couple of ways to create a branch:

1. Use the "Copy to branch" button on the workspace summary page to copy the version you are currently viewing into a new branch.
2. Use the Structurizr CLI to push a workspace to a branch (the branch will be created for you if it does not exist).

## Notes

- This is a paid cloud service feature.
- Branch names must start with a letter (`A-Z`, `a-z`) or number (`0-9`), and may include the following characters afterwards: `a-zA-Z0-9-_.`
- `main` can be used to refer to the default/main branch.
- Branches are only viewable via the authenticated workspace URLs that start `/workspace` (i.e. they are not available via the unauthenticated `/share` URLs).
- Diagram thumbnails are not stored for branches.
- Branches are not included in the search index.
- There are no built-in facilities to merge, rebase, or diff branches. Instead, it's recommended that you create your workspace "as code" and use the facilities provided by your version control system. 