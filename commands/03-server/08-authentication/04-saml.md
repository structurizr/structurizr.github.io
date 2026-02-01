---
layout: default
title: SAML
grand_parent: server
parent: Authentication
nav_order: 4
permalink: /server/authentication/saml
---

> This feature is not available in the open core - see [server](/server) for details.

# Single sign-on with your Identity Provider via SAML 2.0

Single sign-on is supported via SAML 2.0 integration with an Identity Provider (IdP).
There are teams using this in conjunction with Auth0, Okta, Keycloak, PingFederate, and Microsoft Azure Active Directory.

## Configuration

| Name                | Value                                                                                                                                   |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| `structurizr.authentication` | `saml`                                                                                                                                           |
| `structurizr.saml.metadata` | The URL where your IdP XML metadata can be found                                                                                                 |
| `structurizr.saml.entityId` | The SAML Entity ID that you are using to identify the Structurizr server (configured with your Identity Provider)                                |
| `structurizr.saml.registrationId` | The SAML registration ID (default=`structurizr`)                                                                                                 |
| `structurizr.saml.attribute.username` | The name of the SAML attribute used to obtain the user's username (default=`http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`) |
| `structurizr.saml.attribute.role` | The name of the SAML attribute used to obtain the user's roles (default=`http://schemas.xmlsoap.org/claims/Group`)                               |
| `structurizr.saml.signing.certificate` | Signing certificate filename (default=)                                                                                                          |
| `structurizr.saml.signing.privateKey` | Private key filename (default=)                                                                                                                  |

The basic steps are:

1. Register the Structurizr server with your Identity Provider. When doing this, you will need a "Reply URL", which is of the form `{structurizr.url}/login/saml2/sso` (e.g. `http://localhost:8080/login/saml2/sso`). Some users have reported needing to include the `registrationId`, making a URL of the form `{structurizr.url}/login/saml2/sso/{registrationId}` instead (e.g. `http://localhost:8080/login/saml2/sso/structurizr`). 
2. Map the IdP username to a SAML attribute named `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`
3. Map the IdP roles/groups to a SAML attribute named `http://schemas.xmlsoap.org/claims/Group`
4. If your identity provider requires signed SAML requests, place a copy of the signing certificate and private key into your Structurizr data directory (e.g. `signing.cer` and `signing.key`).

See [Spring Security - SAML 2.0 Login Overview](https://docs.spring.io/spring-security/reference/6.5/servlet/saml2/login/overview.html) for more information about how SAML integration works. If you make any changes to the SAML configuration, you will need to restart the server.

## Troubleshooting

The variation between identity providers and how organisations configure identity providers can make it difficult
to configure SAML integration, and even the smallest misconfiguration can cause errors, most of which you'll see in
the logs as a HTTP 405 (`Request method 'POST' not supported`) or HTTP 500 message.
Some recommended steps to resolve this are:

1. Configure a non-secure (i.e. HTTP) `localhost` instance of the server against your IdP to ascertain whether the problems you are seeing are related to your hosting environment (i.e. HTTPS, load balancers, reverse proxies, DNS, etc).
2. Debug the SAML handshake with one of the available browser plugins.
3. Enable debug on the server installation to see the underlying error message (see [Configuration - Logging](/server/configuration#logging)).
