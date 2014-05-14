# Billing Addresses

1. TOC
{:toc}

## List billing addresses

Required OAuth scope: `:payments_read` or `:payments_write`

List all billing addresses for given account.

~~~
GET /billing_addresss
~~~

Response:

<%= json_response 'billing_addresses/index' %>

## Get a single billing address

Required OAuth scope: `:payments_read` or `:payments_write`

Returns a single billing address identified by ID.

~~~
GET /billing_addresses/:billing_address_id
~~~

<%= json_response 'billing_addresses/index' %>
