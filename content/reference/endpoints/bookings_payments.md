# Bookings Payments

1. TOC
{:toc}

## Overview

This resource represents the Booking's Payments, establishing the relationship between [Payments](/reference/endpoints/payments/) and [Bookings](/reference/endpoints/bookings/).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#payments_read-payments_write" role="tab" data-toggle="pill">
    payments_read / payments_write
  </a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="payments_read-payments_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Bookings Payment
booking          | Integer | Read       | Booking's ID related to the Bookings Payment
rental           | Integer | Read       | Rental's ID related to the Bookings Payment
payment          | Integer | Read       | Rental's ID related to the Bookings Payment
-----------------|---------|------------|------------
id               | Integer | Read       | Bookings Payment's id.
amount_in_cents  | Integer | Read       | Bookings Payment's amount in cents.
currency         | String  | Read       | Bookings Payment's currency code, list of codes described in [enums section](/reference/enums#currencies).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Bookings Payment's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Bookings Payment's update time.
{: class="table table-bordered"}
  </div>
</div>

## List bookings payments

List all bookings payments for a given account.

~~~
GET /bookings_payments
~~~

<%= render '/json_response.html', endpoint: "bookings_payments",
  scopes: %w(payments_read-payments_write) %>

## Get a single bookings payment

Returns a single bookings payment identified by ID.

~~~
GET /bookings_payments/:bookings_payment_id
~~~

<%= render '/json_response.html', endpoint: "bookings_payments",
  scopes: %w(payments_read-payments_write) %>
