# Billing Addresses

1. TOC
{:toc}

## List billing addresses

List all billing addresses for given account.

~~~
GET /billing_addresss
~~~

<%= render 'json_response', endpoint: "billing_addresses",
  scopes: %w(payments_read-payments_write) %>

## Get a single billing address

Returns a single billing address identified by ID.

~~~
GET /billing_addresses/:billing_address_id
~~~

<%= render 'json_response', endpoint: "billing_addresses",
  scopes: %w(payments_read-payments_write) %>
