---
layout: default
title: Diagram review
parent: Structurizr cloud service
nav_order: 41
permalink: /cloud/diagram-review
---

# Diagram review

Structurizr's diagram review feature allows you to package up one or more diagrams for review by other people.
It's designed to offer a quick and lightweight immutable review process, so there's no support for "resolving" comments,
or having threaded discussions, for example. It's ideal for a quick general diagram review, a remote risk-storming session,
or a STRIDE review. The review feature can be used with diagrams from your workspace, or any other PNG/JPG files.

[![Diagram review](images/diagram-review.png)](https://structurizr.com/review/f722bf0c-1e52-4ef0-bcb1-9fc2f1612cf4)

## Creating a review from diagrams in a workspace

While viewing the diagram viewer/editor (with a `/workspace/...` URL, not a `/share/...` URL),
click the ![comment](../ui/bootstrap-icons/chat.svg) button to open the review modal, from where you can select one or more diagrams to be included in the review.

Diagram reviews from workspaces can be created as "public" or "private":

- Public: The diagram review will be accessible by unauthenticated users.
- Private: The diagram review will be accessible in accordance with the [workspace visibility](/cloud/workspace-visibility) and [role-based access](/cloud/role-based-access) settings:
  - Private: The diagram review will be accessible by authenticated users, if they have access to the workspace via the role-based access mechanism.
  - Public: The diagram review will be accessible by unauthenticated users.

## Creating a review from other diagrams

You can also create a review using other PNG/JPG files using the "New diagram review" link on your dashboard.

## Sharing the review, and commenting

Each review has a unique URL (e.g. `https://structurizr.com/review/{token}`), which you'll be forwarded to after
creating the review. This URL can be given to anybody who you'd like to comment on your diagrams.

Each time somebody visits your review page, they will start a review session in which comments can be added.
Click the mouse somewhere on the diagram, and a modal window will open for a new comment.
Comments can be moved around the diagram by dragging them, and edited by clicking on them.
To delete a comment, just remove its text.

New comments created during that review session can be submitted by clicking the "Submit comments" button.

Once submitted, comments cannot be modified. If a user is signed in to Structurizr, the comment author will be the name
in their user profile. If not signed in, or no name is set, the comment author will be anonymous.

As the review creator, you will receive an e-mail notification when new comments are received.

## Notes

- This is a paid cloud service feature.