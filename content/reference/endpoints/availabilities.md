# Availabilities

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Availability's id.
-----------------|---------|------------|------------
map              | String  | Read       | Availability's map of booking status. There is a total of 1096 characters, each representing one day. List of statuses described in [enums section](/reference/enums#availability-map-statuses).
-----------------|---------|------------|------------
start_date       | [Date](/reference/enums#formats) | Read       | Availability's start date.
updated_at       | [Time](/reference/enums#formats) | Read       | Availability's update time.
{: class="table table-bordered"}
  </div>
</div>

## List availabilities

List all availabilities for given account.

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
GET /availabilities?include_tentative=false&boolean=true&from=20140324
~~~

~~~
GET /availabilities/1?include_tentative=false&boolean=true&from=20140324
~~~

### Mapping parameters

Name              | Type    | Default                        | Description
------------------|---------|---------------------------------------------
from              | [Date](/reference/enums#formats) | Beginning of current month     | Starts mapping at the given date. Default is beginning of current month.
include_tentative | Boolean | true                           | Includes tentative bookings by default. If switched to false, tentative statuses will be rendered as `0`.
boolean           | Boolean | false                          | Render map using only `0` and `1` characters. In this mode, every blocking status will be rendered as `1`. List of statuses described in [enums section](/reference/enums#availability-map-statuses).
{: class="table table-bordered"}
