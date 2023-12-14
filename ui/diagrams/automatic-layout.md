---
layout: default
title: Automatic layout
nav_order: 22
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/automatic-layout
has_toc: false
---

# Automatic layout

Diagrams can have automatic layout enabled, and this is specified when authoring your workspace
(e.g. via the `autolayout` DSL keyword inside a view definition).

## Automatic layout enabled

When trying to edit a diagram that has automatic layout enabled, you will see a message that says
`This diagram is not editable because automatic layout is enabled`, fewer toolbar buttons, and the diagram elements
will be locked in place and cannot be moved.

If the automatic layout doesn't provide good results, you can disable it for the view
(e.g. remove the `autolayout` keyword) and revert to manual layout mode to have complete control over the diagram layout.

## Automatic layout not enabled

When automatic layout is not enabled for a view, you are still able to manually initiate the automatic layout function.
To do this, click the ![](../bootstrap-icons/magic.svg) button in the diagram editor to open the auto-layout modal.
This allows you to choose the auto-layout implementation, and to customise the various properties that are used
when applying the algorithm. Diagram elements are still movable manually after running auto-layout.

## Notes

- You will need to install Graphviz on your computer if you are using the on-premises installation or Lite, and not using pre-built on-premises/Lite Docker images.