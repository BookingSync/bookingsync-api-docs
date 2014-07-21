# Amenities

1. TOC
{:toc}

## List amenities

List all amenities for given account(s). Amenities can repeat because each
rental has it's own set of amenities.

~~~
GET /amenities
~~~

<%= render 'json_response', endpoint: "amenities",
  scopes: %w(public) %>

## Get a single amenity

Returns a single amenity identified by ID.

~~~
GET /amenities/:amenity_id
~~~

<%= render 'json_response', endpoint: "amenities",
  scopes: %w(public) %>
