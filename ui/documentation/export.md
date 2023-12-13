---
layout: default
title: Export
nav_order: 50
parent: Documentation
grand_parent: Structurizr UI
permalink: /ui/documentation/export
has_toc: false
---

# Export

The documentation export feature will create a single HTML page that includes all documentation currently being displayed.
Please note that diagrams with a perspective enabled with not be interactive (you'll be missing the tooltips),
and the graph visualisation will be excluded entirely from the export.

## Manual export

When viewing documentation, click the "Export to offline HTML page" link.

## Automated export

Documentation is rendered client-side (i.e. in your web browser), so an automated export is only possible using a web browser
in conjunction with an automation framework such as headless Chrome and Puppeteer.
See the [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) for an example script.

## Notes

This feature may not work if popups are blocked, so please ensure that popups are allowed for `*.structurizr.com`
(or your on-premises/Lite installation) in your web browser.