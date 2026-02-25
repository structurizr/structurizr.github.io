---
layout: default
permalink: /local/images
title: Images
parent: local
nav_order: 15
has_children: false
has_toc: false
---

# Images

Structurizr `local` can serve images directly from the file system, providing an alternative to embedding the images inside your workspace. This decreases the size of your `workspace.json` files for the best performance.

## Hosting images

Just create a `images` directory inside your workspace directory.

## Accessing images

Images can then be accessed via a direct URL such as:

- `http://localhost:8080/workspace/images/image.png`

Alternatively, you can reference the image from Markdown/AsciiDoc documentation/ADRs inside your workspace as follows:

- `{workspace}/images/image.png`

This syntax will work when the workspace is published to a [server](/server) installation too.