# Rentals

1. TOC
{:toc}

## List rentals

Required OAuth scope: `:public`, `:rentals_read` or `:rentals_write`

List all rentals for given account(s).

~~~
GET /rentals
~~~

<%= render 'json_response', endpoint: "rentals", action: "index",
  scopes: %w(public rentals_read-rentals_write) %>

## Get a single rental

Required OAuth scope: `:public`, `:rentals_read` or `:rentals_write`

Returns a single rental identified by ID.

~~~
GET /rentals/:rental_id
~~~

<%= render 'json_response', endpoint: "rentals", action: "index",
  scopes: %w(public rentals_read-rentals_write) %>
