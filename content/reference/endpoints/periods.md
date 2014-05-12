# Periods

1. TOC
{:toc}

## List periods

Required OAuth scope: `:rates_read` or `:rates_write`

List all periods for given account.

~~~
GET /periods
~~~

Response:

<%= json_response 'periods/index' %>

## Get a single period

Required OAuth scope: `:rates_read` or `:rates_write`

Returns a single period identified by ID.

~~~
GET /periods/:period_id
~~~

Response:

<%= json_response 'periods/index' %>

## Create a new period

Required OAuth scope: `:rates_write`

Creates a new period for given season.

~~~
POST /seasons/:season_id/periods
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
start_at         | [Date](/reference/formats) | **Required**. Period's start date.
end_at           | [Date](/reference/formats) | **Required**. Period's end date.
{: class="table table-bordered"}

Response:

<%= json_response 'periods/index' %>

## Update a period

Required OAuth scope: `:rates_write`

Returns an updated period identified by ID.

~~~
PUT /periods/:period_id
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
start_at         | [Date](/reference/formats) | Period's start date.
end_at           | [Date](/reference/formats) | Period's end date.
{: class="table table-bordered"}

Response:

<%= json_response 'periods/index' %>

## Destroy a period

Required OAuth scope: `:rates_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /periods/:period_id
~~~~~~
