---
layout: default
title: Microsoft Azure Blob Storage
parent: Data storage
grand_parent: server
nav_order: 3
permalink: /server/data-storage/microsoft-azure-blob-storage
---

> This feature is not available in the open core - see [server](/server) for details.

# Microsoft Azure Blob Storage

The basic steps to configure Azure Blob Storage are:

- Create a container under your Azure storage account.

## Configuration

| Name                      | Value                                                                                          |
|------------------------------------|---------------------------------------------------------------------------------------------------------|
| `structurizr.data`                 | `azure-blob`                                                                                            |
| `azure-blob.accountName`           | Azure data storage account name (just `xxx`, not the full URL of `https://xxx.blob.core.windows.net`)   |
| `azure-blob.accessKey`             | Azure Blob Storage access key                                                                           |
| `azure-blob.containerName`         | Azure Blob Storage container name                                                                       |
| `structurizr.maxWorkspaceVersions` | The number of workspace versions to retain (default=`30`).                                              |
| `structurizr.encryption`           | Passphrase to enable server-side encryption (default=)                                                  |                                            
