---
layout: default
title: Troubleshooting
parent: server
nav_order: 81
permalink: /server/troubleshooting
---

# Troubleshooting

Here are some common problems, and how to resolve them.
If your problem isn't listed here, please browse [the issues on the GitHub repo](https://github.com/structurizr/structurizr/issues).

## Installation

### The home page loads, but doesn't look right

If you can see the home page, but it doesn't look right (e.g. the styles don't seem to be loading), you will likely need to explicitly set the `structurizr.url` property. See [Configuration - structurizr.properties](configuration#structurizrproperties) for details.

## Diagrams

### Embedded diagrams don't load

If you have installed the server behind a reverse proxy, be aware that some reverse proxies will add additional HTTP headers, which may override those generated/used by the server, causing issues such as the embedded diagram viewer/editor not working. The following headers may need to be disabled in your reverse proxy if they are being set:

- [X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)
- [Content-Security-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy)
