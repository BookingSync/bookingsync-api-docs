# Rates

1. TOC
{:toc}

## List rates

Required OAuth scope: `:public`.

List all rates for given account(s).

~~~
GET /rates
~~~

Response:

<%= json_response 'rates/index' %>

## Search rates

Search parameters allow to filter rates by specified fields.

Example:

~~~
GET /rates?rental_id=1
~~~

### Parameters

Name             | Type    | Default | Description
-----------------|---------|----------------------
rental_id        | String  |         | List of comma separated IDs. Returns only bookings for this rental(s)
{: class="table table-bordered"}

## Get a single rate

Required OAuth scope: `:public`.

Returns a single rate identified by ID.

~~~
GET /rates/:rate_id
~~~

Response:

<%= json_response 'rates/index' %>


