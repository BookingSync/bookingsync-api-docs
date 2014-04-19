# Periods

1. TOC
{:toc}

## List periods

Required OAuth scope: `:rates_read` or `:rates_write`

List all periods for given account.

~~~
GET /periods
~~~

Response:

<%= json_response 'periods/index' %>

## Get a single period

Required OAuth scope: `:rates_read` or `:rates_write`

Returns a single period identified by ID.

~~~
GET /periods/ID
~~~

<%= json_response 'periods/index' %>
