---
layout: default
title: Fixed
grand_parent: server
parent: Authentication
nav_order: 2
permalink: /server/authentication/fixed
---

> This feature is not available in the open core - see [server](/server) for details.

# Form-based login, with a fixed username/password

This authentication method uses a form-based login (username and password), with a single fixed username/password pair, configured by properties.

## Configuration

| Name                         | Value                            |
|------------------------------|----------------------------------|
| `structurizr.authentication` | `fixed`                          |
| `structurizr.username`       | Username (default=`structurizr`) |
| `structurizr.authentication` | Password (default=`password`)    |

The password can be specified as plaintext with `{noop}` prefix, or bcrypt encoded with a `{bcrypt}` prefix:

- `structurizr.password={noop}password`
- `structurizr.password={bcrypt}$2a$06$uM5wM.eJwrPq1RM/gBXRr.d0bfyu9ABxdE56qYbRLSCZzqfR7xHcC`