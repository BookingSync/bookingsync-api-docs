# Payments

1. TOC
{:toc}

## Overview

This resource represents the Payments for [Bookings](/reference/endpoints/bookings/), which can be either recorded manually (via API or manually) or be automated (with `instant-booking` and `bookingsync` kind).

Payments can also drive the lifecycle of the [Bookings](/reference/endpoints/bookings/) - creating a `paid` Payment (the ons that have `paid_at` timestamp assigned) with `instant-booking` kind ensures that the Booking is `booked` (especially useful for confirming tentative Bookings).

If you are interested in implementing your own payment flow, check out this [guide](/guides/secure-payments-by-bookingsync/#instant-booking-flow).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li><a href="#payments_write_owned" role="tab" data-toggle="pill">payments_write_owned</a></li>
  <li class="active"><a href="#payments_read" role="tab" data-toggle="pill">payments_read</a></li>
  <li><a href="#payments_write" role="tab" data-toggle="pill">payments_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane" id="payments_write_owned" markdown="1">
Name                | Type     | Read/Write | Description | Constraints 
--------------------|----------|------------|-------------|
account             | Integer  | Read       | Account's ID related to the Payment |
payment_gateway     | Integer  | Read (requires `preferences_payments_read` scope)      | Payment Gateway's ID related to the Payment |
bookings            | Array    | Read       | Bookings' IDs related to the Payment |
bookings_payments   | Array    | Read       | Booking Payments' IDs related to the Payment |
--------------------|----------|------------|-------------|
id                  | Integer  | Read       | Payment's id. |
order_id            | String   | Read       | ID of order (only for internal Payments managed by BookingSync) 
gateway_id          | Integer  | Write      | ID of the Payment Gateway of Paypal Express Gateway | **Required** for `instant-booking` or `bookingsync` kind
gateway_type        | String   | Write      | Type of the entity representing the gateway (this is a polymorphic relationship) | `PaymentGateway` or `PaypalExpressGateway`, **Required** for `instant-booking` or `bookingsync` kind
gateway_name        | String   | Write      | Payment Gateway's name, available values are described in [enums section](/reference/enums#payment-gateway-names) | **Required** for `instant-booking` or `bookingsync` kind
transaction_id      | String   | Read/Write | ID of transaction coming from the Payment Gateway. |
address1            | String   | Read/Write | Payer's first address. | Maximum length: 100
address2            | String   | Read/Write | Payer's second address. | Maximum length: 100
amount_in_cents     | Integer  | Read/Write | Payment's amount in cents. | **Required** 
card                | String   | Read/Write | Payment's card number, only the last 4 digits are visible. (example: `"XXXX-XXXX-XXXX-1234"`). |
city                | String   | Read/Write | Payer's city. | Maximum length: 100
country_code        | String   | Read/Write | Payer's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements). | Must be one of the country codes if present
currency            | String   | Read/Write | Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies). | **Required**, must be one of the currencies
description         | String   | Read       | Auto-generated description based on Rental's `name` and related Booking's `start_at`/`end_at` timestamps |
kind                | String   | Read/Write | Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds). | **Required**, must be one of the payment kin 
email               | String   | Read/Write | Payer's email. | Must be of email format if present
fullname            | String   | Read/Write | Payer's fullname. | Cannot contain non-printing characters
ip                  | String   | Read       | Payer's ip. |
locale              | String   | Read/Write | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales). | Must be of on the Account's available locales if present
notes               | Text     | Read/Write | Payment's additional information. | 
state               | String   | Read/Write | Payer's state. | Maximum length: 100, required if country_code set to `US`
test                | Boolean  | Read       | Payment's test status. |
zip                 | String   | Read/Write | Payer's zip code. | Maximum length: 10
credit_card_token   | String   | Read/Write | Token derived from the Credit Card | 
offsite_payment     | Boolean  | Read/Write | Whether Payment is an offsite one or not |
locked              | String   | Read       | Payment's locked status. |
chargeable          | Boolean  | Read       | Whether Payment is chargeable or not (e.g. if the related Booking is canceled or fully paid, it's going to return `false`) |
--------------------|----------|------------|-------------|
created_at               | [Time](/reference/enums#formats) | Read       | Payment's create time. |
updated_at               | [Time](/reference/enums#formats) | Read       | Payment's update time. |
rejected_at              | [Time](/reference/enums#formats) | Read       | Payment's reject time. |
canceled_at              | [Time](/reference/enums#formats) | Read       | Payment's cancel time. |
paid_at                  | [Time](/reference/enums#formats) | Read/Write | Payment's paid time. | **Required** unless `kind` is `bookingsync` or `instant-booking`, must be in the past
forget_me_at             | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr). |
processing_restricted_at | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr). |
capturable_from          | [Date](/reference/enums#formats) | Read/Write |  A date from which Payment is capturable |
authorized_at            | [Time](/reference/enums#formats) | Read/Write | Payment's authorization time |
escrow_date              | [Date](/reference/enums#formats) | Read       |  Payment's escrow date (applicable for BookingPay Payment Gateway) |
{: class="table table-bordered"}
  </div>
  <div class="tab-pane active" id="payments_read" markdown="1">
Name                | Type     | Read/Write | Description
--------------------|----------|------------|------------
account             | Integer  | Read       | Account's ID related to the Payment
payment_gateway     | Integer  | Read (requires `preferences_payments_read` scope) | Payment Gateway's ID related to the Payment 
bookings            | Array    | Read       | Bookings' IDs related to the Payment
bookings_payments   | Array    | Read       | Booking Payments' IDs related to the Payment
--------------------|----------|------------|------------
id                  | Integer  | Read       | Payment's id.
order_id            | String   | Read       | Id of order (only for instant bookings managed by BookingSync)
transaction_id      | String   | Read       | Id of paypal transaction.
address1            | String   | Read       | Payer's first address.
address2            | String   | Read       | Payer's second address.
amount_in_cents     | Integer  | Read       | Payment's value.
card                | String   | Read       | Payment's card number, only the last 4 digits are visible. (example: `"XXXX-XXXX-XXXX-1234"`).
city                | String   | Read       | Payer's city.
country_code        | String   | Read       | Payer's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
currency            | String   | Read       | Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies).
description         | String   | Read       | Auto-generated description based on Rental's `name` and related Booking's `start_at`/`end_at` timestamps.
kind                | String   | Read       | Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds).
email               | String   | Read       | Payer's email.
fullname            | String   | Read       | Payer's fullname.
ip                  | String   | Read       | Payer's ip.
locale              | String   | Read       | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales).
notes               | Text     | Read       | Payment's additional information.
state               | String   | Read       | Payer's state.
test                | Boolean  | Read       | Payment's test status.
zip                 | String   | Read       | Payer's zip code.
credit_card_token   | String   | Read       | Token derived from the Credit Card  
offsite_payment     | Boolean  | Read       | Whether Payment is an offsite one or not 
locked              | String   | Read       | Payment's locked status. 
chargeable          | Boolean  | Read       | Whether Payment is chargeable or not (e.g. if the related Booking is canceled or fully paid, it's going to return `false`) 
--------------------|----------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Payment's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Payment's update time.
rejected_at         | [Time](/reference/enums#formats) | Read       | Payment's reject time.
canceled_at         | [Time](/reference/enums#formats) | Read       | Payment's cancel time.
paid_at             | [Time](/reference/enums#formats) | Read       | Payment's paid time.
forget_me_at     | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr).
processing_restricted_at | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr).
capturable_from          | [Date](/reference/enums#formats) | Read       |  A date from which Payment is capturable 
authorized_at            | [Time](/reference/enums#formats) | Read       | Payment's authorization time 
escrow_date              | [Date](/reference/enums#formats) | Read       |  Payment's escrow date (applicable for BookingPay Payment Gateway) 
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="payments_write" markdown="1">
Name                | Type     | Read/Write | Description | Constraints
--------------------|----------|------------|-------------|
account             | Integer  | Read       | Account's ID related to the Payment |
payment_gateway     | Integer  | Read (requires `preferences_payments_read` scope) | Payment Gateway's ID related to the Payment |
bookings            | Array    | Read       | Bookings' IDs related to the Payment |
bookings_payments   | Array    | Read       | Booking Payments' IDs related to the Payment |
--------------------|----------|------------|-------------|
id                  | Integer  | Read       | Payment's id. |
order_id            | String   | Read       | ID of order (only for internal Payments managed by BookingSync) 
gateway_id          | Integer  | Write      | ID of the Payment Gateway of Paypal Express Gateway | **Required** for `instant-booking` or `bookingsync` kind
gateway_type        | String   | Write      | Type of the entity representing the gateway (this is a polymorphic relationship) | `PaymentGateway` or `PaypalExpressGateway`, **Required** for `instant-booking` or `bookingsync` kind
gateway_name        | String   | Write      | Payment Gateway's name, available values are described in [enums section](/reference/enums#payment-gateway-names) | **Required** for `instant-booking` or `bookingsync` kind
transaction_id      | String   | Read/Write | ID of transaction coming from the Payment Gateway. |
address1            | String   | Read/Write | Payer's first address. | Maximum length: 100
address2            | String   | Read/Write | Payer's second address. | Maximum length: 100
amount_in_cents     | Integer  | Read/Write | Payment's amount in cents. | **Required** 
card                | String   | Read/Write | Payment's card number, only the last 4 digits are visible. (example: `"XXXX-XXXX-XXXX-1234"`). |
city                | String   | Read/Write | Payer's city. | Maximum length: 100
country_code        | String   | Read/Write | Payer's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements). | Must be one of the country codes if present
currency            | String   | Read/Write | Payment's currency code, list of codes described in [enums section](/reference/enums/#currencies). | **Required**, must be one of the currencies
description         | String   | Read       | Auto-generated description based on Rental's `name` and related Booking's `start_at`/`end_at` timestamps. |
kind                | String   | Read/Write | Payment's kind, list of kinds described in [enums section](/reference/enums/#payment-kinds). | **Required**, must be one of the payment kin 
email               | String   | Read/Write | Payer's email. | Must be of email format if present
fullname            | String   | Read/Write | Payer's fullname. | Cannot contain non-printing characters
ip                  | String   | Read       | Payer's ip. |
locale              | String   | Read/Write | Payer's preferred locale, list of locales described in [enums section](/reference/enums/#locales). | Must be of on the Account's available locales if present
notes               | Text     | Read/Write | Payment's additional information. | 
state               | String   | Read/Write | Payer's state. | Maximum length: 100, required if country_code set to `US`
test                | Boolean  | Read       | Payment's test status. |
zip                 | String   | Read/Write | Payer's zip code. | Maximum length: 10
credit_card_token   | String   | Read/Write | Token derived from the Credit Card | 
offsite_payment     | Boolean  | Read/Write | Whether Payment is an offsite one or not |
locked              | String   | Read       | Payment's locked status. |
chargeable          | Boolean  | Read       | Whether Payment is chargeable or not (e.g. if the related Booking is canceled or fully paid, it's going to return `false`) |
--------------------|----------|------------|-------------|
created_at          | [Time](/reference/enums#formats) | Read       | Payment's create time. |
updated_at          | [Time](/reference/enums#formats) | Read       | Payment's update time. |
rejected_at         | [Time](/reference/enums#formats) | Read       | Payment's reject time. |
canceled_at         | [Time](/reference/enums#formats) | Read       | Payment's cancel time. |
paid_at             | [Time](/reference/enums#formats) | Read/Write | Payment's paid time. | **Required** unless `kind` is `bookingsync` or `instant-booking`, must be in the past
forget_me_at     | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr). |
processing_restricted_at | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr). |
capturable_from          | [Date](/reference/enums#formats) | Read/Write |  A date from which Payment is capturable |
authorized_at            | [Time](/reference/enums#formats) | Read/Write | Payment's authorization time |
escrow_date              | [Date](/reference/enums#formats) | Read       |  Payment's escrow date (applicable for BookingPay Payment Gateway) |
{: class="table table-bordered"}
  </div>
</div>

## List payments

List all payments for a given account.

~~~
GET /payments
~~~

<%= render 'json_response', endpoint: "payments",
  scopes: %w(payments_write_owned-payments_read-payments_write) %>

## Search payments

Search parameters allow to filter payments by specified fields.

Example:

~~~
GET /payments?order_id=BS-abc-123
~~~

### Search Parameters

Name             | Type    | Description
-----------------|---------|--------------
order_id         | String  | List of comma separated IDs. Returns only payments with this order_id(s)
{: class="table table-bordered"}

## Get a single payment

Returns a single payment identified by ID.

~~~
GET /payments/:payment_id
~~~

<%= render 'json_response', endpoint: "payments",
  scopes: %w(payments_write_owned-payments_read-payments_write) %>

## Create a new payment

Returns a newly created payment.

~~~~
POST /bookings/:booking_id/payments
~~~~

<%= render 'json_response', endpoint: "payments", request: "create",
  scopes: [{
    "payments_write_owned / payments_write" => "payments_write_owned-payments_read-payments_write"
  }] %>

## Update a payment

Returns an updated payment identified by ID.

~~~
PUT /payments/:payment_id
~~~

<%= render 'json_response', endpoint: "payments", request: "update",
  scopes: [{
    "payments_write_owned / payments_write" => "payments_write_owned-payments_read-payments_write"
  }] %>

## Cancel a payment

Required OAuth scope: `:payments_write_owned` or `:payments_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /payments/:payment_id
~~~~~~
