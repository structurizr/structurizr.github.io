---
layout: default
title: SAML
grand_parent: Structurizr on-premises
parent: Authentication
nav_order: 3
permalink: /onpremises/authentication/aml
---

# Single sign-on with your Identity Provider via SAML 2.0

Single sign-on is supported via SAML 2.0 integration with an Identity Provider (IdP).
There are teams using this in conjunction with Auth0, Okta, Keycloak, PingFederate, and Microsoft Azure Active Directory.

## Release builds (Spring 5/Tomcat 9) 

To configure SAML integration:

- Add `structurizr.authentication=saml` to your `structurizr.properties` file.
- The `structurizr.url` property in the `structurizr.properties` file should be set to the URL where Structurizr is installed (e.g. `http://localhost:8080`).
- Register the Structurizr on-premises application with your Identity Provider. When doing this, you will need a "Reply URL", which is of the form `{structurizr.url}/saml/SSO` (e.g. `http://localhost:8080/saml/SSO`).
- Add a `structurizr.saml.entityId` property to your `structurizr.properties` file, set to the SAML Entity ID that you are using to identify the Structurizr on-premises installation (configured with your Identity Provider when setting up the application/client in the previous step).
- A copy of your Identity Provider's SAML metadata (XML format) should be saved to a file called `saml-idp-metadata.xml` in your Structurizr data directory.
- Map the IdP username to a SAML attribute named `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`
- Map the IdP roles/groups to a SAML attribute named `http://schemas.xmlsoap.org/claims/Group`

## Preview build (Spring 6/Tomcat 10)

To configure SAML integration:

- Add `structurizr.authentication=saml` to your `structurizr.properties` file.
- Register the Structurizr on-premises application with your Identity Provider. When doing this, you will need a "Reply URL", which is of the form `{structurizr.url}/login/saml2/sso` (e.g. `http://localhost:8080/login/saml2/sso`).
- Add a `structurizr.saml.entityId` property to your `structurizr.properties` file, set to the SAML Entity ID that you are using to identify the Structurizr on-premises installation (configured with your Identity Provider when setting up the application/client in the previous step).
- Add a `structurizr.saml.metadata` property to your `structurizr.properties` file, set to the URL where your IdP XML metadata can be found.
- Map the IdP username to a SAML attribute named `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`
- Map the IdP roles/groups to a SAML attribute named `http://schemas.xmlsoap.org/claims/Group`

If your identity provider requires signed SAML requests:

1. Place a copy of the signing certificate and private key into your Structurizr data directory (e.g. `signing.cer` and `signing.key`).
2. Add two more additional properties to your `structurizr.properties` file:
   - `structurizr.saml.signing.certificate=signing.cer`
   - `structurizr.saml.signing.privateKey=signing.key`

## Notes

- If you make any changes to the SAML configuration, you will need to restart the on-premises installation.