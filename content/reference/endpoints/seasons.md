# Seasons

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
id               | Integer | Read       | Season's id.
-----------------|---------|------------|------------
color_ratio      | [Decimal](/reference/enums#formats) | Read       | Season's color_ratio.
minimum_stay     | Integer | Read       | Season's minimum stay in days.
name             | [Object](/reference/enums#formats) | Read       | Season's name, list of locales described in [enums section](/reference/enums#locales).
ratio_percentage | [Decimal](/reference/enums#formats) | Read       | Season's ratio expressed in percentage.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Season's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Season's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Season's id.
-----------------|---------|------------|------------
color_ratio      | [Decimal](/reference/enums#formats) | Read       | Season's color_ratio.
minimum_stay     | Integer | Read/Write | **Required**. Season's minimum stay in days. (greater than 0)
name             | String  | Read/Write | **Required**. Season's name. (50 max characters)
ratio_percentage | [Decimal](/reference/enums#formats) | Read/Write | **Required**. Season's ratio expressed in percentage. (between 1 and 1000)
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Season's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Season's update time.
{: class="table table-bordered"}
  </div>
</div>



## List seasons

List all seasons for a given account.

~~~
GET /seasons
~~~

<%= render 'json_response', endpoint: "seasons", scopes: %w(rates_read-rates_write) %>

## Get a single season

Returns a single season identified by ID.

~~~
GET /seasons/:season_id
~~~

<%= render 'json_response', endpoint: "seasons", scopes: %w(rates_read-rates_write) %>

## Create a new season

Creates a season for given rates table.

~~~
POST /rates_tables/:rates_table_id/seasons
~~~

<%= render 'json_response', endpoint: "seasons", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a season

Returns an updated season identified by ID.

~~~
PUT /seasons/:season_id
~~~

<%= render 'json_response', endpoint: "seasons", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a season

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /seasons/:season_id
~~~~~~
