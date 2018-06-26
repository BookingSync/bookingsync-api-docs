# Periods

1. TOC
{:toc}

## Note

<code>
From 1st of August 2018, <a href="/reference/endpoints/seasons/" target="_blank">seasons</a> and <a href="/reference/endpoints/periods/" target="_blank">periods</a> endpoints will be deprecated for the use case of getting info about rates influence and minimum stays. If you don't create seasons and/or periods yourself (which will still be used internally for price calculations), the only use case for reading data from these endpoints would be to get the Seasons for which Rates Rules and Rentals Fees are applied if it happens that any of them is applied per given Season record. The recommended way to obtain data for minimum stays and rates is to use <a href="https://developers.bookingsync.com/reference/endpoints/nightly_rate_maps/" target="_blank">Nightly Rates Maps endpoint</a>. If you need any further assistance, please reach out to <a href="mailto:apisupport@bookingsync.com">apisupport@bookingsync.com</a>.
</code>


### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#rates_read" role="tab" data-toggle="pill">rates_read</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rates_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Period's id.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Payment's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Payment's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Period's start date.
end_date         | [Date](/reference/enums#formats) | Read       | Period's end date.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Period's id.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Payment's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Payment's update time.
start_date       | [Date](/reference/enums#formats) | Read/Write | **Required**. Period's start date.
end_date         | [Date](/reference/enums#formats) | Read/Write | **Required**. Period's end date.
{: class="table table-bordered"}
  </div>
</div>

## List periods

List all periods for a given account.

~~~
GET /periods
~~~

<%= render 'json_response', endpoint: "periods", scopes: %w(rates_read-rates_write) %>

## Get a single period

Returns a single period identified by ID.

~~~
GET /periods/:period_id
~~~

<%= render 'json_response', endpoint: "periods", scopes: %w(rates_read-rates_write) %>

## Create a new period

Creates a period for given season.

~~~
POST /seasons/:season_id/periods
~~~

<%= render 'json_response', endpoint: "periods", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a period

Returns an updated period identified by ID.

~~~
PUT /periods/:period_id
~~~

<%= render 'json_response', endpoint: "periods", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a period

Required OAuth scope: `:rates_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /periods/:period_id
~~~~~~
