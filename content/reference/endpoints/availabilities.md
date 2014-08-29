# Availabilities

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Availability's id.
-----------------|---------|------------|------------
map              | String  | Read       | Availability's map of booking status. There is a total of 365 characters, each representing one day. List of statuses described in [enums section](/reference/enums#booking-statuses).
-----------------|---------|------------|------------
start_date       | [Date](/reference/formats#date--time) | Read       | Availability's start date.
updated_at       | [Time](/reference/formats#date--time) | Read       | Availability's update time.
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
