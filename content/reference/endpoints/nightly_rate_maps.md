# Nightly Rate Maps

1. TOC
{:toc}

## Overview

This resource represents Nightly Rate Map - a resource defining nightly rates and minimum stays in reference to `start_date` for the consecutive 1096. It's used as a basic block for defining nightly rates - you can either use [Seasons](/reference/endpoints/seasons/), [Periods](/reference/endpoints/periods/) with [Rentals](reference/endpoints/rentals/) `base_rate` or Nightly Rate Map.

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
rental           | Integer | Read       | Rental's ID related to the Nightly Rate Map
account          | Integer | Read       | Account's ID related to the Nightly Rate Map
-----------------|---------|------------|------------
id               | Integer | Read       | Nightly Rate Map's id.
minimum_stays_map| String  | Read       | Nightly Rate Map's map of minimum stays as comma-separated values. There is a total of 1096 characters, each representing one day.
rates_map        | String  | Read       | Nightly Rate Map's map of rates as comma-separated values. There is a total of 1096 characters, each representing one day. `0` rate represents a day without rate assigned.
-----------------|---------|------------|------------
start_date       | [Date](/reference/enums#formats) | Read       | Nightly Rate Map's start date.
created_at       | [Time](/reference/enums#formats) | Read       | Nightly Rate Map's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Nightly Rate Map's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|------------|
rental           | Integer | Read       | Rental's ID related to the Nightly Rate Map |
account          | Integer | Read       | Account's ID related to the Nightly Rate Map |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Nightly Rate Map's id. |
minimum_stays_map| String  | Read/Write | Nightly Rate Map's map of minimum stays as comma-separated values. There is a total of 1096 characters, each representing one day. | **Required**, Required length: 1096
rates_map        | String  | Read/Write | Nightly Rate Map's map of rates as comma-separated values. There is a total of 1096 characters, each representing one day. `0` rate represents a day without rate assigned. | **Required**, Required length: 1096
-----------------|---------|------------|------------|
start_date       | [Date](/reference/enums#formats) | Read/Write | Nightly Rate Map's start date. | **Required**. Earliest supported `start_date` is yesterday, latest one - 1094 days from today. Both restrictions are based on current UTC date. 
created_at       | [Time](/reference/enums#formats) | Read       | Nightly Rate Map's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Nightly Rate Map's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List nightly rate maps

List all nightly rate maps for a given account.

~~~
GET /nightly_rate_maps
~~~

<%= render 'json_response', endpoint: "nightly_rate_maps", scopes: %w(rates_read-rates_write) %>

## Get a single nightly rate map

Returns a single nightly rate map identified by ID.

~~~
GET /nightly_rate_maps/:nightly_rate_map_id
~~~

<%= render 'json_response', endpoint: "nightly_rate_maps", scopes: %w(rates_read-rates_write) %>

## Update a nightly rate map

<div class="callout callout-info">
  <h4>Update requirement</h4>
  <p>Rental attribute <code>nightly_rates_managed_externally</code> must be set to <code>true</code>, before you can write to this endpoint.</p>
</div>
<div class="callout callout-info">
  <h4>Partial update</h4>
  <p>This endpoint supports partial updates, meaning you can push only subset that changes with corresponding <code>start_date</code>.</p>
  <p>Each map maximum length follows the same restrictions as <code>start_date</code>. Please note that only <strong>1096 nights</strong> of data can be sent when the <code>start_date</code> <strong>is yesterday UTC</strong>. Therefore if sending <code>start_date</code> <strong>as today UTC</strong>, you can only set <strong>1095 nights</strong>.</p>
</div>

Returns an updated nightly rate map identified by ID.

~~~
PUT /nightly_rate_maps/:nightly_rate_map_id
~~~

<%= render 'json_response', endpoint: "nightly_rate_maps", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>
