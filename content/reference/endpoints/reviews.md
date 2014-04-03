# Reviews

1. TOC
{:toc}

## List reviews

Required OAuth scope: `:public`

List all reviews for given account(s).

~~~
GET /reviews
~~~

Response:

<%= json_response 'reviews/index' %>

## Get a single review

Required OAuth scope: `:public`

Returns a single review identified by ID.

~~~
GET /review/ID
~~~

<%= json_response 'reviews/index' %>
