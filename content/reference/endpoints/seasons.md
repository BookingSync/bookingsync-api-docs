# Seasons

1. TOC
{:toc}

## Overview

This resource represents Seasons which together with [Periods](/reference/endpoints/seasons/) define the time when the [Rates Rules](/reference/endpoints/rates_rules/) or [Rentals Fees](/reference/endpoints/rates_rules/) are applicable and provide a way to define seasonal pricing for the [Rentals](/reference/endpoints/rentals) (impacting price via `ratio_percentage` and minimum length of stay via `minimum_stay`).

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
rates_table      | Integer | Read       | Rates Table's ID related to the Season
account          | Integer | Read       | Account's ID related to the Season
rates_rules      | Array   | Read       | Rates Rules' IDs related to the Season
periods          | Array   | Read       | Periods' IDs related to the Season
-----------------|---------|------------|------------
id               | Integer | Read       | Season's ID.
color_ratio      | [Decimal](/reference/enums#formats) | Read       | Season's color_ratio.
color            | String | Read       | Season's color (hexadecimal).
minimum_stay     | Integer | Read       | Season's minimum stay in days.
name             | [Object](/reference/enums#formats) | Read       | Season's name, list of locales described in [enums section](/reference/enums#locales).
ratio_percentage | [Decimal](/reference/enums#formats) | Read       | Season's ratio expressed in percentage.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Season's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Season's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
rates_table      | Integer | Read       | Rates Table's ID related to the Season |
account          | Integer | Read       | Account's ID related to the Season |
rates_rules      | Array   | Read       | Rates Rules' IDs related to the Season |
periods          | Array   | Read       | Periods' IDs related to the Season |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Season's ID. |
color_ratio      | [Decimal](/reference/enums#formats) | Read | Season's color_ratio. |
color            | String  | Read | Season's color (hexadecimal) |
minimum_stay     | Integer | Read/Write | Season's minimum stay in days. | **Required**, must be greater than: 0
name             | [Object](/reference/enums#formats)  | Read/Write | Season's name. | **Required** for Account's default locale, maximum length: 50, must not contain non-printing characters
ratio_percentage | [Decimal](/reference/enums#formats) | Read/Write | Season's ratio expressed in percentage. | **Required**, must be greater than: 0
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Season's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Season's update time. |
{: class="table table-bordered"}
  </div>
</div>



## List seasons

List all seasons for a given account.

~~~
GET /seasons
~~~

<%= render '/json_response.html', endpoint: "seasons", scopes: %w(rates_read-rates_write) %>

## Get a single season

Returns a single season identified by ID.

~~~
GET /seasons/:season_id
~~~

<%= render '/json_response.html', endpoint: "seasons", scopes: %w(rates_read-rates_write) %>

## Create a new season

Creates a season for given rates table.

~~~
POST /rates_tables/:rates_table_id/seasons
~~~

<%= render '/json_response.html', endpoint: "seasons", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a season

Returns an updated season identified by ID.

~~~
PUT /seasons/:season_id
~~~

<%= render '/json_response.html', endpoint: "seasons", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a season

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /seasons/:season_id
~~~~~~
