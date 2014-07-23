# Payments

1. TOC
{:toc}

## List payments

List all payments for given account.

~~~
GET /payments
~~~

<%= render 'json_response', endpoint: "payments",
  scopes: %w(payments_read-payments_write) %>

## Get a single payment

Returns a single payment identified by ID.

~~~
GET /payments/:payment_id
~~~

<%= render 'json_response', endpoint: "payments",
  scopes: %w(payments_read-payments_write) %>

## Create a new payment

Returns a newly created payment.

~~~~
POST /payments
~~~~

### Parameters

Name             | Type     | Description
-----------------|----------|-----------
amount           | Integer  | **Required**. Payment's value.
booking_id       | Integer  | **Required**. Booking's id related to the payment.
currency         | String   | **Required**. Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies).
kind             | String   | **Required**. Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds).
fullname         | String   | Payer's fullname.
email            | String   | Payer's email.
locale           | String   | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales).
notes            | String   | Payment's additional information.
paid_at          | [Time](/reference/formats) | Payment's date.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "payments", request: "request",
  scopes: [{payments_write: "payments_read-payments_write"}] %>

## Update a payment

Returns an updated payment identified by ID.

~~~
PUT /payments/:payment_id
~~~

### Parameters

Name             | Type     | Description
-----------------|----------|-----------
amount           | Integer  | **Required**. Payment's value.
currency         | String   | **Required**. Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies).
kind             | String   | **Required**. Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds).
fullname         | String   | Payer's fullname.
email            | String   | Payer's email.
locale           | String   | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales).
notes            | String   | Payment's additional information.
paid_at          | [Time](/reference/formats) | Payment's date.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "payments", request: "request-update",
  scopes: [{payments_write: "payments_read-payments_write"}] %>

## Cancel a payment

Required OAuth scope: `:payments_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /payments/:payment_id
~~~~~~
