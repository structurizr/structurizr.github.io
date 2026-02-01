---
layout: default
title: iframe embed
grand_parent: server
parent: Diagrams
nav_order: 21
permalink: /server/diagrams/iframe-embed
---

# iframe embed

Diagrams in your workspaces can be embedded into web pages using an iframe.
This allows you to embed the "live" diagram, which means that you can view the diagram key,
use the fullscreen view, enable perspectives, navigate the between diagrams, etc.

If server authentication is enabled, this feature is only available when the read-only [public or sharing link](/server/workspace-sharing) has been configured. 

## Embed code

When viewing a diagram, click the ![embed code button](/images/bootstrap-icons/code-slash.svg) button to display the
embed code. The code you will see varies based upon the workspace visibility (public vs sharing link).

The iframe embed URL takes the following parameters:

- `diagram`: The key of the diagram to embed.
- `perspective`: The name of the perspective to show.
- `tags`: A comma separated list of tags to show.