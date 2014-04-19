# Seasons

1. TOC
{:toc}

## List seasons

Required OAuth scope: `:rates_read` or `:rates_write`

List all seasons for given account.

~~~
GET /seasons
~~~

Response:

<%= json_response 'seasons/index' %>

## Get a single season

Required OAuth scope: `:rates_read` or `:rates_write`

Returns a single season identified by ID.

~~~
GET /seasons/ID
~~~

<%= json_response 'seasons/index' %>
