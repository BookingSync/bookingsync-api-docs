# Bookings Taxes

1. TOC
{:toc}
## Overview

This resource represents the Booking's Taxes which contribute to Booking's final price. Each Booking can have multiple taxes, that can be either included in the price of the taxable item or not. For example, if Rental's initial price is 1000 and there is an included BookingsTax for that Rental with amount of 100, the overall contribution to the Booking's final_price is still 1000, because the tax is already included in that amount. However, if the tax was not included in the price, the overall contribution would be 1000 + 100 = 1100.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read-bookings_write-bookings_write_owned" role="tab" data-toggle="pill">bookings_read/bookings_write/bookings_write_owned</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read-bookings_write-bookings_write_owned" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Bookings Tax
booking          | Integer | Read       | Booking's ID related to the Bookings Tax.
tax              | Integer | Read       | Tax's ID related to the Bookings Tax.
taxable_id       | Integer | Read       | Taxable's ID related to the Bookings Tax.  (Rental's, Fee's, or Bookings Fee's - this is a polymorphic association)
taxable_type     | String  | Read       | Taxable's type related to the Bookings Tax. (Rental Fee, or Bookings Fee - this is a polymorphic association)
-----------------|---------|------------|------------
id               | Integer | Read       | Bookings Tax's id.
amount           | [Decimal](/reference/enums#formats)  | Read       | Bookings Tax's amount.
name             | [Object](/reference/enums#formats)   | Read       | Bookings Tax's name, list of locales described in [enums section](/reference/enums#locales).
percentage       | [Decimal](/reference/enums#formats)  | Read       | Bookings Tax's percentage.
tax_included_in_price | Boolean | Read       | Tax amount already included in taxable's price if set to true. 
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Bookings Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Bookings Tax's update time.
{: class="table table-bordered"}
  </div>
</div>


## List bookings taxes

Based on the OAuth token scopes bookings taxes will be limited to a
certain range.

Scope                    | Read Permissions
-------------------------|------------
`:bookings_write_owned`  | Display only bookings taxes for bookings created by app making the request
`:bookings_read`         | Display all bookings taxes
`:bookings_write`        | Display all bookings taxes
{: class="table table-bordered"}

List all bookings taxes for current account(s).

~~~
GET /bookings_taxes
~~~

<%= render 'json_response', endpoint: "bookings_taxes", scopes: %w(bookings_read-bookings_write-bookings_write_owned) %>

## Get a single bookings tax

Returns a single bookings tax identified by ID.

~~~
GET /bookings_taxes/:bookings_tax_id
~~~

<%= render 'json_response', endpoint: "bookings_taxes", scopes: %w(bookings_read-bookings_write-bookings_write_owned) %>
