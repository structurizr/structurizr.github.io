---
layout: default
title: SAML
grand_parent: Structurizr on-premises
parent: Authentication
nav_order: 3
permalink: /onpremises/authentication/saml
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

### Max authentication age

By default, Spring Security checks that you've been authenticated with your IdP within the past 2 hours (7200 seconds).
If this value is too low, you can override it via a property named `structurizr.saml.maxAuthenticationAge` in your `structurizr.properties` file (the value is the number of seconds, e.g. 86400 seconds for 24 hours).

### Force authentication

If you see intermittent HTTP 405 errors when trying to sign in (particularly after signing in already),
you can set Structurizr to force authentication by setting a property named `structurizr.saml.forceAuthentication`
in your `structurizr.properties` file (`true`, or `false` by default).

## Preview build (Spring 6/Tomcat 10)

To configure SAML integration with the preview build available via the `structurizr/onpremises:preview` Docker image:

- Add `structurizr.authentication=saml` to your `structurizr.properties` file.
- Register the Structurizr on-premises application with your Identity Provider. When doing this, you will need a "Reply URL", which is of the form `{structurizr.url}/login/saml2/sso` (e.g. `http://localhost:8080/login/saml2/sso`).
- Add a `structurizr.saml.metadata` property to your `structurizr.properties` file, set to the URL where your IdP XML metadata can be found.
- Map the IdP username to a SAML attribute named `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`
- Map the IdP roles/groups to a SAML attribute named `http://schemas.xmlsoap.org/claims/Group`

If your identity provider requires signed SAML requests:

1. Place a copy of the signing certificate and private key into your Structurizr data directory (e.g. `signing.cer` and `signing.key`).
2. Add two more additional properties to your `structurizr.properties` file:
   - `structurizr.saml.signing.certificate=signing.cer`
   - `structurizr.saml.signing.privateKey=signing.key`

Optional properties that can be set include:

- `structurizr.saml.entityId`: the SAML Entity ID that you are using to identify the Structurizr on-premises installation (configured with your Identity Provider when setting up the application/client)
- `structurizr.saml.registrationId`: the SAML registration ID (default: `structurizr`)
- `structurizr.saml.attribute.username`: the name of the SAML attribute used to obtain the user's username (default: `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`)
- `structurizr.saml.attribute.role`: the name of the SAML attribute used to obtain the user's roles (default: `http://schemas.xmlsoap.org/claims/Group`)

See [Spring Security - SAML 2.0 Login Overview](https://docs.spring.io/spring-security/reference/servlet/saml2/login/overview.html)
for more information about how SAML integration works. If you would like to test the SAML feature of the on-premises installation,
here is some configuration equivalent to that found in the [Spring Security samples](https://github.com/spring-projects/spring-security-samples/tree/main/servlet/java-configuration/saml2/login):

```
# Okta (testuser2@spring.security.saml/12345678)
structurizr.authentication=saml
structurizr.saml.registrationId=one
structurizr.saml.metadata=https://dev-05937739.okta.com/app/exk46xofd8NZvFCpS5d7/sso/saml/metadata
structurizr.saml.attribute.username=email
```

## Troubleshooting

The variation between identity providers and how organisations configure identity providers can make it difficult
to configure SAML integration, and even the smallest misconfiguration can cause errors, most of which you'll see in
the logs as a HTTP 405 (`Request method 'POST' not supported`) or HTTP 500 message.
Some recommended steps to resolve this are:

1. Configure a non-secure (i.e. HTTP) `localhost` instance of the on-premises installation against your IdP to ascertain whether the problems you are seeing are related to your hosting environment (i.e. HTTPS, load balancers, reverse proxies, DNS, etc).
2. Debug the SAML handshake with one of the available browser plugins.
3. Enable debug on the on-premises installation to see the underlying error message (see [Configuration - Logging](/onpremises/configuration#logging)).

## Notes

- If you make any changes to the SAML configuration, you will need to restart the on-premises installation.