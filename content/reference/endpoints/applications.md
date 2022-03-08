# Applications

1. TOC
{:toc}

## Overview

This resource represents the installed Applications for the Account(s) via [OAuth](/reference/authorization/) - these are the actual applications that you, as a Partner, can register in [Partners Section](https://www.bookingsync.com/en/partners/). 

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#applications_read" role="tab" data-toggle="pill">applications_read</a></li>
  <li><a href="#applications_write" role="tab" data-toggle="pill">applications_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="applications_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Application's id.
-----------------|---------|------------|------------
name                    | String                               | Read       | Application's name.
default_price_increase  | [Decimal](/reference/enums#formats)  | Read       | Application's default price increase for [Bookings](/reference/endpoints/bookings) originating from a given Application. Also, this increase is reflected in [Rates](/reference/endpoints/rates) and [LOS Records](/reference/endpoints/los_records)
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Applications's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Applications's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                | Type    | Read/Write | Description | Constraints
--------------------|---------|------------|------------
id                  | Integer | Read       | Application's id. |
--------------------|---------|------------|------------
name                    | String                               | Read             | Application's name. |
default_price_increase  | [Decimal](/reference/enums#formats)  | Read/Write       | Application's default price increase for [Bookings](/reference/endpoints/bookings) originating from a given Application. Also, this increase is reflected in [Rates](/reference/endpoints/rates) and [LOS Records](/reference/endpoints/los_records) | greater than: 0, less than: 100
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Application's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Application's update time.
{: class="table table-bordered"}
  </div>
</div>

<div class="callout callout-info" markdown="1">
  <h4>Flow restriction</h4>
  <p>This endpoint cannot be accessed with <a href="/reference/authorization/#client-credentials-flow">Client Credentials Flow</a>.</p>
</div>

## List applications

List all installed applications for a given account.

~~~
GET /applications
~~~

<%= render 'json_response', endpoint: "applications", scopes: %w(applications_read) %>

## Get a single application

Returns a single application identified by ID.

~~~
GET /applications/:application_id
~~~

<%= render 'json_response', endpoint: "applications", scopes: %w(applications_read) %>
