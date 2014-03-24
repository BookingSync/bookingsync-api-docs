# Clients

1. TOC
{:toc}

## Scopes

Client endpoint requires `:clients_read` or `:clients_write` scope.

## List clients

List all clients for given account.

~~~
GET /clients
~~~

Response:

<%= json_response 'clients/index' %>


## Get a single client

Returns a single client identified by ID.

~~~
GET /clients/id
~~~

Response format is the same as in
[list clients](#list-clients) action, but it only shows a single client.
