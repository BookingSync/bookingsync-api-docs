# Amenities

1. TOC
{:toc}

## List amenities

Required OAuth scope: `:public`

List all amenities for given account(s). Amenities can repeat because each
rental has it's own set of amenities.

~~~
GET /amenities
~~~

Response:

<%= json_response 'amenities/index' %>

## Get a single amenity

Required OAuth scope: `:public`

Returns a single amenity identified by ID.

~~~
GET /amenities/:amenity_id
~~~

<%= json_response 'amenities/index' %>
