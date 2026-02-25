---
layout: default
permalink: /server/images
title: Images
parent: server
nav_order: 25
has_children: false
has_toc: false
---

# Images

Structurizr `server` can serve images directly from the file system, providing an alternative to embedding the images inside your workspace. This decreases the size of your `workspace.json` files for the best performance.

## Uploading images

Images can be uploaded via the [workspace API](/server/workspace-api) using the [push](/push) command.

## Accessing images

Images can be viewed via the "Published images" link on the workspace summary page:

 - https://structurizr.example.com/workspace/1234/images

Images can then be accessed via a direct URL such as:

- `https://structurizr.example.com/workspace/1234/images/image.png`

Alternatively, you can reference the image from Markdown/AsciiDoc documentation/ADRs inside your workspace as follows:

- `{workspace}/images/image.png`

This syntax will work irrespective of whether the workspace is accessed via an authenticated URL, a public URL, or a URL with the sharing token.