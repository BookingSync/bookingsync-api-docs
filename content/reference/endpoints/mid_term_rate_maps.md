# Midterm Rate Maps

1. TOC
{:toc}

### Understanding Midterm Pricing

Check out our guide: [Understanding Midterm Pricing](/guides/understanding-midterm-pricing/)

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
id               | UUID    | Read       | Midterm Rate Map's id.
-----------------|---------|------------|------------
map              | String  | Read       | Midterm Rate Map's map of rates. There is a total of 1096 characters, each representing one day. `0` rate represents a day without rate assigned.
-----------------|---------|------------|------------
start_date       | [Date](/reference/enums#formats) | Read       | Midterm Rate Map's start date.
created_at       | [Time](/reference/enums#formats) | Read       | Midterm Rate Map's creation time.
updated_at       | [Time](/reference/enums#formats) | Read       | Midterm Rate Map's last update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | UUID    | Read       | Midterm Rate Map's id.
-----------------|---------|------------|------------
map              | String  | Read       | Midterm Rate Map's map of rates. There is a total of 1096 characters, each representing one day. `0` rate represents a day without rate assigned.
-----------------|---------|------------|------------
start_date       | [Date](/reference/enums#formats) | Read       | Midterm Rate Map's start date.
created_at       | [Time](/reference/enums#formats) | Read       | Midterm Rate Map's creation time.
updated_at       | [Time](/reference/enums#formats) | Read       | Midterm Rate Map's last update time.
{: class="table table-bordered"}
  </div>
</div>

## List midterm rate maps

List all nightly rate maps for a given account.

~~~
GET /mid_term_rate_maps
~~~

<%= render 'json_response', endpoint: "mid_term_rate_maps", scopes: %w(rates_read-rates_write) %>

## Get a single midterm rate map

Returns a single nightly rate map identified by ID.

~~~
GET /mid_term_rate_maps/:mid_term_rate_map_id
~~~

<%= render 'json_response', endpoint: "mid_term_rate_maps", scopes: %w(rates_read-rates_write) %>
