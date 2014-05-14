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
GET /clients/:client_id
~~~

Response:

<%= json_response 'clients/index' %>
