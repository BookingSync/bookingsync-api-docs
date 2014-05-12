# Payments

1. TOC
{:toc}

## List payments

Required OAuth scope: `:payments_read` or `:payments_write`

List all payments for given account.

~~~
GET /payments
~~~

Response:

<%= json_response 'payments/index' %>

## Get a single payment

Required OAuth scope: `:payments_read` or `:payments_write`

Returns a single payment identified by ID.

~~~
GET /payments/:payment_id
~~~

Response:

<%= json_response 'payments/index' %>


## Create a new payment

Required OAuth scope: `:payments_write`

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

Response:

<%= json_response 'payments/index' %>


## Update a payment

Required OAuth scope: `:payments_write`

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

Response:

<%= json_response 'payments/index' %>


## Cancel a payment

Required OAuth scope: `:payments_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /payments/:payment_id
~~~~~~

