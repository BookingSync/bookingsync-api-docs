# Bookings Tags

1. TOC
{:toc}

## Overview

This resource represents the Booking Tags that can be associated with the [Bookings](/reference/endpoints/bookings/).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read" role="tab" data-toggle="pill">bookings_read</a></li>
  <li><a href="#bookings_write" role="tab" data-toggle="pill">bookings_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Bookings Tag
-----------------|---------|------------|------------
id               | Integer | Read       | Bookings Tag's id.
color            | String  | Read       | Bookings Tag's color (Hexadecimal representation)
logo             | String  | Read       | Bookings Tag's logo (Currently as font awesome class)
name             | [Object](/reference/enums#formats)   | Read       | Bookings Tag's name, list of locales described in [enums section](/reference/enums#locales).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Bookings Tag's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Bookings Tag's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|------------ |
account          | Integer | Read       | Account's ID related to the Bookings Tag |
-----------------|---------|------------|------------|
id               | Integer | Read       | Bookings Tag's id. |
color            | String  | Read/Write       | Bookings Tag's color (Hexadecimal representation) | **Required**
logo             | String  | Read/Write       | Bookings Tag's logo (Currently as font awesome class) |
name             | [Object](/reference/enums#formats)   | Read/Write       | Bookings Tag's name, list of locales described in [enums section](/reference/enums#locales). | **Required**
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Bookings Tag's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Bookings Tag's update time.
{: class="table table-bordered"}
  </div>
</div>

## List bookings tags

List all bookings tags for a given account(s).

~~~
GET /bookings_tags
~~~

<%= render 'json_response', endpoint: "bookings_tags", scopes: %w(bookings_read) %>

## Get a single bookings tag

Returns a single bookings tag identified by ID.

~~~
GET /bookings_tags/:bookings_tag_id
~~~

<%= render 'json_response', endpoint: "bookings_tags", scopes: %w(bookings_read) %>

## Create a new bookings tag

Creates a bookings tag for account.

~~~
POST /bookings_tags
~~~

<%= render 'json_response', endpoint: "bookings_tags", request: "create",
  scopes: %W(bookings_write) %>

## Update a bookings tag

Returns an updated bookings tag identified by ID.

~~~
PUT /bookings_tags/:bookings_tag_id
~~~

<%= render 'json_response', endpoint: "bookings_tags", request: "update",
  scopes: %W(bookings_write) %>

## Add a single bookings tag

Adds a tag to an existing booking.

~~~
POST /bookings/:id/add_tag/:bookings_tag_id
~~~

Returns empty body with status: 201

## Remove a single bookings tag

Removes a tag from an existing booking.

~~~
DELETE /bookings/:id/remove_tag/:bookings_tag_id
~~~

Returns empty body with status: 204
