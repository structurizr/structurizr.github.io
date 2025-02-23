---
layout: default
title: Products
nav_order: 3
permalink: /products
---

# Products

The Structurizr tooling is available in a number of versions, covering different usage scenarios.
Many [community tools](/community) are also available.

| Product                                              | Description                                                                                                                                                                                          | License       |
|------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| [Structurizr Lite](/lite)                            | A single workspace version of Structurizr, providing a way to quickly view diagrams, documentation, and architecture decision records.                                                               | Open source   |
| [Structurizr on-premises installation](/onpremises)  | A multi-workspace version of Structurizr that can be run on your own infrastructure (local servers or cloud), providing a way to publish diagrams, documentation, and architecture decision records. | Open source   |
| [Structurizr cloud service](/cloud)                  | The Structurizr cloud service, providing a way to publish diagrams, documentation, and architecture decision records.                                                                                | Free and paid |
| [Structurizr CLI](/cli)                              | A command line utility designed to be used in conjunction with the Structurizr DSL, supporting pull/push via the web API and exports to a number of formats including PlantUML and Mermaid.          | Open source   |
| [Structurizr static site](/static)                   | A static HTML site that can be included into your website or hosted from a simple web server, Amazon Web Services S3 bucket, etc.                                                                    | Open source   |

The Structurizr tooling encourages the adoption of a "diagrams and documentation as code" approach,
with everything being stored in source code control.
So, with that in mind, the easiest way to get started with Structurizr is to use the Structurizr DSL in combination
with Structurizr Lite, both of which are free. See [Structurizr Lite - Quickstart](/lite/quickstart) for more,
but the basic steps are:

1. Create a directory.
2. Write a `workspace.dsl` file inside the directory.
3. Start Structurizr Lite, pointing it to the directory.
4. Open your web browser to view the diagrams/documentation.

If you commit this directory to source code control, along with a script to start Structurizr Lite,
everybody on your team has easy access to that same set of diagrams and documentation whenever they need it.

The Structurizr cloud service and on-premises installation are useful for those situations when everybody on your team
isn't able to run Structurizr Lite, or you need to share the diagrams/documentation with people outside of your team.
They both provide anonymous and authenticated role-based access, along with features such as client-side encryption
for an additional layer of security over your confidential information.
Workspaces can be auto-synced from Structurizr Lite, and tools like the Structurizr CLI can be used to publish a
workspace via the web API provided by the cloud service and on-premises installation.

## Comparison

| Feature                                                                                                                                                                                   | Lite                      | On-premises                             | Cloud (free)                | Cloud (paid)                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|-----------------------------------------|-----------------------------|---------------------------------------|
| __[Workspaces](/workspaces)__<br />A workspace is the wrapper for your software architecture model, views and supplementary documentation.                                                | 1                         | 1+                                      | 1                           | 5+                                    |
| __[Workspace scope](/workspaces#validation)__<br />Workspace scope and content validation (strict vs relaxed).                                                                            | Strict or relaxed         | Strict or relaxed                       | Strict only                 | Strict or relaxed                     |
| __Sharing link__<br />Share your workspace using a read-only URL.                                                                                                                         |                           | Yes                                     |                             | [Yes](/cloud/workspace-visibility)    |
| __Role-based access__<br />Share your workspace with team members, using role-based security.                                                                                             |                           | [Yes](/onpremises/role-based-access)    |                             | [Yes](/cloud/role-based-access)       |
| __Restrict access by IP address__<br />Configure allowed IP addresses for extra security.                                                                                                 |                           |                                         |                             | [Yes](/cloud/ip-address-restrictions) |
| __Client-side encryption__<br />Encrypt workspaces before uploading via the cloud API, and decrypt them in your browser using your own passphrase.                                        |                           | Yes                                     |                             | [Yes](/cloud/client-side-encryption)  |
| __Workspace locking__<br />Workspace locking to avoid concurrent updates.                                                                                                                 |                           | Yes                                     |                             | [Yes](/cloud/workspace-locking)       |
| __Workspace versioning__<br />Recent versions of your workspace are retained.                                                                                                             |                           | [Yes](/onpremises/workspace-versioning) |                             | [Yes](/cloud/workspace-versioning)    |
| __Workspace branches__<br />Store parallel versions of your workspace.                                                                                                                    |                           | [Yes](/onpremises/workspace-branches)   |                             | [Yes](/cloud/workspace-branches)      |
| __Full-text search__<br />Search for diagrams and documentation across all workspaces.                                                                                                    | Yes                       | Yes                                     |                             | Yes                                   | 
| __[Diagrams](/ui/diagrams)__<br />C4 model diagrams (core and supplementary).                                                                                                             | Yes                       | Yes                                     | Yes (max 10)                | Yes                                   |
| __Diagram reviews__<br />A visual diagram review tool.                                                                                                                                    |                           | [Yes](/onpremises/diagram-review)       |                             | [Yes](/cloud/diagram-review)          |
| __[Documentation](/ui/documentation)__<br />Lightweight supplementary documentation using Markdown or AsciiDoc to complement the software architecture diagrams.                          | Yes                       | Yes                                     | Yes                         | Yes                                   |
| __[Decision log](/ui/decisions)__<br />Supplement the architecture model with a log of the key decisions (e.g. architecture decision records).                                            | Yes                       | Yes                                     | Yes                         | Yes                                   |
| __[Explorations](/ui/explorations)__<br />Alternative, automatic visualisations that can be used to explore the software architecture model.                                              | Yes                       | Yes                                     | Yes                         | Yes                                   |
| __[Health checks](/ui/diagrams/health-checks)__<br />Supplement your deployment models with HTTP-based health checks to get an "at a glance" view of the health of your software systems. | Yes                       | Yes                                     | Yes                         | Yes                                   |
| __[Diagram export](/ui/diagrams/export)__<br />Export diagrams (and their key/legend) to PNG and SVG files.                                                                               | Yes                       | Yes                                     | Yes                         | Yes                                   |
| __[Documentation export](/ui/documentation/export)__<br />Export documentation to a single HTML page.                                                                                     | Yes                       | Yes                                     | Yes                         | Yes                                   |
| __Embed diagrams__<br />Embed diagrams in web pages.                                                                                                                                      |                           | [Yes](/onpremises/embed)                |                             | [Yes](/cloud/embed)                   |
| __Workspace API__<br />Push/pull workspace content via a web API.                                                                                                                         |                           | [Yes](/onpremises/workspace-api)        | [Yes](/cloud/workspace-api) | [Yes](/cloud/workspace-api)           |
| __Admin API__<br />List/create workspaces a web API.                                                                                                                                      |                           | [Yes](/onpremises/admin-api)            |                             | [Yes](/cloud/admin-api)               |
| __Notion__<br />Embed live architecture diagrams into Notion pages via an iframe.                                                                                                         |                           |                                         |                             | [Yes](/cloud/notion)                  |
| __Slack__<br />Perform a full-text search across a workspace using a slash command.                                                                                                       |                           |                                         |                             | [Yes](/cloud/slack)                   |              
| __Authentication via LDAP or SAML 2.0__<br />Integrate Structurizr with your identity provider.                                                                                           |                           | [Yes](/onpremises/authentication)       |                             |                                       |
| __Priority support__<br />Priority support (Monday to Friday; 9-5 UK time).                                                                                                               | With paid support package | With paid support package               |                             | Yes                                   |
