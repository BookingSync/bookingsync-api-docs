# Photos

1. TOC
{:toc}

## List photos

Required OAuth scope: `:public`

List all photos for given account(s).

~~~
GET /photos
~~~

Response:

<%= json_response 'photos/index' %>

## Get a single photo

Required OAuth scope: `:public`

Returns a single photo identified by ID.

~~~
GET /photos/ID
~~~

<%= json_response 'photos/index' %>
