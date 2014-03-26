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

Display a single rental identified by ID. Response format is the same as in
[list rentals](#list-rentals) action, but it only shows a single rental.

~~~
GET /rentals/ID
~~~
