# Rates Rules

1. TOC
{:toc}

## List rates rules

List all rates rules for given account.

~~~
GET /rates_rules
~~~

<%= render 'json_response', endpoint: "rates_rules",
  scopes: %w(rates_read-rates_write) %>

## Get a single rates rule

Returns a single rates rule identified by ID.

~~~
GET /rates_rules/:rates_rule_id
~~~

<%= render 'json_response', endpoint: "rates_rules",
  scopes: %w(rates_read-rates_write) %>
