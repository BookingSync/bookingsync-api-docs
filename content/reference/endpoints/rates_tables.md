# Rates Tables

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#rates_read" role="tab" data-toggle="pill">rates_read</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rates_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|-------------------------
id               | Integer | Read       | Rates Table's id.
-----------------|---------|-------------------------
name             | String  | Read       | Rates Table's name.
shared           | Boolean | Read       | Rates Table's shared status.
-----------------|---------|-------------------------
created_at       | [Time](/reference/enums#formats) | Read       | Rate's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rate's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|-------------------------
id               | Integer | Read       | Rates Table's id.
-----------------|---------|-------------------------
name             | String  | Read/Write | **Required**. Rates Table's name. (50 characters max)
shared           | Boolean | Read       | Rates Table's shared status. (Rates Table is made shared when creating or updating through api)
-----------------|---------|-------------------------
created_at       | [Time](/reference/enums#formats) | Read       | Rate's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rate's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rates tables

List all rates tables for a given account.

~~~
GET /rates_tables
~~~

<%= render 'json_response', endpoint: "rates_tables", scopes: %w(rates_read-rates_write) %>

## Get a single rates table

Returns a single rates table identified by ID.

~~~
GET /rates_tables/:rates_table_id
~~~

<%= render 'json_response', endpoint: "rates_tables", scopes: %w(rates_read-rates_write) %>

## Create a new rates table

<div class="callout callout-info">
  <h4>Cloning a rates table</h4>
  <p>To clone an existing rates table, pass <code>"clone_from": "ID"</code> parameter with ID of the source.</p>
</div>

Returns a newly created rates table.

~~~
POST /rates_tables
~~~

<%= render 'json_response', endpoint: "rates_tables", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a rates table

Returns an updated rates table identified by ID.

~~~
PUT /rates_tables/:rates_table_id
~~~

<%= render 'json_response', endpoint: "rates_tables", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a rates table

Required OAuth scope: `:rates_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rates_tables/:rates_table_id
~~~~~~
