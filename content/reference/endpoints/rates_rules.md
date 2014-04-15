# Rates Rules

1. TOC
{:toc}

## List rates rules

Required OAuth scope: `:rates_read` or `:rates_write`

List all rates rules for given account.

~~~
GET /rates_rules
~~~

Response:

<%= json_response 'rates_rules/index' %>

## Get a single rates rule

Required OAuth scope: `:rates_read` or `:rates_write`

Returns a single rates rule identified by ID.

~~~
GET /rates_rules/ID
~~~

<%= json_response 'rates_rules/index' %>
