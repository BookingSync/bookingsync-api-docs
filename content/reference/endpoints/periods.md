# Periods

1. TOC
{:toc}

## List periods

Required OAuth scope: `:rates_read`

List all periods for given account(s).

~~~
GET /periods
~~~

Response:

<%= json_response 'periods/index' %>

## Get a single period

Required OAuth scope: `:rates_read`

Returns a single period identified by ID.

~~~
GET /periods/ID
~~~

<%= json_response 'periods/index' %>
