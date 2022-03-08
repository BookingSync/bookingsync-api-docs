# Rentals Taxes

1. TOC
{:toc}

## Overview

This resource represents Rentals Taxes - the [Taxes](/reference/endpoints/taxes/) for a [Rental](/reference/endpoints/Rentals/), which can be either configured to be included in Rental's price (as `initial_price` in [Booking](/reference/endpoints/Bookings/)) or not.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals-write" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                   | Type    | Read/Write | Description
-----------------------|---------|------------|------------
account                | Integer | Read       | Account's ID related to the Rentals Tax
rental                 | Integer | Read       | Rental's ID related to the Rentals Tax
tax                    | Integer | Read       | Tax's ID related to the Rentals Tax
-----------------------|---------|------------|------------
id                     | Integer | Read       | Rentals Tax's ID.
tax_included_in_rate   | Boolean | Read       | Tax amount already included in rental price if set to true (as `initial_price` in [Booking](/reference/endpoints/Bookings/).
-----------------------|---------|------------|------------
created_at             | [Time](/reference/enums#formats) | Read       | Rentals Tax's create time.
updated_at             | [Time](/reference/enums#formats) | Read       | Rentals Tax's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                   | Type    | Read/Write | Description | Constraints
-----------------------|---------|------------|-------------|
account                | Integer | Read       | Account's ID related to the Rentals Tax |
rental                 | Integer | Read       | Rental's ID related to the Rentals Tax |
tax                    | Integer | Read       | Tax's ID related to the Rentals Tax |
-----------------------|---------|------------|-------------|
id                     | Integer | Read       | Rentals Tax's ID. |
tax_id                 | Integer | Write      | Tax's ID. | **Required** 
tax_included_in_rate   | Boolean | Read/Write | Tax amount already included in rental price if set to true (as `initial_price` in [Booking](/reference/endpoints/Bookings/). If rental's price is 100 and there is a tax with a percentage of 10% assigned to it, that tax would already be included in 100 if it the value was set to `true`. However, if set to `false`, the "total" amount (in the context of [Bookings'](/reference/endpoints/bookings/) creation) would be 100 + 10% from 100 which is 110. | **Required**
-----------------------|---------|------------|-------------|
created_at             | [Time](/reference/enums#formats) | Read       | Rentals Tax's create time. |
updated_at             | [Time](/reference/enums#formats) | Read       | Rentals Tax's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List rentals taxes

List all rentals taxes for a given account(s).

~~~
GET /rentals_taxes
~~~

<%= render 'json_response', endpoint: "rentals_taxes", scopes: %w(public) %>

## Get a single rentals tax

Returns a single rentals tax identified by ID.

~~~
GET /rentals_taxes/:rentals_tax_id
~~~

<%= render 'json_response', endpoint: "rentals_taxes", scopes: %w(public) %>

## Create a new rentals tax

Returns a newly created rentals tax.

~~~
POST  /rentals/:rental_id/rentals_taxes
~~~

<%= render 'json_response', endpoint: "rentals_taxes", request: "create",
scopes: [{ rates_write: "public-rates_write" }] %>

## Update a rentals tax

Returns an updated rentals tax identified by ID.

~~~
PUT /rentals_taxes/:rentals_tax_id
~~~

<%= render 'json_response', endpoint: "rentals_taxes", request: "update",
scopes: [{ rates_write: "public-rates_write" }] %>

## Delete a rentals tax

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rentals_taxes/:rentals_tax_id
~~~~~~
