---
layout: default
title: Role-based access
parent: server
nav_order: 10
permalink: /server/role-based-access
---

> This feature is not available in the open core - see [server](/server) for details.

# Role-based access

When [authentication is disabled](/server/authentication/none), anybody with access to your Structurizr server has read and write access to all workspaces. Enabling [authentication](/server/authentication) changes this behaviour, and the workspace can only be accessed by authenticated users who have access to the workspace via the role-based access mechanism described on this page.

## Workspace roles

There are two different roles that can be given to authenticated users in order to access a workspace:

- __Read/Write__: This allows an authenticated user to view and modify the contents of the workspace. This includes changing and saving the diagram layout, using the browser-based DSL editor, uploading new versions of the workspace via the web API, regenerating the API key, deleting branches, deleting the workspace, etc.
- __Read-Only__: This allows a user to only view the workspace. Diagrams are not editable and the workspace cannot be deleted by read-only users.

Some features (e.g. creating/deleting workspaces, regenerating API keys, configuring users, etc) can be further restricted by configuring one or more [admin users](/server/admin-users).

## Configuring role-based access

When a workspace has no read/write or read-only users configured, all authenticated users have read/write access to the workspace. This is the default behaviour when a workspace is created.

### Configuration via the UI

Clicking the "Users" link on the workspace summary page will take you to a page that lists all users who have access to your workspace. The two text boxes provide a way to specify the usernames or role names that should have
read/write or read-only access. These can either be specified explicitly (e.g. a username of `user@example.com` or a role of `structurizr-write`) or via a regular expression specified in the form, `^...$`. For example, `^.*@example.com$` can be used to match everybody with an `@example.com` e-mail address.

### Configuration via the API

Role-based access can be configured via the workspace too, again using usernames, role names, or regular expressions. For example, with the DSL:

```
workspace {

    ...
    
    configuration {
        users {
            user1@example.com read
            user2@example.com write
        }
    }

}
```

Or the Structurizr for Java library:

```
Workspace workspace = ...
workspace.getConfiguration().addUser("user1@example.com", Role.ReadOnly);
workspace.getConfiguration().addUser("user2@example.com", Role.ReadWrite);
```