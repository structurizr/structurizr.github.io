---
layout: default
title: Client-side encryption
parent: Structurizr cloud service
nav_order: 23
permalink: /cloud/client-side-encryption
---

# Client-side encryption

Your workspace is stored on the cloud service using AES encryption with a 128-bit key, a random salt and a server-side passphrase.
For additional peace of mind, you can choose to encrypt your workspace with your own passphrase on the client before uploading it.

In order to view a client-side encrypted workspace, you will be asked to enter your passphrase when you open the workspace in your web browser.
The passphrase is then used to decrypt the workspace in your web browser.
At no point does the passphrase leave your computer, and your data will be irretrievable if you forget your passphrase.

For increased usability, and to prevent you from needing to enter the passphrase every time the workspace is opened,
you can opt to save the passphrase in your web browser's local storage.
This is stored as plaintext, so should only be used if you don't share your browser profile.

## Example

Here is [an example of a client-side encrypted workspace](https://structurizr.com/public/41) - the password is `password`.

## Adding client-side encryption

Client-side encryption can be enabled via the [CLI push command](/cli/push) or the workspace settings page.

## Changing the client-side encryption passphrase

The client-side encryption passphrase can be changes via the workspace settings page.
Please note that you can only modify client-side encryption when the workspace is unlocked.

## Removing client-side encryption

Client-side encryption can be removed via the workspace settings page.
Please note that you can only remove client-side encryption when the workspace is unlocked.

## Notes

- This is a paid cloud service feature.
- Some features will become unavailable when you enable client-side encryption; including the full-text search, automatic layout with Graphviz, and automatic PNG image generation used for the image embed feature.