---
layout: default
title: Diagram viewer
grand_parent: server
parent: Diagrams
nav_order: 1
permalink: /server/diagrams/viewer
---

# Diagram viewer

![Structurizr diagram viewer](/images/diagram-viewer.png)

## Toolbar buttons

- ![](/images/bootstrap-icons/house.svg) Home.
- ![](/images/bootstrap-icons/folder.svg) Workspace summary.
- ![](/images/bootstrap-icons/arrow-90deg-left.svg) Previous diagram.
- ![](/images/bootstrap-icons/info-circle.svg) Diagram key.
- ![](/images/bootstrap-icons/chat-square-text.svg) Toggle tTooltips on/off.
- ![](/images/bootstrap-icons/funnel.svg) Filter by user-defined tags.
- ![](/images/bootstrap-icons/binoculars.svg) Filter by perspective.
- ![](/images/bootstrap-icons/diagram-3.svg) Open graph exploration.
- ![](/images/bootstrap-icons/file-earmark-image.svg) Export diagrams to PNG/SVG. 
- ![](/images/bootstrap-icons/pencil.svg) Edit diagram (workspace write
  access required).

## Floating buttons (bottom right)

- ![](/images/bootstrap-icons/skip-backward.svg) Step backward.
- ![](/images/bootstrap-icons/play.svg) Start animation.
- ![](/images/bootstrap-icons/stop.svg) Stop animation.
- ![](/images/bootstrap-icons/skip-forward.svg) Step forward.
- ![](/images/bootstrap-icons/zoom-out.svg) Zoom out.
- ![](/images/bootstrap-icons/zoom-in.svg) Zoom in.
- ![](/images/bootstrap-icons/fullscreen.svg) Enter fullscreen mode.

## Keyboard shortcuts

- `+` Zoom in.
- `-` Zoom out.
- `w` Zoom to fit width.
- `h` Zoom to fit height.
- `c` Zoom to fit content.
- `n` Toggle diagram navigation on/off.
- `f` Enter fullscreen mode.
- `i` Show diagram key/legend.
- `p` Filter by perspective.
- `g` Filter by user-defined tags.
- `d` Toggle element/relationship descriptions on/off.
- `m` Toggle element/relationship metadata on/off.
- `t` Toggle the tooltip on/off (hold the `Alt` key while the tooltip is displayed to enable sticky tooltips).


- `Up arrow` Navigate to the previous diagram.
- `Down arrow` Navigate to the next diagram.
- `Left arrow` Navigate to the next diagram.
- `Right arrow` Navigate to the previous diagram.
- `b` Go back to the last viewed diagram.
- `Space` open quick navigation.

Animation (static diagrams with animations, and dynamic diagrams):

- `.` Step forward.
- `,` Step backward.

## Diagram order

By default, the diagrams in the navigation panel are first sorted by scope (unscoped, followed by software systems by name), and then by diagram type, as follows:

- Unscoped diagrams
    - System landscape diagrams
    - Dynamic diagrams
    - Deployment diagrams
- Software system 1
    - System context diagrams
    - Container context diagrams
    - Component context diagrams
    - Dynamic diagrams
    - Deployment diagrams
- Software system 2
    - System context diagrams
    - Container context diagrams
    - Component context diagrams
    - Dynamic diagrams
    - Deployment diagrams
- etc

A viewset property named `structurizr.sort` can be used to change the sort order:

- `key`: sort by view key
- `type`: sort by view type (e.g. keep all system context views together)
- `created`: sort by creation order (e.g. the order in which views are defined in your DSL)

For example, with the DSL:

```
workspace {

    model {
        ...
    }

    views {
        properties {
            "structurizr.sort" "created"
        }
    }

}
```

## Navigation

### Double-clicking elements

You can double-click diagram elements to "zoom-in" and navigate to:

- Open the diagram at the next level of detail (e.g. system context diagram to container diagram).
- Open documentation associated with the element.
- Open decisions associated with the element.
- Open the URL that is configured by the element's `url` property.
- Open any URLs that are configured by the element's `properties` (name=label; value=url).

When an element has a mix of "zoom-ins", documentation, decsions, and URLs, double-clicking the element will open
a modal from which you can choose where to go next.

#### Zoom-in

Elements with a zoom-in are marked with a ![](/images/bootstrap-icons/zoom-in.svg) symbol.

- Software System: Double-clicking a software system will either take you to the System Context or Container diagram for that software system, if one exists.
- Container: Double-clicking a container will take you to the first Component diagram for that container, if one exists.

#### Documentation

Elements with documentation are marked with a ![](/images/bootstrap-icons/book.svg) symbol.

#### Decisions

Elements with decisions are marked with a ![](/images/bootstrap-icons/journal-text.svg) symbol.

#### URLs

Elements with an associated URL are marked with a ![](/images/bootstrap-icons/link.svg) symbol.
Double-clicking with the `Alt` key pressed will open the URL.
URLs must be valid HTTP/HTTPS URLs (e.g. https://structurizr.com), or they can refer to diagrams, documentation, and
decisions in the same workspace with a syntax of `{workspace}/diagrams`, `{workspace}/documentation`, and
`{workspace}/decisions` respectively.

For example, a URL of `{workspace}/diagrams#key` will be rewritten to something like `/workspace/123/diagrams#key`, based upon where the workspace is hosted (`local` or `server`) and whether the workspace has a [public or sharing link enabled](/server/workspace-sharing). A specific workspace ID can also be provided to link to a different workspace, for example: `{workspace:456}/diagrams`.

### Double-clicking relationships

You can double-click relationships (hold the `Alt` key while in the diagram editor) to open the resource that is
configured by the relationship's `url` property. This is indicated by a ![](/images/bootstrap-icons/link.svg) symbol.