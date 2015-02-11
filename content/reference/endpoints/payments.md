# Payments

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#payments_read" role="tab" data-toggle="pill">payments_read</a></li>
  <li><a href="#payments_write" role="tab" data-toggle="pill">payments_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="payments_read" markdown="1">
Name                | Type     | Read/Write | Description
--------------------|----------|------------|------------
id                  | Integer  | Read       | Payment's id.
--------------------|----------|------------|------------
address1            | String   | Read       | Payer's first address.
address2            | String   | Read       | Payer's second address.
amount_in_cents     | Integer  | Read       | Payment's value.
card                | String   | Read       | Payment's card number, only the last 4 digits are visible. (example: `"XXXX-XXXX-XXXX-1234"`).
city                | String   | Read       | Payer's city.
country_code        | String   | Read       | Payer's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
currency            | String   | Read       | Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies).
kind                | String   | Read       | Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds).
email               | String   | Read       | Payer's email.
fullname            | String   | Read       | Payer's fullname.
ip                  | String   | Read       | Payer's ip.
locale              | String   | Read       | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales).
notes               | Text     | Read       | Payment's additional information.
state               | String   | Read       | Payer's state.
test                | Boolean  | Read       | Payment's test status.
zip                 | String   | Read       | Payer's zip code.
--------------------|----------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Payment's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Payment's update time.
rejected_at         | [Time](/reference/enums#formats) | Read       | Payment's reject time.
canceled_at         | [Time](/reference/enums#formats) | Read       | Payment's cancel time.
paid_at             | [Time](/reference/enums#formats) | Read       | Payment's issue time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="payments_write" markdown="1">
Name                | Type     | Read/Write | Description
--------------------|----------|------------|------------
id                  | Integer  | Read       | Payment's id.
--------------------|----------|------------|------------
address1            | String   | Read/Write | Payer's first address. (100 characters max)
address2            | String   | Read/Write | Payer's second address. (100 characters max)
amount_in_cents     | Integer  | Read/Write | **Required**. Payment's value.
card                | String   | Read       | Payment's card number, only the last 4 digits are visible. (example: `"XXXX-XXXX-XXXX-1234"`).
city                | String   | Read/Write | Payer's city. (100 characters max)
country_code        | String   | Read/Write | Payer's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
currency            | String   | Read/Write | Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies).
kind                | String   | Read/Write | **Required**. Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds).
email               | String   | Read/Write | Payer's email.
fullname            | String   | Read/Write | Payer's fullname.
ip                  | String   | Read       | Payer's ip.
locale              | String   | Read/Write | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales).
notes               | Text     | Read/Write | Payment's additional information.
state               | String   | Read/Write | Payer's state. (100 characters max, required if country_code set to `US`)
test                | Boolean  | Read       | Payment's test status.
zip                 | String   | Read/Write | Payer's zip code. (10 characters max)
--------------------|----------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Payment's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Payment's update time.
rejected_at         | [Time](/reference/enums#formats) | Read       | Payment's reject time.
canceled_at         | [Time](/reference/enums#formats) | Read       | Payment's cancel time.
paid_at             | [Time](/reference/enums#formats) | Read/Write | Payment's issue time.
{: class="table table-bordered"}
  </div>
</div>

## List payments

List all payments for given account.

~~~
GET /payments
~~~

<%= render 'json_response', endpoint: "payments", scopes: %w(payments_read-payments_write) %>

## Get a single payment

Returns a single payment identified by ID.

~~~
GET /payments/:payment_id
~~~

<%= render 'json_response', endpoint: "payments", scopes: %w(payments_read-payments_write) %>

## Create a new payment

Returns a newly created payment.

~~~~
POST /payments
~~~~

<%= render 'json_response', endpoint: "payments", request: "request",
  scopes: [{ payments_write: "payments_read-payments_write" }] %>

## Update a payment

Returns an updated payment identified by ID.

~~~
PUT /payments/:payment_id
~~~

<%= render 'json_response', endpoint: "payments", request: "request-update",
  scopes: [{ payments_write: "payments_read-payments_write" }] %>

## Cancel a payment

Required OAuth scope: `:payments_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /payments/:payment_id
~~~~~~
