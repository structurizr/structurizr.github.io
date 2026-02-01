---
layout: default
title: FAQ
parent: server
nav_order: 81
permalink: /server/faq
---

# FAQ

Here are answers to some frequently asked questions. If you don't see an answer you are looking for,
please [open a new discussion on the GitHub repo](https://github.com/structurizr/structurizr/discussions).

## What are the minimum hardware requirements?

The server will happily run on a laptop, supporting hundreds of concurrent users, so any small server with a few GB of RAM should be sufficient for most teams.

## Can the server be installed on public cloud IaaS and PaaS services?

The server is designed to run inside a trusted network environment, but many teams have installed it on
environments such as the public Amazon Web Services and Microsoft Azure clouds. Please ensure that you consider the security implications of doing this, and that you harden any servers and restrict access where appropriate.

## Can the server be clustered for high availability?

Yes, but you may need to configure [data storage](/server/data-storage), [caching](/server/caching), [search](/server/search), and [HTTP sessions](/server/http-sessions) appropriately.

## Does the server require an Internet connection?

No, the server can run disconnected from the Internet.

## Does the server automatically update itself?

There is no auto-update mechanism, so new versions of the server need to be applied manually.
We recommend scripting your deployments, and ensuring that you can easily roll back if needed (e.g. blue/green deployments).

## Can the server be served over HTTPS?

Yes, the easiest way to do this is to host the server behind a load balancer or reverse-proxy so that SSL termination is handled upstream. You will need to add some configuration to support this - see [Configuration - URL](/server/configuration#url) for details.

## Can we change the context path?

No, the server is designed to work as the root application (i.e. via a context path of `/`) and will
not work if deployed to a different path or used behind a reverse-proxy with a rewrite rule.
