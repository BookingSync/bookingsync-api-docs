# Seasons

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#rates_read" role="tab" data-toggle="pill">rates_read</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rates_read" markdown="1">
### Parameters

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
### Parameters

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

List all seasons for given account.

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

<%= render 'json_response', endpoint: "seasons", request: "request",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a season

Returns an updated season identified by ID.

~~~
PUT /seasons/:season_id
~~~

<%= render 'json_response', endpoint: "seasons", request: "request",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a season

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /seasons/:season_id
~~~~~~
