---
layout: default
title: Workspace API
parent: Structurizr on-premises
nav_order: 10
permalink: /onpremises/workspace-api
---

# Workspace API

The on-premises installation provides a JSON/HTTPS API for getting and putting workspaces.
The [Structurizr CLI](/cli) or one of the client libraries (e.g. [Structurizr for Java](/java))
are the recommended tooling for interacting with the API, but this page has some information about the API should you wish to build your own tooling.

Please note that diagrams are rendered client-side (i.e. in your web browser), so this API __does not__ provide access to diagrams.
An automated export is only possible using a web browser in conjunction with an automation framework such as headless Chrome and Puppeteer.
See the [structurizr-puppeteer repo on GitHub](https://github.com/structurizr/puppeteer) for an example script.

## Endpoints

The API consists of two endpoints, to get and put a workspace definition respectively:

- GET `/api/workspace/{workspaceId}` (get workspace)
- PUT `/api/workspace/{workspaceId}` (put workspace)

There are also some endpoints to lock and unlock a workspace:

- PUT `/api/workspace/{workspaceId}/lock` (lock workspace)
- DELETE `/api/workspace/{workspaceId}/lock` (unlock workspace)

## Authentication/authorisation

Authentication/authorisation of API calls is performed using a [HMAC scheme](https://en.wikipedia.org/wiki/HMAC),
with the workspace API key and secret pair being used in creating the request.

### HTTP headers

GET and PUT requests must include the following HTTP headers:

- `X-Authorization`: The authorisation header, taking the form `apiKey:base64(hex(HMAC-SHA256(apiSecret, messageContent)))` (see below).
- `Nonce`: A "number once" to prevent reply attacks; for example the current UTC timestamp in milliseconds.

PUT requests must also include the following HTTP headers:

- `Content-Type: application/json; charset=UTF-8`
- `Content-MD5`: A base64 encoded version of the MD5 hash of the workspace definition being sent to the server.

### Message digest

The message digest is calculated for a full message content, which is formed by appending the following items together, with a newline character (`\n`) after every item (including last one):

- The HTTP verb (i.e. `GET` or `PUT`).
- The URI path (e.g. `/workspace/1234` or `/api/workspace/1234`).
- The MD5 hash of the workspace definition being sent to the server (or the MD5 hash of an empty string, `d41d8cd98f00b204e9800998ecf8427e`, for GET requests), as a hex string.
- The content type being sent to the server (`application/json; charset=UTF-8` for PUT requests, and an empty string for GET requests).
- The nonce (e.g. the current UTC timestamp in milliseconds; `1529225966174`).

The message digest would be constructed as follows:
- Hash the full message content using the HMAC-SHA256 algorithm, utilizing the workspace API secret as the key.
- Convert the hash result to a hex string.
- Encode the hex string using Base64.

The final `X-Authorization` HTTP header would look something like this:
  - `caea989b-80a3-4db2-8e5e-7e89be284847:YTQ1NzgxZWQxZjkzYjQwNjk2MzAxNmQ5YTkyODdkZTZlNDEyYjIwZDJhMjc3OWU3MjgxM2RhODE0NzkyMDZlZg==`

On receiving the request, the server will check that the workspace ID and API key combination is valid, before calculating its own version of the HMAC message digest based upon the information contained within the HTTP request. This is then compared with the version submitted in the `X-Authorization` header, to determine whether the API call is permitted or not.

## Workspace JSON schema

See [https://github.com/structurizr/json](https://github.com/structurizr/json) for details of the JSON schema.
