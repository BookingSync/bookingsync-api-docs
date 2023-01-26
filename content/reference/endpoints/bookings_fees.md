# Bookings Fees

1. TOC
{:toc}

## Overview

This resource represents the Booking's Fees, which contribute to Booking's final price.

Bookings Fees are usually related to [RentalsFees](/reference/endpoints/rentals_fees/), but they might be also not related at all to any Fee. These fees are called "standalone fees". [Bookings](/reference/endpoints/bookings/) originating from external Channels are likely to have standalone Bookings Fees.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read-bookings_write-bookings_write_owned" role="tab" data-toggle="pill">bookings_read/bookings_write/bookings_write_owned</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read-bookings_write-bookings_write_owned" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
rentals_fee      | Integer | Read       | RentalsFee's ID related to the Bookings Fee
booking          | Integer | Read       | Booking's ID related to the Bookings Fee
fee              | Integer | Read       | Fee's ID related to the Bookings Fee
account          | Integer | Read       | Account's ID related to the Bookings Fee
bookings_taxes   | Array   | Read       | Array of Bookings Taxes IDs where the given Bookings Fee is a taxable item
-----------------|---------|------------|------------
id               | Integer | Read       | Bookings Fee's id.
included_in_price| Boolean | Read       | Whether Bookings Fee contributes to the final price or not.
name             | [Object](/reference/enums#formats)| Read       | Bookings Fee's name, list of locales described in [enums section](/reference/enums#locales).
price            | [Decimal](/reference/enums#formats)  | Read       | Bookings Fee's price.
required         | Boolean | Read       | Always included for new bookings if set to true.
times_booked     | Integer | Read       | Bookings Fee's times booked count.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Bookings Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Bookings Fee's update time.
{: class="table table-bordered"}
  </div>
</div>


## List bookings fees

Based on the OAuth token scopes bookings_fees will be limited to a
certain range.

Scope                    | Read Permissions
-------------------------|------------
`:bookings_write_owned`  | Display fees only for bookings created by app that is making the request
`:bookings_read`         | Display fees for all bookings
`:bookings_write`        | Display fees for all bookings
{: class="table table-bordered"}

Other scopes will return no results.

List all bookings fees for a given account(s).

~~~
GET /bookings_fees
~~~

<%= render '/json_response.html', endpoint: "bookings_fees", scopes: %w(bookings_read-bookings_write-bookings_write_owned) %>

## Get a single bookings fee

Returns a single bookings fee identified by ID.

~~~
GET /bookings_fees/:bookings_fee_id
~~~

<%= render '/json_response.html', endpoint: "bookings_fees", scopes: %w(bookings_read-bookings_write-bookings_write_owned) %>

## Add a single bookings fee

Adds a fee to an existing booking.

~~~
PATCH /bookings/:id/add_bookings_fee
~~~

<%= render '/json_response.html', endpoint: "bookings_fees", model_name: "bookings", request: "add_fee", scopes: [{bookings_write_owned: "add_fee"}, {bookings_write: "add_fee"}] %>

## Remove a single bookings fee

Removes a fee from an existing booking.

~~~
PATCH /bookings/:id/remove_bookings_fee/:bookings_fee_id
~~~

<%= render '/json_response.html', endpoint: "bookings_fees", model_name: "bookings", scopes: [{bookings_write_owned: "remove_fee"}, {bookings_write: "remove_fee"}] %>
