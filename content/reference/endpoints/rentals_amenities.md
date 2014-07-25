# Rentals amenities

1. TOC
{:toc}

## List rentals amenities

List all rentals amenities for given account.

~~~
GET /rentals_amenities
~~~

<%= render 'json_response', endpoint: "rentals_amenities",
  scopes: %w(public) %>

## Get a single rentals amenity

Returns a single rentals amenity identified by ID.

~~~
GET /rentals_amenities/:rentals_amenity_id
~~~

<%= render 'json_response', endpoint: "rentals_amenities",
  scopes: %w(public) %>
