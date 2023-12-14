---
layout: default
title: Manual layout
nav_order: 23
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/manual-layout
has_toc: false
---

# Manual layout

When authoring your workspace, you can choose whether to use automatic layout or manual layout.
Software architecture diagrams are story telling tools, and often more effective when manual layout is used to
precisely position elements. Structurizr's manual layout features allow you to resize the canvas, reposition elements,
add vertices to lines, move the label on relationships, etc.

## How is manual layout information retained?

Although Structurizr is a "models as code" tool, generally speaking, diagram layout information isn't something that
you will ever author by hand. For example, element x,y positions are not stored in the source of your workspace,
such as your workspace definition when using the Structurizr DSL. This information is instead stored in a JSON version
of your workspace, [the schema for which can be found at on GitHub](https://github.com/structurizr/json).

Although Structurizr Lite, the Structurizr CLI, the browser-based DSL editor, Structurizr for Java, etc are all
different approaches to creating/pushing a workspace, the basic principle is the same for all when using manual layout:

1. Parse your workspace source (DSL, Java, etc) and create an in-memory representation of your workspace.
2. Load the current version of the workspace (e.g. load from Structurizr Lite, pull from the cloud service/an on-premises installation), extract the manual layout information, and merge it into the workspace created during step 1. This is done via [a pluggable merging algorithm in the Structurizr for Java library](https://github.com/structurizr/java/blob/master/structurizr-core/src/com/structurizr/view/DefaultLayoutMergeStrategy.java).

## Why is manual layout information sometimes lost?

The pluggable layout merging algorithm attempts to match elements across your newly created workspace (1) and the
current version of the workspace (2). This works most of the time, but doesn't cater for a number of edge cases,
unfortunately.

The Structurizr DSL, for example, will automatically generate an internal ID for every element and relationship,
based upon the order in which they are created. For elements, the merging algorithm will attempt to match on element
name, but will fallback to matching on the internal element ID to cater for situations where an element has been
renamed. If you rename an element and change the creation order (e.g. by changing the order of lines in the DSL),
you may find that the element can't be matched, and manual layout information for that element will be lost.

Entire diagrams losing their layout information is generally caused by changing the key associated with that view.
To minimise this, be sure to use an explicit key for your views, rather than allowing the DSL parser to generate them
for you. For example:

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