---
layout: default
title: Dark mode
parent: Structurizr UI
nav_order: 12
permalink: /ui/dark-mode
---

# Dark mode

Structurizr supports dark mode, determined automatically from your web browser settings.
The only exception to this is diagram rendering.
When in dark mode, diagrams are still rendered with a white background. To change this, click the
![](bootstrap-icons/moon.svg) 
button in the diagram editor/viewer. This will change the diagram rendering to dark mode,
and set a cookie named `structurizr.darkMode` so that diagrams (including embedded diagrams)
are rendered in dark mode in the future.
The PNG/SVG/HTML diagram exports will reflect dark mode too.

|--|--|
| ![](images/dark-mode-1.png) | ![](images/dark-mode-2.png) |

Please note that diagram dark mode will not change any element or relationship styles, so you may need to modify these
so that your diagrams render correctly in both light and dark modes.