# Bookings Payments

1. TOC
{:toc}

## List bookings payments

Required OAuth scope: `:payments_read` or `:payments_write`

List all bookings payments for given account.

~~~
GET /bookings_payments
~~~

Response:

<%= json_response 'bookings_payments/index' %>

## Get a single bookings payment

Required OAuth scope: `:payments_read` or `:payments_write`

Returns a single bookings payment identified by ID.

~~~
GET /bookings_payments/:bookings_payment_id
~~~

<%= json_response 'bookings_payments/index' %>
