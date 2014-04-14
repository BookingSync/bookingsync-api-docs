# Rates Tables

1. TOC
{:toc}

## List rates tables

Required OAuth scope: `:rates_read` or `:rates_write`

List all rates tables for given account.

~~~
GET /rates_tables
~~~

Response:

<%= json_response 'rates_tables/index' %>

## Get a single rates table

Required OAuth scope: `:rates_read` or `:rates_write`

Returns a single rates table identified by ID.

~~~
GET /rates_tables/ID
~~~

<%= json_response 'rates_tables/index' %>
