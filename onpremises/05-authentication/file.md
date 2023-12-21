---
layout: default
title: File
grand_parent: Structurizr on-premises
parent: Authentication
nav_order: 1
permalink: /onpremises/authentication/file
---

# Form-based login, with a file-based user store

This authentication method is used by default, and configured to use a form-based login (username and password), with the set of users stored in a file called
`structurizr.users` in the Structurizr data directory (passwords are hashed using bcrypt).
A user with the username of `structurizr` and password of `password` is created by default.
You can add, remove or modify users as needed. Each line in this file should be in the following format:

```
{username}={hashed password}
```

A simple utility page is provided to calculate a bcrypt hashed password at `{structurizr.url}/bcrypt/{password}` (e.g. [http://localhost:8080/bcrypt/password](http://localhost:8080/bcrypt/password)).

It is also possible to configure a comma separated list of roles for every user, in a file called `structurizr.roles`, again in the Structurizr data directory.
Each line in this file should be in the following format:

```
{username}={role1},{role2},{role3}
```

