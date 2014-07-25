# Seasons

1. TOC
{:toc}

## List seasons

List all seasons for given account.

~~~
GET /seasons
~~~

<%= render 'json_response', endpoint: "seasons",
  scopes: %w(rates_read-rates_write) %>

## Get a single season

Returns a single season identified by ID.

~~~
GET /seasons/:season_id
~~~

<%= render 'json_response', endpoint: "seasons",
  scopes: %w(rates_read-rates_write) %>

## Create a new season

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

<%= render 'json_response', endpoint: "seasons", request: "request",
  scopes: [{rates_write: "rates_read-rates_write"}] %>

## Update a season

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

<%= render 'json_response', endpoint: "seasons", request: "request",
  scopes: [{rates_write: "rates_read-rates_write"}] %>

## Destroy a season

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /seasons/:season_id
~~~~~~
