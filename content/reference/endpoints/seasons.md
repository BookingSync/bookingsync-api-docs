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
GET /seasons/:season_id
~~~

<%= json_response 'seasons/index' %>

## Create a new season

Required OAuth scope: `:rates_write`

Creates a season for given rates table.

~~~
POST /rates_tables/:rates_table_id/seasons
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Season's name.
ratio            | Number  | **Required**. Season's ratio calculated from the rental's reference price. eg: 0.6 means 60% of the rental's reference price.
minimum_stay     | Integer | **Required**. Season's minimum length of stay, a price won't be calculated for a shorter request.
{: class="table table-bordered"}

Response:

<%= json_response 'seasons/index' %>

## Update a season

Required OAuth scope: `:rates_write`

Returns an updated season identified by ID.

~~~
PUT /seasons/:season_id
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | Season's name.
ratio            | Number  | Season's ratio calculated from the rental's reference price. eg: 0.6 means 60% of the rental's reference price.
minimum_stay     | Integer | Season's minimum length of stay, a price won't be calculated for a shorter request.
{: class="table table-bordered"}

Response:

<%= json_response 'seasons/index' %>

## Destroy a season

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /seasons/:season_id
~~~~~~
