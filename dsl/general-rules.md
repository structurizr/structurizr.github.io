---
layout: default
title: General rules
parent: Structurizr DSL
---

# General rules

- Line breaks are important; long lines can be split with `\` as the last character on the line.
- Lines are processed in order.
- Tokens must be separated by whitespace, but the quantity of whitespace/indentation isn't important.
- Keywords are case-insensitive (e.g. you can use `softwareSystem` or `softwaresystem`).
- Double quote characters (`"..."`) are optional when a property/expression contains no whitespace.
- Opening curly brace symbols (`{`) must be on the same line (i.e. the last token of the statement, not on a line of their own).
- Closing curly brace symbols (`}`) must be on a line of their own.
- Opening/closing braces are only required when adding child content.
- Use `""` as a placeholder for an earlier optional property that you'd like to skip.
- Tags are comma separated (e.g. `Tag 1,Tag 2,Tag 3`) - see [Structurizr - Notation](https://structurizr.com/help/notation) for details of how tags and styling works.

In addition, workspaces are subject to the following rules:

- Each view must have a unique "key" (this is generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](https://structurizr.com/help/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__). 
- Software and people names must be unique.
- Container names must be unique within the context of a software system.
- Component names must be unique within the context of a container.
- Deployment node names must be unique with their parent context.
- Infrastructure node names must be unique with their parent context.
- All relationships from a source element to a destination element must have a unique description.

