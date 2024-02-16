# Availabilities

1. TOC
{:toc}

## Overview

This resource represents the Availabilities for a given Rental. The `map` represents consecutive 1096 days starting from `start_date` and tells whether a given day is available (there is no [Booking](/reference/endpoints/bookings) for that day) or unavailable (there is already a [Booking](/reference/endpoints/bookings) for that day).

Availabilities are regenerated after creation of Bookings and at the beginning of each month and `start_date` always points to the beginning of current month.

Particularly useful when implementing a UI containing calendar that allows to select dates for a Booking - using this map you can block unavailable dates.

However, this resource doesn't cover all cases why a given day might be unavailable (e.g. it doesn't cover [Rates Rules](/reference/endpoints/rates_rules/)). You might want to check [ChangeOvers](http://developers.bookingsync.com/reference/endpoints/change_overs/) to have a map covering these cases.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Availability
rental           | Integer | Read       | Rental's ID related to the Availability
-----------------|---------|------------|------------
id               | Integer | Read       | Availability's id.
map              | String  | Read       | Availability's map of booking status. There is a total of 1096 characters, each representing one day. List of statuses described in [enums section](/reference/enums#availability-map-statuses).
-----------------|---------|------------|------------
start_date       | [Date](/reference/enums#formats) | Read       | Availability's start date.
created_at       | [Time](/reference/enums#formats) | Read       | Availability's creation time.
updated_at       | [Time](/reference/enums#formats) | Read       | Availability's update time.
{: class="table table-bordered"}
  </div>
</div>

## List availabilities

List all availabilities for a given account.

~~~
GET /availabilities
~~~

<%= render 'json_response', endpoint: "availabilities", scopes: %w(public) %>

## Get a single availability

Returns a single availability identified by ID.

~~~
GET /availabilities/:availability_id
~~~

<%= render 'json_response', endpoint: "availabilities", scopes: %w(public) %>

## Customize availability maps

Mapping parameters allow to customize availability start point and status display.

Examples:

~~~
GET /availabilities?include_tentative=false&boolean=true&from=2014-03-24
~~~

~~~
GET /availabilities/1?include_tentative=false&boolean=true&from=2014-03-24
~~~

### Mapping parameters

Name              | Type    | Default                        | Description
------------------|---------|---------------------------------------------
from              | [Date](/reference/enums#formats) | Beginning of current month     | Starts mapping at the given date. Default is beginning of current month.
include_tentative | Boolean | true                           | Includes tentative bookings by default. If switched to false, tentative statuses will be rendered as `0`.
boolean           | Boolean | false                          | Render map using only `0` and `1` characters. In this mode, every blocking status will be rendered as `1`. List of statuses described in [enums section](/reference/enums#availability-map-statuses).
priced_only       | Boolean | false                          | Show days without nightly rate as unavailable.
{: class="table table-bordered"}
