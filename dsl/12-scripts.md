---
layout: default
title: Scripts
parent: Structurizr DSL
nav_order: 12
permalink: /dsl/scripts
---

# Scripts

Scripts are like plugins, except they don't need to be compiled before use. JavaScript(*), Kotlin, Groovy, and Ruby are supported out of the box, and you can add more languages via the Java Scripting API.
Scripts can be used at any point in the DSL.

The following variables are available from scripts:

- `context`: a [StructurizrDslScriptContext](https://github.com/structurizr/java/blob/master/structurizr-dsl/src/main/java/com/structurizr/dsl/StructurizrDslScriptContext.java) object with contextual information
- `workspace`: the [Workspace](https://github.com/structurizr/java/blob/master/structurizr-core/src/main/java/com/structurizr/Workspace.java) object
- `element`: the current [Element](https://github.com/structurizr/java/blob/master/structurizr-core/src/main/java/com/structurizr/model/Element.java) object, if the script is used within the scope of an element
- `relationship`: the current [Relationship](https://github.com/structurizr/java/blob/master/structurizr-core/src/main/java/com/structurizr/model/Relationship.java) object, if the script is used within the scope of a relationship
- `view`: the current [View](https://github.com/structurizr/java/blob/master/structurizr-core/src/main/java/com/structurizr/view/View.java) object, if the script is used within the scope of a view

(*) Nashorn (the JVM JavaScript engine) is deprecated, see [https://openjdk.java.net/jeps/372](https://openjdk.java.net/jeps/372) for details.

## Inline scripts

To use an inline script, use the `!script` keyword followed by the language you'd like to use (`groovy`, `kotlin`, `ruby`, or `javascript`). For example, the following Groovy script will create the default set of views, without automatic layout enabled.

```
!script groovy {
    workspace.views.createDefaultViews()
    workspace.views.views.findAll { it instanceof com.structurizr.view.ModelView }.each { it.disableAutomaticLayout() }
}
```

Please note that inline scripts cannot have a line that only contains a closing `}` character.

## External scripts

To use an external script, create a script file next to your DSL file (e.g. `script.kts`).

```
workspace.views.createDefaultViews()
workspace.views.views.forEach { it.disableAutomaticLayout() }
```
 
You can then use your script from the DSL using the `!script` keyword.
 
```
!script script.kts
```

The following file extensions are recognised:

- `.groovy` (Groovy)
- `.kts` (Kotlin)
- `.rb` (Ruby)
- `.js` (JavaScript)

Parameters for external scripts can be specified as follows:

```
!script script.kts {
    name value
}  
```