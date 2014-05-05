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
GET /periods/ID
~~~

Response:

<%= json_response 'periods/index' %>

## Create a new period

Required OAuth scope: `:rates_write`

Returns a newly created period.

~~~
POST /periods
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
PUT /periods/ID
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

Returns an empty Array on success.

~~~~~~
DELETE /periods/ID
~~~~~~
