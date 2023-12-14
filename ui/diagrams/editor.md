---
layout: default
title: Editor
nav_order: 50
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/editor
has_toc: false
---

# Diagram editor

The layout of a diagram can modified using the browser-based diagram editor,
by clicking the ![Pencil button](../bootstrap-icons/pencil.svg) button when viewing a diagram,
or using the embedded diagram editor when using the browser-based DSL editor. Please note:

- The diagram editor only provides a way to modify the diagram layout, not the content itself.
- You will need to have owner/admin/read-write access to the workspace to edit the diagram layout.
- You will not be able to modify the diagram layout if [automatic layout](/ui/diagrams/automatic-layout) is enabled.

## Diagram layout

By default, Structurizr does not auto-layout your diagram elements, and you have several options.

| ![](images/diagram-layout-1.png) | ![](images/diagram-layout-2.png) |

### 1. Manual layout (recommended)

The diagram layout can be modified by dragging the elements around the diagram canvas in the diagram editor,
and the layout saved using the "Save workspace" button.
This is the recommended approach, because manual layout allows you to precisely position elements where you want them,
consistently across multiple diagrams.

### 2. Auto-layout

Clicking the ![Magic wand button](../bootstrap-icons/magic.svg) button will open the auto-layout modal.

## Canvas size

A number of pre-defined canvas sizes are available from the dropdown list (A5 portrait, landscape, etc).
Alternatively, you can use the following buttons to use a custom canvas size.

- ![](../bootstrap-icons/file-earmark-minus.svg) Decrease canvas size.
- ![](../bootstrap-icons/file-earmark-diff.svg) Auto canvas size.
- ![](../bootstrap-icons/file-earmark-plus.svg) Increase canvas size.

By default, the diagram will stay centred when using the decrease and increase canvas size buttons.
To disable this, hold the `Alt` key while clicking the button.

## Elements

There are a number of toolbar buttons that become enabled when you multi-select elements, which you can do by holding
the `Alt` or `Shift` key while clicking an element, or by using the lasso tool.
The following buttons allow you to align all selected elements with reference to the first element that was selected.

- ![](../bootstrap-icons/align-start.svg) Align selected elements left.
- ![](../bootstrap-icons/align-middle.svg) Align selected elements centre.
- ![](../bootstrap-icons/align-end.svg) Align selected elements right.
- ![](../bootstrap-icons/align-top.svg) Align selected elements top.
- ![](../bootstrap-icons/align-middle.svg) Align selected elements middle.
- ![](../bootstrap-icons/align-bottom.svg) Align selected elements bottom.

You can also horizontally and vertically centre the selected elements on the diagram canvas.

- ![](../bootstrap-icons/grid.svg) Centre diagram or selected elements.

Finally, selected elements can be evenly distributed using the following buttons.

- ![](../bootstrap-icons/distribute-horizontal.svg) Distribute selected elements horizontally.
- ![](../bootstrap-icons/distribute-vertical.svg) Distribute selected elements vertically.

## Relationships

By default, all links between elements are straight lines.
You can add vertices onto a link by clicking the mouse on the link.
The vertex can be moved by dragging the coloured circle, and removed by clicking the cross.

| ![](images/diagram-layout-3.png) | ![](images/diagram-layout-4.png) | ![](images/diagram-layout-5.png)

Moving the mouse cursor over a link will highlight that link.
While highlighted, the `Up` arrow and `Down` arrow keys can be used to move the positioning of the label,
while the `r` key will toggle the routing algorithm between direct, orthogonal, and curved.