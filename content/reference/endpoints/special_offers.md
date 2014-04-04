# Special Offers

1. TOC
{:toc}

## List special offers

Required OAuth scope: `:public`

List all special offers for given account(s).

~~~
GET /special_offers
~~~

Response:

<%= json_response 'special_offers/index' %>

## Get a single special offer

Required OAuth scope: `:public`

Returns a single special offer identified by ID.

~~~
GET /special_offers/ID
~~~

<%= json_response 'special_offers/index' %>
