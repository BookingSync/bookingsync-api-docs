# Bookings

1. TOC
{:toc}

## Scopes

Based on the OAuth token scopes bookings listing will be limited to a
certain range.

1. `:public`, `:bookings_public_write` - Display only future, not canceled
bookings for given account(s).
2. `:bookings_read`, `:bookings_write` - Display all bookings for given account.

## List bookings

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

Name             | Type    | Description
-----------------|---------|--------------
from             | Time    | Bookings ending after given date. Format `yyyymmdd` in UTC. Default is now.
until            | Time    | Bookings starting before given date. Format `yyyymmdd` in UTC.
months           | Integer | Bookings starting before `:from` + `:months`.
status           | String  | List of comma separated statuses. Possible values: booked,unavailable,tentative.
include_canceled | Boolean | Show also canceled bookings (requires `:bookings_read` or `:bookings_write` scope).


## Get a single booking

~~~
GET /bookings/ID
~~~

Returns a single booking identified by ID

<%= json_response 'bookings/show' %>
