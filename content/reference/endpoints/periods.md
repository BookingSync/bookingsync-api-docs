# Periods

1. TOC
{:toc}

## Overview

This resource represents Periods which define the timeline for applicability of the [Seasons](/reference/endpoints/seasons/). 

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
account          | Integer | Read       | Account's ID related to the Period
season           | Integer | Read       | Season's ID related to the Period
rates_table      | Integer | Read       | Rates Table's ID related to the Period
-----------------|---------|------------|------------
id               | Integer | Read       | Period's id.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Period's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Period's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Period's start date.
end_date         | [Date](/reference/enums#formats) | Read       | Period's end date.
archived_at      | [Time](/reference/enums#formats) | Read       | Period's archived time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer | Read       | Account's ID related to the Period |
season           | Integer | Read       | Season's ID related to the Period | 
rates_table      | Integer | Read       | Rates Table's ID related to the Period |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Period's id.|
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Period's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Period's update time. |
start_date       | [Date](/reference/enums#formats) | Read/Write | Period's start date. | **Required**, must be before `end_date` 
end_date         | [Date](/reference/enums#formats) | Read/Write | Period's end date. | **Required**, must be after `start_date`, the maximum allowed value is 3 years from the current date
archived_at      | [Time](/reference/enums#formats) | Read       | Period's archived time. |
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
