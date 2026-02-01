---
layout: default
nav_order: 3
parent: Commands
title: server
has_children: true
permalink: /server
has_toc: false
---

# server

The `server` command provides a way to start a self-hosted Structurizr server that can be used to publish workspaces to a wider audience. It's equivalent to the previous Structurizr on-premises installation.

The Structurizr server has an open core that you can use for free when [building from source](/building).
Our [prebuilt binaries](/binaries) add features designed for use in enterprise environments ([license required](/server/pricing)).

|                      | Open core                                       | Prebuilt binaries                                                                                                                                                            |
|----------------------|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Distribution         | [Build from source](/building)                  | [Prebuilt Docker image and Java .war file](/binaries)                                                                                                                        |
| Pricing              | Free                                            | [License required](/server/pricing)                                                                                                                                          |
| Authentication       | [None](/server/authentication/none)             | + [fixed username/password](/server/authentication/fixed), [file-based users and roles](/server/authentication/file), [SAML](/server/authentication/saml), LDAP (on request) |
| Role-based access    | No                                              | [Yes](/server/role-based-access)                                                                                                                                             |
| Workspace visibility | Public                                          | + [sharing link with token](/server/workspace-sharing)                                                                                                                       |
| Workspace storage    | [File system](/server/data-storage/file-system) | + [Amazon Web Services S3](/server/data-storage/amazon-web-services-s3), [Microsoft Azure Blob storage](/server/data-storage/microsoft-azure-blob-storage)                   |
| Workspace search     | [Apache Lucene](/server/search/lucene)          | + [Elasticsearch](/server/search/elasticsearch)                                                                                                                              |
| HTTP sessions        | [Local](/server/http-sessions/local)            | + [Redis](/server/http-sessions/redis)                                                                                                                                       |
| Admin API            | No                                              | [Yes](/server/admin-api)                                                                                                                                                     |

