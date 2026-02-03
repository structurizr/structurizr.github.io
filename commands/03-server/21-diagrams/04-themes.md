---
layout: default
title: Themes
grand_parent: server
parent: Diagrams
nav_order: 5
permalink: /server/diagrams/themes
---

# Themes

Structurizr supports the concept of themes, so that you can consistently style diagrams across workspaces. Themes are JSON files containing tag-based element and relationship styles - the same ones that you would usually define in a workspace. When one or more themes are configured in a workspace, any styles defined in those themes will be used as a basis when rendering diagrams. Furthermore, like CSS, any styles additionally defined in the workspace will override those defined in the themes.

Themes can be hosted remotely (i.e. on a web server) or "installed" into Structurizr `server`, `local`, and `playground` (see below).

> For security reasons, any remote themes must have an `Access-Control-Allow-Origin` header to allow cross-origin requests.

## Prebuilt themes

A number of prebuilt themes are available covering:

- Amazon Web Services
- Microsoft Azure
- Google Cloud Platform
- Oracle Cloud Infrastructure
- Kubernetes

These themes can be viewed via [playground.structurizr.com/themes](https://playground.structurizr.com/themes), with the themes being available on [GitHub](https://github.com/structurizr/structurizr/tree/main/structurizr-themes).

## Configuration

`local`, `server`, and `playground` have no themes by default, so you will need to install the themes that you require, whether they are prebuilt or themes that you create. A theme is simply a directory that contains a `theme.json` file along with any icons.

| Name                 | Value                                                                            |
|----------------------|----------------------------------------------------------------------------------|
| `structurizr.themes` | Path to themes directory (default is `themes` in your Structurizr data directory |

## Installing themes

To install a theme, copy the theme directory to the location defined by `structurizr.themes`.

If you're using the prebuilt Docker image, the prebuilt themes are included in the image. To use them, start `local`, `server`, and `playground` with an additional environment variable as follows:

```
-e STRUCTURIZR_THEMES=/usr/local/structurizr-themes
```

## Creating your own themes

A theme is a JSON file that is hosted remotely via a HTTP/HTTPS URL or installed (as above). Theme files can be created by hand or exported from an existing workspace. An easy way to create a theme is to define a workspace via the Structurizr DSL, and [export](/export) the styles as a theme. For example:

```
export -workspace theme.dsl -format theme
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
