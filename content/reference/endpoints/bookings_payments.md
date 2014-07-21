# Bookings Payments

1. TOC
{:toc}

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
