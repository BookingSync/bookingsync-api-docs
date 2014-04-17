# Rental Agreements

1. TOC
{:toc}

## List rental agreements

Required OAuth scope: `:public`

List all rental agreements for rentals in given account(s).

~~~
GET /rental_agreements
~~~

Response:

<%= json_response 'rental_agreements/index' %>

## Get a single rental agreement

Required OAuth scope: `:public`

Returns a single rental agreement identified by ID.

~~~
GET /rental_agreements/ID
~~~

<%= json_response 'rental_agreements/index' %>
