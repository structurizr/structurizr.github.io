---
layout: default
title: Role-based access
parent: Structurizr cloud service
nav_order: 12
permalink: /cloud/role-based-access
---

# Workspace security and role-based access

Each workspace in Structurizr is owned by a single user, which is the person who originally created the workspace.
The workspace owner can share a workspace with other people, using a role-based access mechanism.

## Workspace roles

There are four different roles that can be associated with users when they have access to a workspace, as indicated by a label on your dashboard.

- __Owner__: This is the person who owns, and originally created, the workspace. Workspace ownership can be transferred via the workspace settings page.
- __Admin__: This is the person who has admin access to the workspace (everything the owner can do, except deleting the workspace).
- __Read/Write__: This allows a user to view and modify the contents of the workspace. This includes changing and saving the diagram layout, using the browser-based editor, plus uploading new versions of the workspace via the web API.
- __Read-Only__: This allows a user to only view the workspace. The API key/secret pair isn't accessible and diagrams are not editable.

## Configuring role-based access via the web interface

Clicking the "Users" link on your workspace summary page will take you to a page that lists all the users who have access to your workspace.

### Adding a user

If you are a workspace owner, or have admin access, underneath the list of users is a form where you can add a user to the workspace.
To add a user to a workspace, enter their e-mail address, choose their role and click the "Add" button.

### Changing a role or removing a user

When viewing the list of users who have access to your workspace, to change a user's role or remove them from the workspace,
change the role in the dropdown list next to that user's e-mail address and click the "Update" button. Again, only the workspace owner or an administrator has the ability to do this.

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

It is not possible to configure owner or admin roles via the API.

## Notes

- This is a paid cloud service feature.