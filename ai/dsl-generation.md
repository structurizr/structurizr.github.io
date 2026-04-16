---
layout: default
title: DSL generation
parent: AI + MCP
nav_order: 2
permalink: /ai/dsl-generation
---

# Structurizr DSL generation

## From diagrams

AI can be used to convert a hand-drawn system context diagram into a Structurizr DSL definition. Here's a photo of a diagram from a [C4 model workshop](https://simonbrown.je/#workshops):

[![](/images/ai/dsl-generation/system-context.jpg)](/images/ai/dsl-generation/system-context.jpg)

> Convert this diagram to Structurizr DSL.

[![](/images/ai/dsl-generation/1.png)](/images/ai/dsl-generation/1.png)

[![](/images/ai/dsl-generation/2.png)](/images/ai/dsl-generation/2.png)

Here's the resulting output when pasted into the Structurizr playground:

[![](/images/ai/dsl-generation/3.png)](/images/ai/dsl-generation/3.png)

[![](/images/ai/dsl-generation/4.png)](/images/ai/dsl-generation/4.png)

Now we can add the containers from a separate diagram:

[![](/images/ai/dsl-generation/containers.jpg)](/images/ai/dsl-generation/containers.jpg)

> Add the containers.

[![](/images/ai/dsl-generation/5.png)](/images/ai/dsl-generation/5.png)

[![](/images/ai/dsl-generation/6.png)](/images/ai/dsl-generation/6.png)

And here's the resulting output:

[![](/images/ai/dsl-generation/7.png)](/images/ai/dsl-generation/7.png)

## From prompts

Here's an example chat session with minimal prompting. A little cleanup is required, but it's a good starting point:

[![](/images/ai/dsl-generation/8.png)](/images/ai/dsl-generation/8.png)

And here's the output when the generated DSL is pasted into the Structurizr playground:

[![](/images/ai/dsl-generation/9.png)](/images/ai/dsl-generation/9.png)
