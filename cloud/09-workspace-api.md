---
layout: default
title: Workspace API
parent: Structurizr cloud service
nav_order: 9
permalink: /cloud/workspace-api
---

# Workspace API

The cloud service provides a JSON/HTTPS API for getting and putting workspaces.
The [Structurizr CLI](/cli) or one of the client libraries (e.g. [Structurizr for Java](https://github.com/structurizr/java))
are the recommended tooling for interacting with the API, but this page has some information about the API should you wish to build your own tooling.

## Endpoints

The API consists of two endpoints, to get and put a workspace definition respectively:

- GET `https://api.structurizr.com/workspace/{workspaceId}` (get workspace)
- PUT `https://api.structurizr.com/workspace/{workspaceId}` (put workspace)

There are also some endpoints to lock and unlock a workspace (paid feature):

- PUT `https://api.structurizr.com/workspace/{workspaceId}/lock` (lock workspace)
- DELETE `https://api.structurizr.com/workspace/{workspaceId}/lock` (unlock workspace)

## Authentication/authorisation

Authentication/authorisation of API calls is performed using a [HMAC scheme](https://en.wikipedia.org/wiki/HMAC),
with the workspace API key and secret pair being used in creating the request.

### HTTP headers

GET and PUT requests must include the following HTTP headers:

- `X-Authorization`: The authorisation header, taking the form `apiKey:base64(HMAC(apiSecret, messageDigest))` (see below).
- `Nonce`: A "number once" to prevent reply attacks; for example the current UTC timestamp in milliseconds.

PUT requests must also include the following HTTP headers:

- `Content-Type: application/json; charset=UTF-8`
- `Content-MD5`: A base64 encoded version of the MD5 hash of the workspace definition being sent to the server.

## Message digest

The message digest is calculated by appending the following items together, with a newline character (`\n`) after every item:

- The HTTP verb (i.e. `GET` or `PUT`).
- The URI path (e.g. `/workspace/1234`).
- The MD5 hash of the workspace definition being sent to the server (or the MD5 hash of an empty string, `d41d8cd98f00b204e9800998ecf8427e`, for GET requests), as a hex string.
- The content type being sent to the server (application/json; charset=UTF-8 for PUT requests, and an empty string for GET requests).
- The nonce (e.g. the current UTC timestamp in milliseconds; `1529225966174`).
- The message digest must then be hashed using the HMAC-SHA256 algorithm, and the result base64 encoded for inclusion into the `X-Authorization` HTTP header. The workspace API secret should be used as the key for the HMAC process. The final `X-Authorization` would look something like this:
  - `caea989b-80a3-4db2-8e5e-7e89be284847:YTQ1NzgxZWQxZjkzYjQwNjk2MzAxNmQ5YTkyODdkZTZlNDEyYjIwZDJhMjc3OWU3MjgxM2RhODE0NzkyMDZlZg==`

On receiving the request, the server will check that the workspace ID and API key combination is valid, before calculating its own version of the HMAC message digest based upon the information contained within the HTTP request. This is then compared with the version submitted in the `X-Authorization` header, to determine whether the API call is permitted or not.

## Workspace size limitations

Please note that the cloud service has a size limit for workspaces as follows:

- Workspaces owned by free accounts: 0.5MB
- Workspaces owned by paid subscribers: 5MB

## API rate limiting

To help ensure a fair service to all users, API rate limiting is enforced for all workspace API calls (GET and PUT).

## Workspace JSON schema

See [https://github.com/structurizr/json](https://github.com/structurizr/json) for details of the JSON schema.