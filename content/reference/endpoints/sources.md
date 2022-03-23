# Sources

1. TOC
{:toc}

## Overview

This resource represents Sources which usually represent Channels from which [Bookings](/reference/endpoints/Bookings/) originate from.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read" role="tab" data-toggle="pill">bookings_read</a></li>
  <li><a href="#bookings_write-bookings_write_owned" role="tab" data-toggle="pill">bookings_write / bookings_write_owned</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Source
-----------------|---------|------------|------------
id               | Integer | Read       | Source's ID.
name             | String  | Read       | Source's name.
position         | Integer | Read       | Source's position on the list.
internal         | Boolean | Read       | Source's internal status. When `true`, it is restricted for internal-only use (should not be used by the Partners for anything else than read). Every attempt to associate any record with such a source will result in 422 error.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Source's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Source's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write-bookings_write_owned" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer | Read       | Account's ID related to the Source |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Source's ID. |
name             | String  | Read/Write | Source's name.| **Required**, maximum length: 50, must not contain non-printing characters 
position         | Integer | Read/Write | Source's position on the list. |
internal         | Boolean | Read       | Source's internal status. When `true`, it is restricted for internal-only use (should not be used by the Partners for anything else than read). Every attempt to associate any record with such a source will result in 422 error. |
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Source's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Source's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List sources

List all sources for a given account.

~~~
GET /sources
~~~

<%= render 'json_response', endpoint: "sources", scopes: %w(bookings_read-bookings_write-bookings_write_owned) %>

## Get a single source

Returns a single source identified by ID.

~~~
GET /sources/:source_id
~~~

<%= render 'json_response', endpoint: "sources", scopes: %w(bookings_read-bookings_write-bookings_write_owned) %>

## Create a new source

Returns a newly created source.

~~~~
POST /sources
~~~~

<%= render 'json_response', endpoint: "sources", request: "create",
  scopes: [
    { bookings_write_owned: "bookings_read-bookings_write-bookings_write_owned" },
    { bookings_write: "bookings_read-bookings_write-bookings_write_owned" }
  ] %>

## Update a source

Returns an updated source identified by ID.

~~~
PUT /sources/:source_id
~~~

<%= render 'json_response', endpoint: "sources", request: "update",
  scopes: [
    { bookings_write_owned: "bookings_read-bookings_write-bookings_write_owned" },
    { bookings_write: "bookings_read-bookings_write-bookings_write_owned" }
  ] %>
