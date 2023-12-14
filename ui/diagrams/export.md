---
layout: default
title: PNG/SVG export
nav_order: 48
parent: Diagrams
grand_parent: Structurizr UI
permalink: /ui/diagrams/export
has_toc: false
---

# Export

Structurizr allows you to export your software architecture diagrams as high resolution PNG and SVG formats,
which are suitable for using in documents, presentations and printing.

## Manual export

When viewing a diagram, click the ![graph button](../bootstrap-icons/filetype-png.svg) or ![graph button](../bootstrap-icons/filetype-svg.svg) button to open the export dialog.

## Automated export

Diagrams are rendered client-side (i.e. in your web browser), so an automated export is only possible using a web browser
in conjunction with an automation framework such as headless Chrome and Puppeteer.
See the [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) for an example script.

## Notes

This feature may not work if popups are blocked, so please ensure that popups are allowed for `*.structurizr.com`
(or your on-premises/Lite installation) in your web browser.