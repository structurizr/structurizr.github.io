---
layout: default
permalink: /local/troubleshooting
title: Troubleshooting
parent: local
nav_order: 91
has_children: false
has_toc: false
---

# Troubleshooting

## Diagram layout is lost when using manual layout

Whenever you refresh Structurizr, it will parse the `workspace.dsl` file and transform it into a workspace.
But that new workspace doesn't include any layout information, because it's not stored in the DSL.
Instead, the layout information is stored in the JSON representation of the workspace, in a file named `workspace.json`.

When the DSL is refreshed, Structurizr will additionally load the `workspace.json` file,
and copy the layout information into the newly created version.
This is done via a pluggable merging algorithm in the Structurizr for Java library (a "merge strategy"), which works most of the time, but doesn't cater for a number of edge cases.

Individual elements losing their layout information is generally caused by renaming those elements, often in conjunction with changing the order of lines in the DSL, thereby affecting the order in which elements are created, and the internal IDs they are given.
In essence, the merging algorithm isn't able to match elements created via the `workspace.dsl` file with those that already exist in the `workspace.json` file.

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