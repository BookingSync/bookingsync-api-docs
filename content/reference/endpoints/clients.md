# Clients

1. TOC
{:toc}

## List clients

List all clients for given account.

~~~
GET /clients
~~~

<%= render 'json_response', endpoint: "clients",
  scopes: %w(clients_read-clients_write) %>

## Get a single client

Returns a single client identified by ID.

~~~
GET /clients/:client_id
~~~

<%= render 'json_response', endpoint: "clients",
  scopes: %w(clients_read-clients_write) %>
