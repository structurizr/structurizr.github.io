---
layout: default
title: Troubleshooting
parent: Structurizr Lite
nav_order: 6
permalink: /lite/troubleshooting
---

# Troubleshooting

## Installation

### Structurizr Lite loads, but the UI gets stuck

If you've recently updated Structurizr Lite and the UI is getting stuck (e.g. "Loading workspace..."),
take a look in your web browser's developer console.
If you see messages like `... is not a function`, try doing a hard refresh of your web browser to clear the cache.

### Structurizr Lite loads, but doesn't look right

If you can see Structurizr Lite in your web browser, but it doesn't look right (e.g. the styles don't seem to be loading, images are oversized, etc) you will likely need to do the following. This is particularly applicable if you're running Structurizr Lite on a server with multiple hostnames, or behind a reverse proxy/load balancer/etc.

1. Create a file named `structurizr.properties` in your Structurizr data directory, next to your `workspace.dsl` file.
2. Add a line as follows: `structurizr.url=XXX` (where `XXX` represents the top-level URL of your Structurizr Lite installation; e.g. `https://structurizr.example.com`).
3. Restart Structurizr Lite.

Please note that Structurizr Lite is designed to work as the root application (i.e. via a context path of `/`) only.

## Diagrams

### Diagram layout is lost when using manual layout

Whenever you refresh Structurizr Lite, it will parse the `workspace.dsl` file and transform it into a workspace.
But that new workspace doesn't include any layout information, because it's not stored in the DSL.
Instead, the layout information is stored in the JSON representation of the workspace, in a file named `workspace.json`.

When the DSL is refreshed, Structurizr Lite will additionally load the `workspace.json` file,
and copy the layout information into the newly created version.
This is done via [a pluggable merging algorithm in the Structurizr for Java library](https://github.com/structurizr/java/blob/master/structurizr-core/src/com/structurizr/view/DefaultLayoutMergeStrategy.java). 
This algorithm works most of the time, but doesn't cater for a number of edge cases unfortunately.

Individual elements losing their layout information is generally caused by renaming those elements, often in conjunction with changing
the order of lines in the DSL, thereby affecting the order in which elements are created, and the internal IDs they are given.
In essence, the merging algorithm isn't able to match elements created via the `workspace.dsl` file with those that already exist
in the `workspace.json` file.

Entire diagrams losing their layout information is generally caused by changing the key associated with that view.
To minimise this, please be sure to use stable keys for your views, rather than allowing the DSL parser to generate them for you.
For example:

```
systemLandscape "MyViewKey" {
  include *
}
```

 Rather than:

```
systemLandscape {
  include *
}
```