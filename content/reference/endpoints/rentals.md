# Rentals

1. TOC
{:toc}

## List rentals

Required OAuth scope: `:public`, `:rentals_read` or `:rentals_write`

List all rentals for given account(s).

~~~
GET /rentals
~~~

Response:

<%= json_response 'rentals/index' %>

## Get a single rental

Required OAuth scope: `:public`, `:rentals_read` or `:rentals_write`

Returns a single rental identified by ID.

~~~
GET /rentals/:rental_id
~~~

<%= json_response 'rentals/index' %>
