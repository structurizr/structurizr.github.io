---
layout: default
title: Home
nav_order: 2
description: Structurizr
permalink: /
---

# Structurizr

Structurizr builds upon "diagrams as code", allowing you to create
__multiple software architecture diagrams__, in a __variety of rendering tools__, from a __single model__.

The Structurizr tooling is available in a number of versions, covering different usage scenarios.


| Product                                             | Description                                                                                                                                                                                          | License       |
|-----------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| [Structurizr Lite](/lite)                           | A single workspace version of Structurizr, providing a way to quickly view diagrams, documentation, and architecture decision records.                                                               | Open source   |
| [Structurizr on-premises installation](/onpremises) | A multi-workspace version of Structurizr that can be run on your own infrastructure (local servers or cloud), providing a way to publish diagrams, documentation, and architecture decision records. | Open source   |
| [Structurizr cloud service](/cloud)                 | The Structurizr cloud service, providing a way to publish diagrams, documentation, and architecture decision records.                                                                                | Free and paid |
| [Structurizr CLI](/cli)                             | A command line utility designed to be used in conjunction with the Structurizr DSL, supporting pull/push via the web API and exports to a number of formats including PlantUML and Mermaid.          | Open source   |

## Which product?

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

| Feature                                                                                                                                                                                               | Lite                      | On-premises                          | Cloud (free)                | Cloud (paid)                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|--------------------------------------|-----------------------------|---------------------------------------|
| [Workspaces](/workspaces)<br />A workspace is the wrapper for your software architecture model, views and supplementary documentation.                                                                | 1                         | 1+                                   | 1                           | 5+                                    |
| [Workspace scope](/workspaces#validation)<br />Workspace scope and content validation (strict vs relaxed).                                                                                            | Strict or relaxed         | Strict or relaxed                    | Strict only                 | Strict or relaxed                     |
| Sharing link<br />Share your workspace using a read-only URL.                                                                                                                                         |                           | Yes                                  |                             | [Yes](/cloud/workspace-visibility)    |
| Role-based access<br />Share your workspace with team members, using role-based security.                                                                                                             |                           | [Yes](/onpremises/role-based-access) |                             | [Yes](/cloud/role-based-access)       |
| Restrict access by IP address<br />Configure allowed IP addresses for extra security.                                                                                                                 |                           |                                      |                             | [Yes](/cloud/ip-address-restrictions) |
| Client-side encryption<br />Encrypt workspaces before uploading via the cloud API, and decrypt them in your browser using your own passphrase.                                                        |                           | Yes                                  |                             | [Yes](/cloud/client-side-encryption)  |
| Workspace locking<br />Workspace locking to avoid concurrent updates.                                                                                                                                 |                           | Yes                                  |                             | [Yes](/cloud/workspace-locking)       |
| Workspace versioning<br />Recent versions of your workspace are retained.                                                                                                                             |                           | Yes                                  |                             | [Yes](/cloud/workspace-versioning)    |
| [Full-text search](https://structurizr.com/help/full-text-search)<br />Search for diagrams and documentation across all workspaces.                                                                   | Yes                       | Yes                                  |                             | Yes                                   | 
| [Diagrams](https://structurizr.com/help/diagrams)<br />C4 model diagrams (core and supplementary).                                                                                                    | Yes                       | Yes                                  | Yes (max 10)                | Yes                                   |
| [Diagram reviews](https://structurizr.com/help/diagram-review)<br />A visual diagram review tool.                                                                                                     |                           | Yes                                  |                             | Yes                                   |
| [Documentation](https://structurizr.com/help/documentation)<br />Lightweight supplementary documentation using Markdown or AsciiDoc to complement the software architecture diagrams.                 | Yes                       | Yes                                  | Yes                         | Yes                                   |
| [Decision log](https://structurizr.com/help/decision-log)<br />Supplement the architecture model with a log of the key decisions (e.g. architecture decision records).                                | Yes                       | Yes                                  | Yes                         | Yes                                   |
| [Explorations](https://structurizr.com/help/explorations)<br />Alternative, automatic visualisations that can be used to explore the software architecture model.                                     | Yes                       | Yes                                  | Yes                         | Yes                                   |
| [Health checks](https://structurizr.com/help/health-checks)<br />Supplement your deployment models with HTTP-based health checks to get an "at a glance" view of the health of your software systems. | Yes                       | Yes                                  | Yes                         | Yes                                   |
| [Diagram export](/ui/diagrams/export)<br />Export diagrams (and their key/legend) to PNG and SVG files.                                                                                               | Yes                       | Yes                                  | Yes                         | Yes                                   |
| [Documentation export](/ui/documentation/export)<br />Export documentation to a single HTML page.                                                                                                     | Yes                       | Yes                                  | Yes                         | Yes                                   |
| [Diagram iframe embed](https://structurizr.com/help/embed-iframe)<br />Embed diagrams in web pages using a HTML iframe.                                                                               |                           | Yes                                  |                             | Yes                                   |
| [Diagram image embed](https://structurizr.com/help/embed-image)<br />Embed PNG versions of diagrams in web pages                                                                                      |                           | Yes                                  |                             | Yes                                   |
| Workspace API<br />Push/pull workspace content via a web API.                                                                                                                                         |                           | [Yes](/onpremises/workspace-api)     | [Yes](/cloud/workspace-api) | [Yes](/cloud/workspace-api)           |
| Notion<br />Embed live architecture diagrams into Notion pages via an iframe.                                                                                                                         |                           |                                      |                             | [Yes](/cloud/notion)                  |
| Slack<br />Perform a full-text search across a workspace using a slash command.                                                                                                                       |                           |                                      |                             | [Yes](/cloud/slack)                   |              
| Authentication via LDAP or SAML 2.0<br />Integrate Structurizr with your identity provider.                                                                                                           |                           | [Yes](/onpremises/authentication)    |                             |                                       |
| [Priority support](https://structurizr.com/help/support)<br />Priority support (Monday to Friday; 9-5 UK time).                                                                                       | With paid support package | With paid support package            |                             | Yes                                   |

## Other rendering tools

Other rendering tools are available that can be used to render diagrams.
Please note that the feature set and look/feel of the resulting diagrams will vary between tools.

* [Structurizr Site Generatr](https://github.com/avisi-cloud/structurizr-site-generatr): Generates a HTML microsite with diagrams, documentation, and a UI to explore the model.
* [Kroki](https://kroki.io): Kroki generates diagrams from a number of text-based formats, including the Structurizr DSL.
* [c4viz](https://github.com/pmorch/c4viz): A browser-based diagram renderer, with diagram navigation and "click to zoom".
* [Git for Confluence - Markdown, PlantUML, Graphviz, Mermaid](https://marketplace.atlassian.com/apps/1211675/git-for-confluence-markdown-plantuml-graphviz-mermaid): A Confluence plugin that will render a specific diagram from a Structurizr DSL file stored in your git repo.
