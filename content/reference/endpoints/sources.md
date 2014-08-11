# Sources

1. TOC
{:toc}

## List sources

List all sources for given account.

~~~
GET /sources
~~~

<%= render 'json_response', endpoint: "sources",
  scopes: %w(bookings_read-bookings_write) %>

## Get a single source

Returns a single source identified by ID.

~~~
GET /sources/:source_id
~~~

<%= render 'json_response', endpoint: "sources",
  scopes: %w(bookings_read-bookings_write) %>

## Create a new source

Returns a newly created source.

~~~~
POST /sources
~~~~

### Parameters

Name             | Type     | Description
-----------------|----------|-----------
name             | String   | **Required**. Source's name.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "sources", request: "request",
  scopes: [{bookings_write: "bookings_read-bookings_write"}] %>

## Update a source

Returns an updated source identified by ID.

~~~
PUT /sources/:source_id
~~~

### Parameters

Name             | Type     | Description
-----------------|----------|-----------
name             | String   | **Required**. Source's name.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "sources", request: "request",
  scopes: [{bookings_write: "bookings_read-bookings_write"}] %>
