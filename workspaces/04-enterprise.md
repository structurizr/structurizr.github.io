---
layout: default
title: Enterprise usage
parent: Workspaces
nav_order: 4
permalink: /workspaces/enterprise
---

# Enterprise usage

This page describes the recommended usage pattern for organisations that want to:

1. Allow engineering teams to manage their diagrams/documentation in a decentralised way.
2. Have a centralised top-down view of the system landscape, from an enterprise architecture perspective.

## Introduction

Let's set the scene. You're a member of team A in a large organisation, building a software system named "A". You've adopted the C4 model, and you've chosen to use the Structurizr tooling to create some software architecture diagrams, specifically the [Structurizr DSL](/dsl) to author your workspace and Structurizr [local](/local) to render the diagrams. This is the "[create with local, view with local](/getting-started/local-local)" workflow.

Software system A has some integration points with a couple of other software systems, named "B" and "C", owned by teams B and C respectively, but you're only modelling the internal details (i.e. C4 containers and components) of your own software system. You store your `workspace.dsl` file in your git repo, next to your source code. It might look something like this ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/standalone/01-team-a/workspace.json)):

```
workspace "A" {

    !identifiers hierarchical

    model {
        a = softwareSystem "A" "A description of software system A." {
            app = container "Web Application" {
                technology "Java and Spring Boot"
            }
            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            app -> db "Reads from and writes to"
        }

        b = softwareSystem "B" "A description of software system B."
        c = softwareSystem "C" "A description of software system C." 

        a.app -> b "Requests data of type B from"
        a.app -> c "Requests data of type C from"
    }
    
    views {
        systemContext a "SystemContext" {
            include *
        }

        container a "Containers" {
            include *
        }

        styles {
            element "Database" {
                shape cylinder
            }
        }
    }

    configuration {
        scope softwaresystem
    }
    
}
```

Teams B and C are impressed with your software architecture diagrams and want to know more, so you tell them about the C4 model and show them your Structurizr DSL code. They see that the DSL is a convenient way to describe software architecture, and decide they want to adopt it too. Rather than describe the internal details of all software systems in a single workspace, you decide to follow the [recommendation](/workspace/recommendations) and describe each software system in a separate [software system scoped workspace](/workspaces/scope). To assist, you provide a copy of your `workspace.dsl` file that teams B and C can use as a starting point, along with some instructions to start Structurizr local.

A few days later, all three teams have a set of software architecture diagrams, created from their own `workspace.dsl` file, which is stored alongside the source code in the team's own git repo.

- Team A's `workspace.dsl` file ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/standalone/01-team-a/workspace.json))
- Team B's `workspace.dsl` file ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/standalone/02-team-b/workspace.json))
- Team C's `workspace.dsl` file ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/standalone/03-team-c/workspace.json)):


Each team realises that it might be useful for them to see the diagrams produced by the other teams, but unfortunately they don't have access to the git repos owned by those other teams where the `workspace.dsl` files are stored. Rather than centralise all `workspace.dsl` files in a new git repo, somebody decides to install the Structurizr [server](/server), and asks each team to publish their workspace to it via the [push](/push) command. This keeps all `workspace.dsl` files next to the source code in each team's git repo, but provides a way for anybody in the organisation to view the diagrams via their web browser. This is the "[create with local, publish to server](/getting-started/local-server)" workflow.

Team A might use a command like the following to push their `workspace.dsl` file to workspace `1` on the server:

```
push -url https://structurizr.example.com -key 11111111 -id 1 -workspace workspace.dsl
```

Team A has decided to integrate the [push](/push) command into the build pipeline to publish the workspace to the [server](/server) installation automatically after each commit. Teams B (workspace `2`) and C (workspace `3`) have a plan to do this in the future, but are currently happy to manually push their workspaces from the command line.

## Don't repeat yourself

This all works well, with each team having a `workspace.dsl` file stored in their git repo next to the source code. However, somebody realises that the definitions of software systems A, B, and C are being duplicated across each `workspace.dsl` file by each team. Although this isn't an issue now, it could become an issue if any of the details (name, description, etc) of those software systems change in the future, as those changes will need to be replicated across all workspaces, which are owned by different teams, and stored in different git repos.

One potential solution to this problem is to ask each team to create a Structurizr DSL fragment to describe their software system, which can then be included (via `!include`) into other workspace definitions across the organisation. For example, each team could create a `software-system.dsl` file to describe their software system, and publish it via a well-known path in their git repo (e.g. `docs/software-system.dsl`) for other teams to use.

This seems a reasonable idea, but it assumes all teams use repos in the same way. In reality though, some teams may split their code across multiple repos, while others may use a monorepo to host the code for multiple systems/services. That aside, having all of these DSL fragments scattered across version control raises the issue of actually retrieving them. This is relatively straightforward if all repos are public, less so if any degree of authentication is required. Further discussion of how to solve these issues inevitably raises the following questions:

- Should the `software-system.dsl` files describe software system internals (e.g. containers and components)?
- Should `software-system.dsl` files declare relationships with other software systems? If yes, should we `!include` those other `software-system.dsl` files, or require the consumer to do this instead?
- Would `git` submodules help to assemble all required DSL fragments?
- etc

Heading down this path to resolving the duplication problem usually leads towards something like:

> Let's create a new repo for all Structurizr DSL files that will contain one subdirectory per software system in the organisation, and we'll ask the owning team to contribute a `software-system.dsl` file to describe it. At the root of that repo will be a single `workspace.dsl` file that will `!include` every `software-system.dsl` file in the repo. This will resolve the duplication issue, with the added benefit that we will have a single software architecture model covering all software systems across the organisation, which in turn provides an easy way to generate a single system landscape diagram.

This sounds very appealing, and can work for smaller organisations and across a small number of teams, but rapidly breaks down at scale for a number of reasons.

1. Large workspaces: The Structurizr tooling was never designed to handle workspaces that contain hundreds or thousands of software systems (plus all of their containers, components, documentation, etc).
2. Ordering and duplication issues: The DSL parser is a wrapper around the Structurizr for Java library, and is therefore imperative rather than declarative. This means that the order of lines in the DSL file is important, so you can't declare a relationship between two elements before you have defined those two elements. The net result is that you will likely run into ordering and duplication problems at some point when you try to assemble a single workspace from tens or hundreds of included DSL fragments.
3. Many points of failure: Centralising all DSL fragments means that an error in any of them will cause the entire workspace generation process to fail. Collective ownership often results in a situation where nobody feels responsible or accountable for resolving issues, irrespective of who caused them, particularly when deadlines are tight and documentation/diagrams are deemed a lower priority task. This ultimately may lead to the software architecture model becoming outdated or discarded.
4. It limits what teams can do: Centralising all DSL fragments potentially limits what individual teams can do. For example, imagine that one team wants to use the Java component finder to automatically identify components in their codebase. Should they add this component finder code to the centralised `software-system.dsl` file? If so, they will also need to add the compiled Java code to the repo so that the component finder will work, which adds complexity to the workspace generation process. The same applies to any team wanting to use Groovy/Kotlin/JRuby scripts or Java plugins to programmatically build their software architecture models (e.g. by reverse-engineering their cloud environment). They need to ensure that people outside their team can run that code too.

"Value composition over inheritance" is a good piece of advice for many problems in software engineering, but it doesn't work here. The `!include` keyword is designed for *small scale usage*, for example to [include a shared component inside multiple containers](/dsl/cookbook/shared-components/). It's not designed to be used across an entire organisation as a mechanism for building an "uber workspace". There is a better solution.

## Step 1: Create a system catalog

The first step is to extract all software system definitions into a new Structurizr DSL file, to essentially create a "system catalog" (i.e. a catalog of all known software systems). An important point to note here is that only the software system definitions should be included in this system catalog (name, description, properties, other metadata, etc). The internal details (e.g. C4 containers and components) should be omitted. For example ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/system-catalog/system-catalog.dsl)):

```
workspace {

    model {
        a = softwareSystem "A" {
            description "A description of software system A."
        }
        b = softwareSystem "B" {
            description "A description of software system B."
        }
        c = softwareSystem "C" {
            description "A description of software system C."
        }
    }
    
}
```

Now we have a couple of other questions that need consideration. The first relates to who should maintain/own this file. Every organisation will have a different view here, but there are a number of possible approaches ranging from a centralised Enterprise Architecture team having ownership of the system catalog through to a decentralised approach where all engineering teams treat it as a collectively owned and shared open source artefact.

The second question relates to where this file is stored. To keep things simple, just publish it somewhere that is accessible via an anonymous HTTPS request. This could be on a web server or via a GitHub raw URL, for example.

> Note: Creating a system catalog isn't required, but it does provide a way to enforce a consistent set of people and software systems across all workspaces.

## Step 2: Extend the system catalog

Step 2 is to refactor the existing `workspace.dsl` files to extend the system catalog, which provides an easy way to reuse those software system definitions and make them available to each workspace. You can then use the Structurizr DSL's [!element](/dsl/language#element-1) keyword to extend a particular software system in order to add the internal details (e.g. C4 containers and components).

Here is team A's refactored `workspace.dsl` file ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/system-catalog/01-team-a/workspace.json)):

```
workspace extends https://docs.structurizr.com/examples/enterprise/system-catalog/system-catalog.dsl {

    name "A"

    !identifiers hierarchical

    model {
        !element a {
            app = container "Web Application" {
                technology "Java and Spring Boot"
            }
            db = container "Database Schema" {
                technology "MySQL"
                tag "Database"
            }

            app -> db "Reads from and writes to"
        }

        a.app -> b "Requests data of type B from"
        a.app -> c "Requests data of type C from"
    }
    
    views {
        systemContext a "SystemContext" {
            include *
        }

        container a "Containers" {
            include *
        }

        styles {
            element "Database" {
                shape cylinder
            }
        }
    }

    configuration {
        scope softwaresystem
    }
    
}
```

Similar changes have been made to team B's `workspace.dsl` file ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/system-catalog/02-team-b/workspace.json)) and team C's `workspace.dsl` file ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/system-catalog/03-team-c/workspace.json)).

You effectively have the same workspaces and diagrams as before, with the added benefit that the software system definitions are shared across each workspace.

## Step 3: Generate a centralised system landscape view

Generating a top-down system landscape view is now relatively straightforward - it's just the superset of all software systems (and people, if you want to include them) plus the relationships between them, across all workspaces published to the Structurizr [server](/server).

### Pull all workspaces from the Structurizr server

Assuming that you have the [admin API](/server/admin-api) enabled, use the [pull](/pull) command to pull all workspaces and store them in a folder named `workspaces`:

```
pull -url https://structurizr.example.com -key 1234567890 -output workspaces
```

This will result in three JSON files in the `workspaces` directory, one for each workspace on the server:

- `structurizr-1-workspace.json` (team A)
- `structurizr-2-workspace.json` (team B)
- `structurizr-3-workspace.json` (team C)

### Generate a system landscape workspace

Use the `generate system-landscape` command to clone all people, software systems, and relationships into a new workspace:

```
generate system-landscape -input workspaces -output system-landscape.json
```

### Create a system landscape DSL file

The `system-landscape.json` file created in the previous step includes all people, software systems, and relationships. It doesn't include any views though. We can create a new `workspace.dsl` file to define one or more views, based upon how we'd like to view the landscape ([render in playground](https://playground.structurizr.com?src=https://docs.structurizr.com/examples/enterprise/system-catalog/04-system-landscape/workspace.json)):

```
workspace extends system-landscape.json {

    views {
        systemLandscape "SystemLandscape" {
            include *
        }
    }

}
```

### Push the system landscape file to the server

Create a new workspace on the server (via the UI or the [create](/create) command), and use the [push](/command) to push the new `workspace.dsl` file to the server:

```
push -url https://structurizr.example.com -key 44444444 -id 4 -workspace workspace.dsl
```

## Summary

This page has described how to use Structurizr to allow engineering teams to manage their diagrams/documentation in a decentralised way, while still allowing a top-down centralised "enterprise architecture" view to be created. It used a combination of [workspace extension](/dsl/cookbook/workspace-extension/) to create a system catalog, the Structurizr [server](/server) to act as a central architecture repository, and the [generate system-landscape](/generate#system-landscape) command.