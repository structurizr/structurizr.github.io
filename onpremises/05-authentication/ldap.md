---
layout: default
title: LDAP
grand_parent: Structurizr on-premises
parent: Authentication
nav_order: 2
permalink: /onpremises/authentication/ldap
---

# Form-based login, with integration to your LDAP server

A form-based login with integration to an LDAP server is supported, and this has been used successfully with FreeIPA and Microsoft Active Directory (via the LDAP binding). To configure LDAP integration:

- Add `structurizr.authentication=ldap` to your `structurizr.properties` file.
- Create a file named `ldap.xml` in your Structurizr data directory, based upon the following template. If you make any changes to this LDAP configuration file, you will need to restart the on-premises installation.

```
<beans:beans
xmlns="http://www.springframework.org/schema/security"
xmlns:beans="http://www.springframework.org/schema/beans"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="
http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd
http://www.springframework.org/schema/security http://www.springframework.org/schema/security/spring-security.xsd
">

<!-- add your LDAP configuration here -->

</beans:beans>
```

The [Spring - LDAP Authentication](https://docs.spring.io/spring-security/reference/servlet/authentication/passwords/ldap.html) documentation explains how to configure
LDAP integration, but some example configurations are as follows.

### FreeIPA

The [FreeIPA demo server](https://www.freeipa.org/page/Demo) can be useful to test LDAP integration.

```
<ldap-server url="ldap://ipa.demo1.freeipa.org:389/dc=demo1,dc=freeipa,dc=org" />
<authentication-manager>
<ldap-authentication-provider
        user-search-base="cn=users,cn=accounts"
        user-search-filter="(uid={0})"
        group-search-base="cn=groups,cn=compat"
        group-search-filter="(memberUid={1})"
        role-prefix="ROLE_">
</ldap-authentication-provider>
</authentication-manager>
```

### Microsoft Active Directory

This configuration can be used as a starting point for integrating with Microsoft Active Directory.
You will need to change the following values in the example below:

- `DC=mycompany,DC=local` (the search base x2)
- `ldap://127.0.0.1:389` (your LDAP URL)
- `MYCOMPANY\Administrator` (your LDAP username)
- `password` (your LDAP password)

```
<beans:bean id="ldapAuthProvider" class="org.springframework.security.ldap.authentication.LdapAuthenticationProvider">
    <beans:constructor-arg>
        <beans:bean class="org.springframework.security.ldap.authentication.BindAuthenticator">
            <beans:constructor-arg ref="contextSource"/>
            <beans:property name="userSearch" ref="userSearch"/>
        </beans:bean>
    </beans:constructor-arg>
    <beans:constructor-arg>
        <beans:bean class="org.springframework.security.ldap.userdetails.DefaultLdapAuthoritiesPopulator">
            <beans:constructor-arg index="0" ref="contextSource"/>
            <beans:constructor-arg index="1" value="DC=mycompany,DC=local"/>
            <beans:property name="groupSearchFilter" value="(member={0})"/>
            <beans:property name="ignorePartialResultException" value="true"/>
            <beans:property name="searchSubtree" value="true"/>
        </beans:bean>
    </beans:constructor-arg>
</beans:bean>

<beans:bean id="userSearch" class="org.springframework.security.ldap.search.FilterBasedLdapUserSearch">
    <beans:constructor-arg index="0" value="DC=mycompany,DC=local"/>
    <beans:constructor-arg index="1" value="(sAMAccountName={0})"/>
    <beans:constructor-arg index="2" ref="contextSource" />
</beans:bean>

<beans:bean id="contextSource" class="org.springframework.security.ldap.DefaultSpringSecurityContextSource">
    <beans:constructor-arg value="ldap://127.0.0.1:389"/>
    <beans:property name="userDn" value="MYCOMPANY\Administrator"/>
    <beans:property name="password" value="password"/>
</beans:bean>

<authentication-manager>
    <authentication-provider ref="ldapAuthProvider" />
</authentication-manager>
```
