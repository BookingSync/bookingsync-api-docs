# Seasons

1. TOC
{:toc}

## List seasons

Required OAuth scope: `:public`

List all seasons for given account(s).

~~~
GET /seasons
~~~

Response:

<%= json_response 'seasons/index' %>

## Get a single season

Required OAuth scope: `:public`

Returns a single season identified by ID.

~~~
GET /seasons/ID
~~~

<%= json_response 'seasons/index' %>
