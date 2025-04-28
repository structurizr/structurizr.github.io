---
layout: default
title: Themes
nav_order: 32
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/themes
has_toc: false
---

# Themes

Structurizr supports the concept of themes, so that you can consistently style diagrams across workspaces.
Themes are JSON files containing tag-based element and relationship styles; the same ones that you would usually define
in a workspace - see Help - Notation for more details.
When one or more themes are set on a workspace, any styles defined in those themes will be used as a basis
when rendering diagrams. Furthermore, like CSS, any styles additionally defined in the workspace will override those
defined in the themes.

The following prebuilt themes are available to use:

| Amazon Web Services (2023.01.31) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/amazon-web-services-2023.01.31/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/amazon-web-services-2023.01.31/icons.json) |
| Amazon Web Services (2022.04.30) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/amazon-web-services-2022.04.30/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/amazon-web-services-2022.04.30/icons.json) |
| Amazon Web Services (2020.04.30) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/amazon-web-services-2020.04.30/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/amazon-web-services-2020.04.30/icons.json) |
| Google Cloud Platform (v1.5) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/google-cloud-platform-v1.5/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/google-cloud-platform-v1.5/icons.json) |
| Kubernetes (v0.3) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/kubernetes-v0.3/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/kubernetes-v0.3/icons.json) |
| Microsoft Azure (2024.07.15) | | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2024.07.15/icons.json) |
| Microsoft Azure (2023.01.24) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2023.01.24/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2023.01.24/icons.json) |
| Microsoft Azure (2021.01.26 - "V4") | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2021.01.26/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2021.01.26/icons.json) |
| Microsoft Azure (2020.07.13 - "V3") | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2020.07.13/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2020.07.13/icons.json) |
| Microsoft Azure (2019.09.11) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2019.09.11/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/microsoft-azure-2019.09.11/icons.json) |
| Oracle Cloud Infrastructure (2023.04.01) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/oracle-cloud-infrastructure-2023.04.01/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/oracle-cloud-infrastructure-2023.04.01/icons.json) |
| Oracle Cloud Infrastructure (2021.04.30) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/oracle-cloud-infrastructure-2021.04.30/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/oracle-cloud-infrastructure-2021.04.30/icons.json) |
| Oracle Cloud Infrastructure (2020.04.30) | [icons and colours](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/oracle-cloud-infrastructure-2020.04.30/theme.json) | [icons only](https://structurizr.com/help/theme?url=https://static.structurizr.com/themes/oracle-cloud-infrastructure-2020.04.30/icons.json) |

## Creating your own themes

### 1. Static themes

A static theme is a JSON file that is hosted externally to Structurizr, via a URL.
Theme files can be created by hand, exported from an existing workspace, or created with one of the
client libraries. An easy way to create a theme is to define a workspace via the Structurizr DSL, and
export the styles as a theme via the Structurizr CLI. For example:

```
./structurizr.sh export -workspace theme.dsl -format theme
```

theme.dsl

```
workspace "Name" "Description" {
    views {
        styles {
            element "Person" {
                shape person
            }
        }
    }
}
```

theme.json (output)

```
{
  "name" : "Name",
  "description" : "Description",
  "elements" : [ {
    "tag" : "Person",
    "shape" : "Person"
  } ]
}
```

To use a static theme:

1. Publish the JSON file representing the theme somewhere that is accessible from your web browser
(e.g. a web server, GitHub Gist, etc.)
2. Add this URL to your workspace; for example using the Structurizr DSL (`theme` or `themes` keywords) or client library (ViewSet -> Configuration -> theme/themes property).

If you are using the cloud service or your on-premises installation is being served over HTTPS, theme JSON files must also be served over HTTPS.
Also, for security reasons, the web server hosting your theme must set the `Access-Control-Allow-Origin` header to allow cross-origin requests.


### 2. Dynamic themes

In contrast, a dynamic theme is directly sourced from another published workspace on the cloud service or on-premises
installation that you have access too, and consists of the styles that are explicitly defined in that workspace.

To use a dynamic theme:

1. Get the URL of the theme by clicking the "Theme" link on the private/public/shareable workspace summary page as appropriate (e.g. https://structurizr.com/share/36141/theme).
2. Add this URL to your workspace; for example using the Structurizr DSL (`theme` or `themes` keywords) or client library (ViewSet -> Configuration -> theme/themes property).

Please note that if other users have access to your workspace, they must also have access to the workspace that is the source of the theme.