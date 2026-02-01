---
layout: default
title: Diagram editor
grand_parent: server
parent: Diagrams
nav_order: 2
permalink: /server/diagrams/editor
---

# Diagram editor

The layout of a diagram can be modified using the browser-based diagram editor,
by clicking the ![Edit diagram button](/images/bootstrap-icons/pencil.svg) button when viewing a diagram, or using the embedded diagram editor when using the browser-based DSL editor. Please note:

- The diagram editor only provides a way to modify the diagram layout, not the content itself.
- You will need to have write access to the workspace to edit the diagram layout.
- You will not be able to modify the diagram layout if automatic layout is enabled.

![Structurizr diagram editor](/images/diagram-editor.png)

## Diagram layout

Manual layout is the default when automatic layout is not configured for a view (e.g. via the DSL `autolayout` keyword). Structurizr will apply automatic layout if a view does not have any layout information associated with it. After this, the diagram layout can be modified by dragging the elements around the diagram canvas in the diagram editor, and the layout saved using the ![Save workspace button](/images/bootstrap-icons/folder-check.svg) button.

Clicking the ![Magic wand button](/images/bootstrap-icons/magic.svg) button will open the auto-layout modal, allowing you to manually apply the automatic layout algorithm.

> The Dagre library is used for automatic layout. It generally does a good job, but isn't perfect and may fail on diagrams that include lots of nested elements.

## Canvas size

You can use the following buttons to change the diagram canvas size.

- ![](/images/bootstrap-icons/file-earmark-minus.svg) Decrease canvas size.
- ![](/images/bootstrap-icons/file-earmark-diff.svg) Auto canvas size.
- ![](/images/bootstrap-icons/file-earmark-plus.svg) Increase canvas size.

By default, the diagram will stay centred when using the decrease and increase canvas size buttons. To disable this, hold the `Alt` key while clicking the button.

## Elements

There are a number of toolbar buttons that become enabled when you multi-select elements, which you can do by holding
the `Alt` or `Shift` key while clicking an element, or by using the lasso tool. The following buttons allow you to align all selected elements with reference to the first element that was selected.

- ![](/images/bootstrap-icons/align-start.svg) Align selected elements left.
- ![](/images/bootstrap-icons/align-middle.svg) Align selected elements centre.
- ![](/images/bootstrap-icons/align-end.svg) Align selected elements right.
- ![](/images/bootstrap-icons/align-top.svg) Align selected elements top.
- ![](/images/bootstrap-icons/align-middle.svg) Align selected elements middle.
- ![](/images/bootstrap-icons/align-bottom.svg) Align selected elements bottom.

You can also horizontally and vertically centre the selected elements on the diagram canvas.

- ![](/images/bootstrap-icons/grid.svg) Centre diagram or selected elements.

Finally, selected elements can be evenly distributed using the following buttons.

- ![](/images/bootstrap-icons/distribute-horizontal.svg) Distribute selected elements horizontally.
- ![](/images/bootstrap-icons/distribute-vertical.svg) Distribute selected elements vertically.

To bring all elements back on to the diagram canvas, open the automatic layout modal and click the ![](/images/bootstrap-icons/magnet.svg) button.

## Relationships

By default, all links between elements are straight lines.
You can add vertices onto a link by clicking the mouse on the link. The vertex can be moved by dragging the coloured circle, and removed by double-clicking the vertex.

Moving the mouse cursor over a link will highlight that link. While highlighted:

- `Up` and `Down` arrows can be used to move the positioning of the label.
- `r` will toggle the routing algorithm between direct, orthogonal, and curved.
- `j` will toggle line jumps.

To remove all vertices from all relationships, open the automatic layout modal and click the ![](/images/bootstrap-icons/arrow-up-right.svg) button.