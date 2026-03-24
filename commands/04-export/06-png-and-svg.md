---
layout: default
permalink: /export/png-and-svg
title: PNG and SVG
parent: export
nav_order: 6
has_children: false
has_toc: false
---

> This feature is currently only available by building from source or using [the preview version of the Java .war file](/binaries#java-war-file).

# PNG and SVG

Exports PNG or SVG images using the Structurizr browser-based renderer from:

- [A running local instance](#local)
- [A running server instance](#server)
- [A DSL or JSON file](#dsl-or-json-file)

## local

Export PNG/SVG images from a running [local](/local) instance:

```
export -format png|svg -url <url> ...
```

- `url`: The URL must be the _diagrams page_ for the workspace you would like to export (required); for example:
  - `http://localhost:8080/workspace/1/diagrams` 
- `-output`: The output directory (optional; default=current working directory)
- `-mode`: `light` or `dark` colour scheme (optional; default=`light`)
- `-animation`: `true` to export animation steps, `false` otherwise (optional; default=`false`)

## server

Export PNG/SVG images from a running [server](/server) instance:

```
export -format png|svg -url <url> ...
```

- `url`: The URL must be the _unauthenticated diagrams page_ for the workspace you would like to export (required); for example:
  - `http://structurizr.example.com/workspace/1/diagrams` (server with authentication disabled)
  - `http://structurizr.example.com/share/1/diagrams` (server with authentication enabled + workspace with public link enabled)
  - `http://structurizr.example.com/share/1/c2586b8c-91e5-4d62-b490-186112c51565/diagrams` (server with authentication enabled + workspace with sharing link enabled)
- `-output`: The output directory (optional; default=`.`)
- `-mode`: `light` or `dark` colour scheme (optional; default=`light`)
- `-animation`: `true` to export animation steps, `false` otherwise (optional; default=`false`)

## DSL or JSON file

Export PNG/SVG images from a DSL or JSON file:

```
export -format png|svg -workspace <path> ...
```

- `workspace`: The path or URL to the workspace DSL/JSON file (required)
- `-output`: The output directory (optional; default=workspace directory)
- `-mode`: `light` or `dark` colour scheme (optional; default=`light`)
- `-animation`: `true` to export animation steps, `false` otherwise (optional; default=`false`)

This will export the specified workspace to a [static site](/export/static-site) and export images from that static site. The same [workspace processing](/export/static-site#workspace-processing) applies as when exporting a static site, so you will need to use a JSON file if you have manual layout.

## Notes

- This feature uses the Microsoft Playwright framework to drive a headless version of the Chromium browser, and a version of Chromium will be automatically downloaded the first time. This may take some time.
- Playwright requires some additional local dependencies to be available, so this feature isn't currently available via the prebuilt `structurizr/structurizr` Docker image.