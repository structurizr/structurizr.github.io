---
layout: default
title: Structurizr on-premises
nav_order: 14
has_children: true
permalink: /onpremises
has_toc: false
---

# Structurizr on-premises

The Structurizr on-premises installation is a standalone version of Structurizr that can be run locally on your own infrastructure.
It's a Java EE/Spring 5 web application, packaged as a `.war` file, for deployment into any compatible Java EE server, such as Apache Tomcat 9.
For ease of deployment, by default, all data is stored on the local file system.

## Notes

The on-premises installation will switch to Jakarta EE/Spring 6/Tomcat 10 in early 2024.
If you would to preview this upcoming version:

- Source: [jakarta-ee branch](https://github.com/structurizr/onpremises/tree/jakarta-ee)
- Docker image: `structurizr/onpremises:preview`

If you're using the SAML integration, this will need to be reconfigured;
see [SAML authentication - Preview build](/onpremises/authentication/aml#preview-build-spring-6tomcat-10) for details.

## Links

- [Structurizr UI](/ui) (for information about diagrams, documentation, decisions, explorations, etc)
- [GitHub](https://github.com/structurizr/onpremises)