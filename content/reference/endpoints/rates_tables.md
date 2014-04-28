# Rates Tables

1. TOC
{:toc}

## List rates tables

Required OAuth scope: `:rates_read` or `:rates_write`

List all rates tables for given account.

~~~
GET /rates_tables
~~~

Response:

<%= json_response 'rates_tables/index' %>

## Get a single rates table

Required OAuth scope: `:rates_read` or `:rates_write`

Returns a single rates table identified by ID.

~~~
GET /rates_tables/ID
~~~

<%= json_response 'rates_tables/index' %>

## Create a new rates table

Required OAuth scope: `:rates_write`

Returns a newly created rates table.

~~~
POST /rates_tables
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Rates table's name.
{: class="table table-bordered"}

Response:

<%= json_response 'rates_tables/index' %>

## Update a rates table

Required OAuth scope: `:rates_write`

Returns an updated rates table identified by ID.

~~~
PUT /rates_tables/ID
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Rates table's name.
{: class="table table-bordered"}

Response:

<%= json_response 'rates_tables/index' %>

## Destroy a rates table

Required OAuth scope: `:rates_write`

Returns an empty Array on success.

~~~~~~
DELETE /rates_tables/ID
~~~~~~
