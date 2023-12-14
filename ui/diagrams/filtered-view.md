---
layout: default
title: Filtered view
nav_order: 19
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/filtered-view
has_toc: false
---

# Filtered view

A filtered view represents "a view on top of another view", which can be used to filter (include or exclude) specific
elements and/or relationships, based upon their tag. In summary, you create a view with all the elements and
relationships that you want to show, and then create one or more filtered views on top, specifying the tags that
you'd like to include or exclude. The main benefit of using filtered views is that element and relationship positions
are shared between the filtered views.

## Example

A typical usage scenario is something like showing the current state vs future state. Here we might define a single
System Landscape view, with two filtered views on top; one showing the current state, and the other showing future state.

### Current state

User uses Software System A for tasks 1 and 2.

![](images/filtered-views-1.png)

### Future state

Software System B will be introduced in the future to fulfil task 2.

![](images/filtered-views-2.png)

## Notes

- Filtered views can be created on top of static views only; i.e. System Landscape, System Context, Container, and Component views.
- Once a filtered view is defined for a given "base view", that base view will no longer show up in your diagram list. This is by design. If you'd like to see the base view too, just create another filtered view for the same base view, which includes the `Element` and `Relationship` tags.

<script type="text/javascript" src="https://static.structurizr.com/js/structurizr-embed.js"></script>