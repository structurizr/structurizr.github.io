---
layout: default
title: Role-based access
parent: Structurizr on-premises
nav_order: 6
permalink: /onpremises/role-based-access
---

# Role-based access

By default, all workspaces are accessible by anybody who has access to your Structurizr installation.
Anonymous users (not signed in) have read-only access, while authenticated users (signed in) have read-write access.

## Workspace roles

There are two different roles that can be associated with users when they have access to a workspace, as indicated by a label on your dashboard.

- __Read/Write__: This allows a user to view and modify the contents of the workspace. This includes changing and saving the diagram layout, using the browser-based editor, plus uploading new versions of the workspace via the web API.
- __Read-Only__: This allows a user to only view the workspace. The API key/secret pair isn't accessible and diagrams are not editable.

## Configuring role-based access via the web interface

Clicking the "Users" link on your workspace summary page will take you to a page that lists all the users who have access to your workspace.
The two text boxes provide a way to specify the usernames or role names that should have
read/write or read-only access.
Usernames and roles can also be specified via a regular expression.
For example, `^.*@example.com$` can be used to match everybody with an `@example.com` e-mail address.
Please note that regular expressions must be specified in the form, `^...$`.

## Configuring role-based access via the web API

Role-based access can be configured via the workspace too. For example, with the DSL:

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