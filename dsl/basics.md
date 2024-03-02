---
layout: default
title: Basics
parent: Structurizr DSL
nav_order: 2
permalink: /dsl/basics
---

# Basics

## DSL rules

- Lines are processed in order, and forward referencing is not supported (i.e. imperative rather than declarative).
- Line breaks are important; long lines can be split with `\` as the last character on the line.
- Tokens must be separated by whitespace, but the quantity of whitespace/indentation isn't important.
- Keywords are case-insensitive (e.g. you can use `softwareSystem` or `softwaresystem`).
- Double quote characters (`"..."`) are optional when a property/expression contains no whitespace.
- Opening curly brace symbols (`{`) must be on the same line (i.e. the last token of the statement, not on a line of their own).
- Closing curly brace symbols (`}`) must be on a line of their own.
- Opening/closing braces are only required when adding child content.
- Use `""` as a placeholder for an earlier optional property that you'd like to skip.
- Tags are comma separated (e.g. `Tag 1,Tag 2,Tag 3`) - see [Structurizr - Notation](/ui/diagrams/notation) for details of how tags and styling works.

## Workspace rules

In addition, workspaces are subject to the following rules:

- Each view must have a unique "key" (this is generated for you if not specified; __automatically generated view keys are not guaranteed to be stable over time, and you will likely lose [manual layout information](/ui/diagrams/manual-layout) when using them in conjunction with Structurizr Lite/on-premises/cloud__). 
- Software and people names must be unique.
- Container names must be unique within the context of a software system.
- Component names must be unique within the context of a container.
- Deployment node names must be unique with their parent context.
- Infrastructure node names must be unique with their parent context.
- All relationships from a source element to a destination element must have a unique description.

## Implied relationships

```
!impliedRelationships <true|false>
```

The `!impliedRelationships` keyword provides a way to enable or disable whether implied relationships are created.
A value of `false` disables implied relationship creation, while `true` creates implied relationships between all valid combinations of the parent elements, unless any relationship already exists between them
(see [Structurizr for Java - Implied relationships - CreateImpliedRelationshipsUnlessAnyRelationshipExistsStrategy](/java/implied-relationships#createimpliedrelationshipsunlessanyrelationshipexistsstrategy) for more details).

## String constants and variables

The `!constant` (deprecated) and `!const` keyword can be used to define a constant, which can be used with [string substitution](#string-substitution):

```
!const <name> <value>
```

Similarly, `!var` can be used to define a variable, which can later be redefined:

```
!var <name> <value>
```

Constant and variables names may only contain the following characters: `a-zA-Z0-9-_.`

## String substitution

String substitution will take place on any text specified within a token using the `${NAME}` syntax, where `NAME` corresponds to a [string constant/variable](#string-constants-and-variables) or an environment variable.
For example:

```
!const ORGANISATION_NAME "Organisation"
!const GROUP_NAME "Group"

workspace {

    model {
        group "${ORGANISATION_NAME} - ${GROUP_NAME}" {
            user = person "User"
        }
    }

}
```

If a named constant or environment variable cannot be found, the string will not be substituted.
Names may only contain the following characters: `a-zA-Z0-9-_.`

## Comments

Comments can be defined as follows:

```
/*
    multi-line comment
*/
```

```
/* single-line comment */
```

```
# single line comment
```

```
// single line comment
```