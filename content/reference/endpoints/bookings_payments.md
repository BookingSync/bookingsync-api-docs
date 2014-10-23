# Bookings Payments

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#payments_read-payments_write" role="tab" data-toggle="pill">
    payments_read / payments_write
  </a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="payments_read-payments_write" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Bookings Payment's id.
-----------------|---------|------------|------------
amount_in_cents  | Integer | Read       | Bookings Payment's value.
currency         | String  | Read       | Bookings Payment's currency code, list of codes described in [enums section](/reference/enums#currencies).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Bookings Payment's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Bookings Payment's update time.
{: class="table table-bordered"}
  </div>
</div>

## List bookings payments

List all bookings payments for given account.

~~~
GET /bookings_payments
~~~

<%= render 'json_response', endpoint: "bookings_payments",
  scopes: %w(payments_read-payments_write) %>

## Get a single bookings payment

Returns a single bookings payment identified by ID.

~~~
GET /bookings_payments/:bookings_payment_id
~~~

<%= render 'json_response', endpoint: "bookings_payments",
  scopes: %w(payments_read-payments_write) %>
