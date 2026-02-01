---
layout: default
permalink: /export/static-site
title: Static site
parent: export
nav_order: 5
has_children: false
has_toc: false
---

# Static site

```
export -format static ...
```

Exports a static site from a JSON or DSL workspace, that can be included into your website or hosted from a simple web server, Amazon Web Services S3 bucket, etc.
It provides a way to render diagrams only (i.e. no documentation or ADRS), with a subset of the features found in Structurizr playground/local/server:

- Double-click to navigate
- Zooming and scrolling (`+`, `-`, and the mouse scroll wheel)
- Diagram key (`i`)
- Tooltips (`t`)
- Perspectives (`p`)
- Animation (`,` and `.`)
- Toggle element descriptions (`d`)
- Toggle element metadata (`m`)
- Quick navigation (`Space`)

## Workspace processing

The `export` command supports both JSON and DSL workspaces, and processes them in the same way:

- All documentation and decision records are removed from the workspace.

The difference between the JSON and DSL versions of the workspace is that the JSON version has layout information,
whereas the DSL version doesn't. If you have created your diagrams with manual layout via Structurizr local/server,
you will need to use the JSON version of the workspace. If you only use automatic layout, either version will suffice.

## Introduction modal

An introduction modal will be presented when the static export is loaded. To suppress this, 
add a workspace property named `structurizr.introduction` with a value of `false` or use a parameter (see below).

## Parameters

The following parameters are supported:

- `diagram`: Specify the diagram that should be embedded.
- `perspective`: Specify the perspective that should be shown.
- `introduction`: Show the introduction modal (`true` or `false`).

## Embedding diagrams

Diagrams in the static site can be embedded via an iframe, with the following code:

```
<iframe src="index.html?diagram=SystemContext" style="width: 100%; border: none; overflow: hidden;" allow="fullscreen"></iframe>
<script type="text/javascript" src="js/structurizr-embed.js"></script>
```

- Use the `max-height` CSS style on the iframe to restrict the height.

### Example

<div style="width: 100%; text-align: center;">

    <iframe src="https://c4model.com/example/index.html?diagram=SystemContext" style="width: 100%; max-height: 400px; border: none; overflow: hidden;" allow="fullscreen"></iframe>
    <script type="text/javascript" src="https://c4model.com/example/js/structurizr-embed.js"></script>

</div>

## Demo

- [Demo](https://c4model.com/example/)
