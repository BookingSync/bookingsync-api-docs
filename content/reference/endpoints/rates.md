# Rates

1. TOC
{:toc}

## List rates

Required OAuth scope: `:public`.

List all rates for given account(s).

~~~
GET /rates
~~~

Response:

<%= json_response 'rates/index' %>


## Get a single rate

Required OAuth scope: `:public`.

Returns a single rate identified by ID.

~~~
GET /rates/:rate_id
~~~

Response:

<%= json_response 'rates/index' %>


