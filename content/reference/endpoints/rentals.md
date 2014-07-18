# Rentals

1. TOC
{:toc}

## List rentals

List all rentals for given account(s).

~~~
GET /rentals
~~~

<%= render 'json_response', endpoint: "rentals",
  scopes: %w(public rentals_read-rentals_write) %>

## Get a single rental

Returns a single rental identified by ID.

~~~
GET /rentals/:rental_id
~~~

<%= render 'json_response', endpoint: "rentals",
  scopes: %w(public rentals_read-rentals_write) %>
