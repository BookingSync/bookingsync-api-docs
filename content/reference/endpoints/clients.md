# Clients

1. TOC
{:toc}

## List clients

Required scope: `:clients_read` or `:clients_write`.

List all clients for given account.

~~~
GET /clients
~~~

Response:

<%= json_response 'clients/index' %>


## Get a single client

Required scope: `:clients_read` or `:clients_write`.

Returns a single client identified by ID.

~~~
GET /clients/id
~~~

Response format is the same as in
[list clients](#list-clients) action, but it only shows a single client.
