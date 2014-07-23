# Periods

1. TOC
{:toc}

## List periods

List all periods for given account.

~~~
GET /periods
~~~

<%= render 'json_response', endpoint: "periods",
  scopes: %w(rates_read-rates_write) %>

## Get a single period

Returns a single period identified by ID.

~~~
GET /periods/:period_id
~~~

<%= render 'json_response', endpoint: "periods",
  scopes: %w(rates_read-rates_write) %>

## Create a new period

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

<%= render 'json_response', endpoint: "periods", request: "request",
  scopes: [{rates_write: "rates_read-rates_write"}] %>

## Update a period

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

<%= render 'json_response', endpoint: "periods", request: "request",
  scopes: [{rates_write: "rates_read-rates_write"}] %>

## Destroy a period

Required OAuth scope: `:rates_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /periods/:period_id
~~~~~~
