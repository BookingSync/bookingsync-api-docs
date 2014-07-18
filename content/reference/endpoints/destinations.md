# Destinations

1. TOC
{:toc}

## List destinations

List all destinations for given account(s).

~~~
GET /destinations
~~~

<%= render 'json_response', endpoint: "destinations",
  scopes: %w(public) %>

## Get a single destination

Returns a single destination identified by ID.

~~~
GET /destinations/:destination_id
~~~

<%= render 'json_response', endpoint: "destinations",
  scopes: %w(public) %>
