---
layout: default
title: Export
grand_parent: server
parent: Documentation
nav_order: 4
permalink: /server/documentation/export
---

# Export

The documentation export feature will create a single HTML page that includes all documentation currently being displayed. Please note that diagrams with a perspective enabled with not be interactive (you'll be missing the tooltips), and the graph visualisation will be excluded entirely from the export.

## Manual export

When viewing documentation, click the ![HTML filetype](/images/bootstrap-icons/filetype-html.svg) link. This feature may not work if popups are blocked, so please ensure that popups are allowed in your web browser.

## Automated export

Documentation is rendered client-side (i.e. in your web browser), so an automated export is only possible using a web browser
in conjunction with an automation framework such as headless Chrome and Puppeteer.
See the [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) for an example script.
