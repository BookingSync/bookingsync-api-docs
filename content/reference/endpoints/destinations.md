# Destinations

1. TOC
{:toc}

## List destinations

Required OAuth scope: `:public`

List all destinations for given account(s).

~~~
GET /destinations
~~~

Response:

<%= json_response 'destinations/index' %>

## Get a single destination

Required OAuth scope: `:public`

Returns a single destination identified by ID.

~~~
GET /destinations/:destination_id
~~~

<%= json_response 'destinations/index' %>
