# Bookings

1. TOC
{:toc}

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

Response

<%= json_response 'bookings/index' %>

## Search bookings

Search parameters allow to filter bookings by specified fields.

Example:

~~~
GET /bookings?status=booked,unavailable&from=20140324
~~~

### Parameters

Name             | Type    | Default | Description
-----------------|---------|--------------
from             | Time    | now     | Bookings ending after given date. Format `yyyymmdd` in UTC. Default is now.
until            | Time    |         | Bookings starting before given date. Format `yyyymmdd` in UTC.
months           | Integer |         | Bookings starting before `:from` + `:months`.
status           | String  |         | List of comma separated statuses. Possible values: booked,unavailable,tentative.
include_canceled | Boolean | false   | Show also canceled bookings (requires `:bookings_read` or `:bookings_write` scope).
rental_id        | String  |         | List of comma separated IDs. Returns only bookings for this rental(s)
client_id        | String  |         | List of comma separated IDs. Returns only bookings for this client(s)
{: class="table table-bordered"}

## Get a single booking

Required OAuth scope: `:public`, `:bookings_public_write`, `:bookings_read`
or `:bookings_write`

Returns a single booking identified by ID

~~~
GET /bookings/:booking_id
~~~

Response:

<%= json_response 'bookings/show' %>
