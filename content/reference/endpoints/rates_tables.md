# Rates Tables

1. TOC
{:toc}

## List rates tables

List all rates tables for given account.

~~~
GET /rates_tables
~~~

<%= render 'json_response', endpoint: "rates_tables",
  scopes: %w(rates_read-rates_write) %>

## Get a single rates table

Returns a single rates table identified by ID.

~~~
GET /rates_tables/:rates_table_id
~~~

<%= render 'json_response', endpoint: "rates_tables",
  scopes: %w(rates_read-rates_write) %>

## Create a new rates table

Returns a newly created rates table.

~~~
POST /rates_tables
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Rates table's name.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rates_tables",
  scopes: %w(rates_write) %>

## Update a rates table

Returns an updated rates table identified by ID.

~~~
PUT /rates_tables/:rates_table_id
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Rates table's name.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rates_tables",
  scopes: %w(rates_write) %>

## Destroy a rates table

Required OAuth scope: `:rates_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rates_tables/:rates_table_id
~~~~~~
