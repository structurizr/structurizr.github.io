---
layout: default
title: Archetypes
parent: DSL
nav_order: 6
permalink: /dsl/archetypes
---

# Archetypes

The archetypes feature provides a way to create user defined types that extend the basic element/relationship types
and optionally add some defaults for descriptions, technology, tags, properties, and perspectives.
The key benefits are as follows:

- Archetypes reduce duplication (define a type once, use it anywhere).
- Archetypes lead to more concise DSL definitions.
- Archetypes allow teams to build their own ubiquitous language on top of the C4 model.

## Element archetypes

Element archetypes can be defined for:

- `person`
- `softwareSystem`
- `container`
- `component`
- `deploymentNode`
- `infrastructureNode`
- `group`
- `element`

For example, you could define archetypes named `application` and `datastore`
that are essentially just aliases for `container`.

```
workspace {

    model {
        archetypes {
            application = container
            datastore = container
        }
        
        softwareSystem "A" {
            webapp = application "Web Application"
            db = datastore "Database Schema"
            
            webapp -> db "Reads from"
        }
    }
    
}
```

Element archetypes can have a set of defaults defined for:

- Description
- Technology (applies to containers and components only)
- Properties
- Perspectives
- Tags
- Metadata (applies to custom elements only)

```
workspace {

    model {
        archetypes {
            application = container {
                technology "Java"
                tag "Application"
            }
            datastore = container {
                technology "MySQL"
                tag "Data Store"
            }
        }
        
        softwareSystem "A" {
            webapp = application "Web Application"
            db = datastore "Database Schema"
            
            webapp -> db "Reads from"
        }
    }
    
}
```

Element archetypes can also be extended:

```
workspace {

    model {
        archetypes {
            application = container {
                technology "Java"
                tag "Application"
            }
            springBootApplication = application {
                technology "Spring Boot"
            }
            datastore = container {
                technology "MySQL"
                tag "Data Store"
            }
        }
        
        softwareSystem "A" {
            webapp = springBootApplication "Web Application"
            db = datastore "Database Schema"
            
            webapp -> db "Reads from"
        }
    }
    
}
```

## Relationship archetypes

Relationship archetypes are also supported, with defaults defined for:

- Description
- Technology
- Properties
- Perspectives
- Tags

```
workspace {

    model {
        archetypes {
            sync = -> {
                tags "Synchronous"
            }
            https = --sync-> {
                technology "HTTPS"
            }
        }
        
        a = softwareSystem "A"
        b = softwareSystem "B"
        
        a --https-> b "Makes APIs calls using"
    }

}
```