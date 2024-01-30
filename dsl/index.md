---
layout: default
title: Structurizr DSL
nav_order: 11
has_children: true
permalink: /dsl
has_toc: false
---

# Structurizr DSL

[![Maven Central](https://img.shields.io/maven-central/v/com.structurizr/structurizr-dsl.svg?label=Maven%20Central)](https://search.maven.org/artifact/com.structurizr/structurizr-dsl)

The Structurizr DSL provides a way to define a software architecture model
(based upon the [C4 model](https://c4model.com)) using a text-based domain specific language (DSL).
The Structurizr DSL has appeared on the
[ThoughtWorks Tech Radar - Techniques - Diagrams as code](https://www.thoughtworks.com/radar/techniques/diagrams-as-code)
and is text-based wrapper around [Structurizr for Java](/java).

There are a number of options for authoring workspaces with the Structurizr DSL.

| Tool                      | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Recommended |
|---------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|
| [Structurizr Lite](/lite) | Structurizr Lite provides a way to quickly work with a single workspace. It's free to use, and allows you to view/edit diagrams, view documentation, and view architecture decision records defined in a DSL workspace. The auto-sync feature provides the ability to sync your local changes with a workspace stored on the Structurizr cloud service or an on-premises installation.                                                                               | Yes         |
| [Structurizr CLI](/cli)   | The Structurizr CLI is a command line utility, designed to be used in conjunction with the Structurizr DSL. It provides the ability to push/pull workspaces to/from the Structurizr cloud service or an on-premises installation, in additional to exporting the views defined in a DSL file to other formats (PlantUML, Mermaid, WebSequenceDiagrams, and Ilograph).                                                                                                | Yes         |
| Browser-based DSL editor  | If you'd rather not use Structurizr Lite or the Structurizr CLI, the Structurizr cloud service/on-premises installation provides a basic online DSL editor. The editor provides some rudimentary syntax highlighting and the ability to use the DSL without installing any tooling, but it does not provide access to the full feature set of the DSL - see the comparison table below. The DSL editor can be opened using the link on your workspace summary page.  | No          |

## Comparison

Here is a comparison of the various authoring tools.

| Feature                                                                            | DSL keyword | Structurizr Lite | Structurizr CLI | Browser-based DSL editor                          |
|------------------------------------------------------------------------------------|-------------|------------------|-----------------|---------------------------------------------------|
| DSL files are stored on local disk, and can be easily added to source code control |             | Yes              | Yes             |                                                   |
| Diagrams                                                                           |             | Yes              | Yes             | Yes                                               |
| Documentation                                                                      | `!docs`     | Yes              | Yes             |                                                   |
| Architecture decision records                                                      | `!adrs`     | Yes              | Yes             |                                                   |
| Branding logo                                                                      | `logo`      | Yes              | Yes             | HTTPS URLs (with CORS headers) and data URIs only |
| Element style icons                                                                | `icon`      | Yes              | Yes             | HTTPS URLs (with CORS headers) and data URIs only |
| Workspace extension                                                                | `extends`   | Yes              | Yes             | HTTPS URLs only                                   |
| DSL includes                                                                       | `!include`  | Yes              | Yes             | HTTPS URLs only                                   |
| Plugins                                                                            | `!plugin`   | Yes              | Yes             |                                                   |
| Scripts                                                                            | `!script`   | Yes              | Yes             |                                                   |
| Export to PlantUML, Mermaid, DOT, WebSequenceDiagrams, and Ilograph                |             |                  | Yes             | [Demo page](https://structurizr.com/dsl) only     |

## Recommended workflow

The recommended workflow is to use Structurizr Lite and/or the Structurizr CLI, and to store your DSL file(s)
in source code control. If you use the browser-based DSL editor, please note that (1) it does not provide access to the full
feature set and (2) you should ensure your DSL is backed up outside of the Structurizr cloud service/on-premises installation.

## Disabling the browser-based DSL editor
If you'd like to disable the online browser-based DSL editor, to ensure that team members don't accidentally use it,
you can set a workspace property named `structurizr.dslEditor` to `false`. For example:

```
workspace {

    properties {
        "structurizr.dslEditor" "false"
    }

    model {
        ...
    }

    views {
        ...
    }

}
```

If you are using the on-premises installation, you can disable the DSL editor for all workspaces via the
`structurizr.properties` file, by setting a property named `structurizr.dslEditor` to `false`.

## Editor and IDE plugins

See [Community tooling](/community) for editor and IDE plugins.

## Links

- [GitHub](https://github.com/structurizr/java/tree/master/structurizr-dsl)
- [Changelog](https://github.com/structurizr/java/blob/master/changelog.md)
