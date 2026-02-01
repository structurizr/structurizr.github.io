---
layout: default
title: Data storage
parent: server
nav_order: 5
permalink: /server/data-storage
has_children: true
has_toc: false 
---

# Data storage

There are a number of data storage options:

- [File system](/server/data-storage/file-system) (default)
- [Amazon Web Services S3](/server/data-storage/amazon-web-services-s3) (or an S3 compatible service such as MinIO)
- [Microsoft Azure Blob Storage](/server/data-storage/microsoft-azure-blob-storage)

Please be aware that, given the additional latency involved, you may encounter performance issues when using these cloud data storage options, and you may wish to enable [caching](/server/caching).

## Archiving rather than deletion

By default, deleted workspaces are removed from storage. This behaviour can be changed to enable workspace archiving to prevent the workspace from being deleted from storage when the workspace is deleted via the UI/API.

| Name                                      | Value                       |
|-------------------------------------------|-----------------------------|
| `structurizr.feature.workspace.archiving` | `true` or `false` (default) |

## Server-side encryption

By default, workspace data is stored as plaintext on disk, but server-side encryption of workspace data can be enabled:

| Name                     | Value      |
|--------------------------|------------|
| `structurizr.encryption` | Passphrase |

