---
layout: default
title: Embedding diagrams
parent: Structurizr static site
nav_order: 2
permalink: /static/embed
---

# Embedding diagrams

Diagrams in the static site can be embedded via an iframe, with the following code:

```
<iframe id="structurizrDiagram" src="index.html?iframe=structurizrDiagram#SystemContext" width="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" allowfullscreen="true"></iframe>
<script type="text/javascript" src="js/structurizr-embed.js"></script>
```

- The window hash/anchor can be used to specify which diagram should be embedded.
- This is a responsive embed, and requires that the `id` of the `iframe` matches the `iframe` parameter of the embed URL.  

## Example

<div style="width: 100%">
    <iframe id="structurizrDiagram" src="/static/demo/index.html?iframe=structurizrDiagram#SystemContext" width="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" allowfullscreen="true"></iframe>
    <script type="text/javascript" src="/static/demo/js/structurizr-embed.js"></script>
</div>