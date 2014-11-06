# Bookings

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#bookings_public_write" role="tab" data-toggle="pill">bookings_public_write</a></li>
  <li><a href="#bookings_read" role="tab" data-toggle="pill">bookings_read</a></li>
  <li><a href="#bookings_write" role="tab" data-toggle="pill">bookings_write</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
------------------------|---------|------------|------------
status                  | String  | Read       | Booking's status.
------------------------|---------|------------|------------
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read       | Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read       | Booking's end time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_public_write" markdown="1">
### Parameters

Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
client_id               | Integer | Write      | **Required**. Client id related to the Booking.
rental_id               | Integer | Write      | **Required**. Rental id related to the Booking.
source_id               | Integer | Write      | Source id related to the Booking.
------------------------|---------|------------|------------
adults                  | Integer | Write      | Booking's number of adults.
booked                  | Boolean | Write      | Booking's booked status.
children                | Integer | Write      | Booking's number of children.
currency                | String  | Write      | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
discount                | String  | Write      | Booking's discount. (in percents e.g. 10%)
downpayment             | [Decimal](/reference/enums#formats) | Write      | Booking's downpayment.
final_price             | [Decimal](/reference/enums#formats) | Write      | Booking's final price. (after discount)
initial_price           | [Decimal](/reference/enums#formats) | Write      | Booking's initial price.
notes                   | Text    | Write      | Booking's notes. (1000 characters max)
status                  | String  | Read       | Booking's status.
unavailable             | Boolean | Write      | Booking's unavailable status.
------------------------|---------|------------|------------
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's end time.
tentative_expires_at    | [Time](/reference/enums#formats) | Write      | Booking's tentative expiry time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_read" markdown="1">
### Parameters

Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
------------------------|---------|------------|------------
adults                  | Integer | Read       | Booking's number of adults.
booked                  | Boolean | Read       | Booking's booked status.
bookings_payments_count | Integer | Read       | Booking's number of payments.
children                | Integer | Read       | Booking's number of children.
currency                | String  | Read       | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
discount                | String  | Read       | Booking's discount. (in percents e.g. 10%)
downpayment             | [Decimal](/reference/enums#formats) | Read       | Booking's downpayment.
final_price             | [Decimal](/reference/enums#formats) | Read       | Booking's final price. (after discount)
initial_price           | [Decimal](/reference/enums#formats) | Read       | Booking's initial price.
locked                  | String  | Read       | Booking's locked status.
notes                   | Text    | Read       | Booking's notes.
paid_amount             | [Decimal](/reference/enums#formats) | Read       | Booking's amount that have already been paid.
review_requests_count   | Integer | Read       | Booking's number of review requests.
status                  | String  | Read       | Booking's status.
unavailable             | Boolean | Read       | Booking's unavailable status.
------------------------|---------|------------|------------
created_at              | [Time](/reference/enums#formats) | Read       | Booking's create time.
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read       | Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read       | Booking's end time.
canceled_at             | [Time](/reference/enums#formats) | Read       | Booking's cancel time.
tentative_expires_at    | [Time](/reference/enums#formats) | Read       | Booking's tentative expiry time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write" markdown="1">
### Parameters

Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
client_id               | Integer | Write      | **Required**. Client id related to the Booking.
rental_id               | Integer | Write      | **Required**. Rental id related to the Booking.
source_id               | Integer | Write      | Source id related to the Booking.
------------------------|---------|------------|------------
adults                  | Integer | Read/Write | Booking's number of adults.
booked                  | Boolean | Read/Write | Booking's booked status.
bookings_payments_count | Integer | Read       | Booking's number of payments.
children                | Integer | Read/Write | Booking's number of children.
currency                | String  | Read/Write | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
discount                | String  | Read/Write | Booking's discount. (in percents e.g. 10%)
downpayment                 | [Decimal](/reference/enums#formats) | Read/Write | Booking's downpayment.
final_price             | [Decimal](/reference/enums#formats) | Read/Write | Booking's final price. (after discount)
initial_price           | [Decimal](/reference/enums#formats) | Read/Write | Booking's initial price.
locked                  | String  | Read/Write | Booking's locked status.
notes                   | Text    | Read/Write | Booking's notes. (1000 characters max)
paid_amount             | [Decimal](/reference/enums#formats) | Read       | Booking's amount that have already been paid.
review_requests_count   | Integer | Read       | Booking's number of review requests.
status                  | String  | Read       | Booking's status.
unavailable             | Boolean | Read/Write | Booking's unavailable status.
------------------------|---------|------------|------------
created_at              | [Time](/reference/enums#formats) | Read       | Booking's create time.
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's end time.
canceled_at             | [Time](/reference/enums#formats) | Read       | Booking's cancel time.
tentative_expires_at    | [Time](/reference/enums#formats) | Read/Write | Booking's tentative expiry time.
{: class="table table-bordered"}
  </div>
</div>

## List bookings

Based on the OAuth token scopes bookings listing will be limited to a
certain range.

Scope                    | Read Permissions
-------------------------|------------
`:public`                | Display only future, not canceled bookings
`:bookings_public_write` | Display only future, not canceled bookings
`:bookings_read`         | Display all bookings
`:bookings_write`        | Display all bookings
{: class="table table-bordered"}

Returns a list of all bookings for current account(s) starting after now.

~~~
GET /bookings
~~~

<%= render 'json_response', endpoint: "bookings",
  scopes: %w(public-bookings_public_write bookings_read-bookings_write) %>

## Search bookings

Search parameters allow to filter bookings by specified fields.

Example:

~~~
GET /bookings?status=booked,unavailable&from=20140324
~~~

### Search Parameters

Name             | Type    | Default | Description
-----------------|---------|--------------
from             | Time    | now     | Bookings ending after given date. Format `yyyymmdd` in UTC. Default is now.
until            | Time    |         | Bookings starting before given date. Format `yyyymmdd` in UTC.
months           | Integer |         | Bookings starting before `:from` + `:months`.
status           | String  |         | List of comma separated statuses. Possible values: booked,unavailable,tentative.
include_canceled | Boolean | false   | Show also canceled bookings (requires `:bookings_read` or `:bookings_write` scope).
rental_id        | String  |         | List of comma separated IDs. Returns only bookings for this rental(s)
client_id        | String  |         | List of comma separated IDs. Returns only bookings for this client(s)
updated_since    | Time    |         | Bookings updated after given date. Format `yyyymmdd` in UTC. Also includes ids of bookings canceled after given date.
{: class="table table-bordered"}

## Get a single booking

Returns a single booking identified by ID

~~~
GET /bookings/:booking_id
~~~

<%= render 'json_response', endpoint: "bookings",
  scopes: %w(public-bookings_public_write bookings_read-bookings_write) %>

## Create a new booking

Creates a booking for given rental.

~~~~
POST /rentals/:rental_id/bookings
~~~~

<%= render 'json_response', endpoint: "bookings", request: "request",
  scopes: [
    { bookings_public_write: "public-bookings_public_write" },
    { bookings_write: "bookings_read-bookings_write" }
  ] %>

## Update a booking

Returns an updated booking identified by ID.

~~~
PUT /bookings/:booking_id
~~~

<%= render 'json_response', endpoint: "bookings", request: "request",
  scopes: [
    { bookings_public_write: "public-bookings_public_write" },
    { bookings_write: "bookings_read-bookings_write" }
  ] %>

## Cancel a booking

Required OAuth scope: `:bookings_write` or `:bookings_public_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /bookings/:booking_id
~~~~~~
