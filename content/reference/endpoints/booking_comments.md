# Booking Comments

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read" role="tab" data-toggle="pill">bookings_read</a></li>
  <li><a href="#bookings_write-bookings_write_owned" role="tab" data-toggle="pill">
    bookings_write / bookings_write_owned
  </a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Booking Comment's id.
-----------------|---------|------------|------------
content          | String  | Read       | Booking Comment's content.
editable         | Boolean | Read       | Booking Comment can be edited if true is returned.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Booking Comment's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Booking Comment's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write-bookings_write_owned" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Booking Comment's id.
booking_id       | Integer | Write      | **Required**. Booking id related to the Booking Comment.
-----------------|---------|------------|------------
content          | String  | Read/Write | **Required**. Booking Comment's content.
editable         | Boolean | Read       | Booking Comment can be edited if true is returned.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Booking Comment's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Booking Comment's update time.
{: class="table table-bordered"}
  </div>
</div>

## List booking comments

List all booking_comments for given account.

~~~
GET /booking_comments
~~~

<%= render 'json_response', endpoint: "booking_comments",
  scopes: %w(bookings_read bookings_write-bookings_write_owned) %>

## Get a single booking comment

Returns a single booking_comment identified by ID.

~~~
GET /booking_comments/:booking_comment_id
~~~

<%= render 'json_response', endpoint: "booking_comments",
  scopes: %w(bookings_read bookings_write-bookings_write_owned) %>

## Create a new booking comment

Creates a booking_comment for given season.

~~~
POST /booking_comments
~~~

<%= render 'json_response', endpoint: "booking_comments", request: "create",
  scopes: [{ "bookings_write-bookings_write_owned" => "bookings_write-bookings_write_owned" }] %>

## Update a booking comment

Returns an updated booking_comment identified by ID.

~~~
PUT /booking_comments/:booking_comment_id
~~~

<%= render 'json_response', endpoint: "booking_comments", request: "update",
  scopes: [{ "bookings_write-bookings_write_owned" => "bookings_write-bookings_write_owned" }] %>

## Destroy a booking comment

Required OAuth scope: `:bookings_write` or `:bookings_write_owned`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /booking_comments/:booking_comment_id
~~~~~~
