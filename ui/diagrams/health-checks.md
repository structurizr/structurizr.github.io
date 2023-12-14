---
layout: default
title: Health checks
nav_order: 50
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/health-checks
has_toc: false
---

# Health checks

The health checks feature allows you to supplement your deployment diagrams with HTTP-based health checks to get
an "at a glance" view of the health of your software systems.

## How it works

HTTP-based health checks can be added to the container instances in your deployment model
(e.g. via the [healthCheck](/dsl/language#healthcheck) DSL keyword). Each health check is defined by a name,
an endpoint URL, a polling interval (e.g. 60 seconds), a timeout (e.g. 1000 milliseconds),
and optionally one or more HTTP headers.

Click the ![heart button](../bootstrap-icons/heart-pulse.svg) button when viewing a diagram that includes health checks.
After a short delay, the colour coding of the diagram elements will change to indicate the percentage of health
checks that have passed for each element (red=0%, amber=1-99%, green=100%).

The health checks are executed from within your web browser, so HTTPS health check URLs must be used if you are
viewing the diagrams via HTTPS. Also, the response sent back from your servers must include the
`Access-Control-Allow-Origin` header, to allow the cross-origin request to be made.
Returning anything other than a HTTP 200 status code will cause the health check to be marked as failed.

The health check endpoints can either be existing endpoints, or custom ones that you build into your applications.
For example, you could add a `/health` endpoint to an existing web application that simply returns a HTTP 200 response
to indicate that it's okay.

## Usage scenarios

The health check feature is not designed to replace monitoring systems such as Pingdom, New Relic, Nagios, etc.
Instead, it can be used to augment existing information radiators and dashboards, to provide an "at a glance"
view of whether the software system is running and which parts are down in the event of a failure. It can also be
used in diagnosing problems with a given deployment environment.