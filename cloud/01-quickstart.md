---
layout: default
title: Quickstart
parent: Structurizr cloud service
nav_order: 1
permalink: /cloud/quickstart
---

# Quickstart

Here’s a quick getting started guide to using the Structurizr cloud service.

## 1. Sign up for an account

Before you can do anything, you will need to sign up for a free Structurizr account using the [sign up page](https://structurizr.com/signup).

## 2. Sign in

Once you've signed up for an account, you can [sign in](https://structurizr.com/dashboard) to get to your dashboard.

## 3. Create a workspace

Next, create a new workspace by clicking the "New workspace" link on your dashboard.
This will create a new empty workspace, which will be used to store your software architecture model, diagrams, and documentation.

## 4. Author your workspace

You now have a choice of how you would like to create the software architecture model in your workspace:

1. Pushing a Structurizr DSL file via the [workspace API](/cloud/workspace-api) using the [Structurizr CLI push command](/cli/push) (recommended).
2. Pushing a workspace created using one of the code-based client libraries (e.g. [Structurizr for Java](https://github.com/structurizr/java)) via the [workspace API](/cloud/workspace-api).
3. Using the browser-based DSL editor (not recommended - [it doesn't support the full feature set](/dsl#comparison)).

Although not the recommended approach, to get started quickly, click the "DSL editor" link on your workspace summary page - this provides a way to define your workspace using the 
[Structurizr DSL](/dsl).
