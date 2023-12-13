---
layout: default
title: IP address restrictions
parent: Structurizr cloud service
nav_order: 80
permalink: /cloud/ip-address-restrictions
---

# IP address restrictions

The cloud service provides a way to configure a set of allowed IP addresses/ranges,
so that you can restrict access to workspace content to people coming from a specific IP address/range.
Workspace owners and admin users can do this from the workspace settings page, and IP addresses/ranges need to be supplied in CIDR notation.
Both IPv4 and IP6 addresses are supported.

When IP address restrictions are in place, users with role-based access to the workspace will still see the workspace
on their dashboard, but will be unable to view the workspace content if their IP address isn't included.

## Notes

This is a paid feature.