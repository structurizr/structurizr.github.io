---
layout: default
title: FAQ
parent: Structurizr Lite
nav_order: 80
permalink: /lite/faq
---

# FAQ

## Does Structurizr Lite require Internet access?

Internet access is not required by Structurizr Lite unless you're using [auto-sync](usage#auto-sync),
or you're making use of a [theme](/ui/diagrams/themes) and have server-side (Graphviz) automatic layout enabled.

## Can we change the context path?

No, Structurizr Lite is designed to work as the root application (i.e. via a context path of `/`) and will
not work if deployed to a different path or used behind a reverse-proxy with a rewrite rule.
The [UI](/ui) is shared between Structurizr Lite, the on-premises installation, and the cloud service so we have no
plans to change this.