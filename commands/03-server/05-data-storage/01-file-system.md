---
layout: default
title: File system
parent: Data storage
grand_parent: server
nav_order: 1
permalink: /server/data-storage/file-system
---

# File system

The Structurizr server was designed to use the local file system for data storage,
and is configured by default. File system based storage is recommended for most installations - it's fast, and can be used for a single server installation as well as for a multi-server installation
where you can share a persistent file system between server nodes.

## Configuration

| Name                      | Value                                             |
|------------------------------------|------------------------------------------------------------|
| `structurizr.data`                 | `file`                                                     |
| `structurizr.maxWorkspaceVersions` | The number of workspace versions to retain (default=`30`)  |
| `structurizr.encryption`           | Passphrase to enable server-side encryption (default=)     |                                            
