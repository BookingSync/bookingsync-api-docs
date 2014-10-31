# Sources

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read" role="tab" data-toggle="pill">bookings_read</a></li>
  <li><a href="#bookings_write" role="tab" data-toggle="pill">bookings_write</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Source's id.
-----------------|---------|------------|------------
name             | String  | Read       | Source's name.
position         | Integer | Read       | Source's position on the list.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Source's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Source's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Source's id.
-----------------|---------|------------|------------
name             | String  | Read/Write | **Required**. Source's name. (50 characters max)
position         | Integer | Read/Write | Source's position on the list.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Source's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Source's update time.
{: class="table table-bordered"}
  </div>
</div>

## List sources

List all sources for given account.

~~~
GET /sources
~~~

<%= render 'json_response', endpoint: "sources", scopes: %w(bookings_read-bookings_write) %>

## Get a single source

Returns a single source identified by ID.

~~~
GET /sources/:source_id
~~~

<%= render 'json_response', endpoint: "sources", scopes: %w(bookings_read-bookings_write) %>

## Create a new source

Returns a newly created source.

~~~~
POST /sources
~~~~

<%= render 'json_response', endpoint: "sources", request: "request",
  scopes: [{ bookings_write: "bookings_read-bookings_write" }] %>

## Update a source

Returns an updated source identified by ID.

~~~
PUT /sources/:source_id
~~~

<%= render 'json_response', endpoint: "sources", request: "request",
  scopes: [{ bookings_write: "bookings_read-bookings_write" }] %>
