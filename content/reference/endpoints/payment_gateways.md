# Payment Gateways

1. TOC
{:toc}

## Overview

This resource represents Payment Gateways (allowing integration with providers such Stripe, Ingenico etc.) that you can later assign to [Rentals](/reference/endpoints/rentals/) and start accepting payments via credit card.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#preferences_payments_read" role="tab" data-toggle="pill">preferences_payments_read</a></li>
  <li><a href="#preferences_payments_write" role="tab" data-toggle="pill">preferences_payments_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="preferences_payments_read" markdown="1">
Name                           | Type    | Read/Write | Description
-------------------------------|---------|------------|------------
account                        | Integer | Read       | Account's ID related to the Payment Gateway
-------------------------------|---------|------------|------------
id                             | BigInteger | Read    | Uniq identifier.
name                           | String  | Read       | Payment Gateway's name serving as an additional identifier.
test                           | Boolean | Read       | Submitted requests will not be charged if set to true.
gateway_name                   | String  | Read       | Payment Gateway's name, available values are described in: [enums section](/reference/enums#payment-gateway-names) 
credentials                    | [Object](/reference/enums#formats) | Read       | Credentials used for payment gateway authentication.
supported_cardtypes            | Array   | Read       | Array of String values containing supported cardtypes for selected gateway.
supported_currencies           | Array   | Read       | Array of string values containing supported currencies for selected gateway.
tokenize_credit_card_details   | Boolean | Read       | Credit Card details will be tokenized if set to true before card's authorization. The value will be automatically set to true when handling 3DS flow.
host_booking_pay_wallet_id     | String  | Read       | Wallet ID for BookingPay host.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Payment Gateway's creation time.
updated_at           | [Time](/reference/enums#formats) | Read       | Payment Gateway's creation time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="preferences_payments_write" markdown="1">
Name                           | Type    | Read/Write | Description | Constraints 
-------------------------------|---------|------------|-------------|
account                        | Integer | Read       | Account's ID related to the Payment Gateway |
-------------------------------|---------|------------|-------------|
id                             | BigInteger | Read    | Uniq identifier. |
name                           | String  | Read/Write       | Payment Gateway's name serving as an additional identifier. | **Required**, must not contain non-printing characters
test                           | Boolean | Read/Write       | Submitted requests will not be charged if set to true (test mode/sandbox will be used). |
gateway_name                   | String  | Read/Write       | Payment Gateway's name, available values are described in: [enums section](/reference/enums#payment-gateway-names) | **Required**, must be one of the available gateway names 
credentials                    | [Object](/reference/enums#formats) | Read/Write | Credentials used for payment gateway authentication. | **Required**, the schema depends on `gateway_name`
supported_cardtypes            | Array   | Read/Write       | Array of String values containing supported cardtypes for selected gateway, available values are described in: [enums section](/reference/enums#payment-gateway-cardtypes) | **Required**, must contain valid cardtypes supported by a given payment gateway
supported_currencies           | Array   | Read/Write       | Array of string values containing supported currencies for selected gateway. | **Required**, must contain valid currencies
tokenize_credit_card_details   | Boolean | Read/Write       | Credit Card details will be tokenized if set to true before card's authorization. The value will be automatically set to true when handling 3DS flow. |
host_booking_pay_wallet_id     | String  | Read             | Wallet ID for BookingPay host. |
---------------------|---------|------------|-------------|
created_at           | [Time](/reference/enums#formats) | Read       | Payment Gateway's creation time. |
updated_at           | [Time](/reference/enums#formats) | Read       | Payment Gateway's creation time. |
{: class="table table-bordered"}
  </div>
</div>


## List Payment Gateways

List all Payment Gateways for a given account.

~~~
GET /payment_gateways
~~~

<%= render 'json_response', endpoint: "payment_gateways", scopes: %w(preferences-payments-read) %>

## Get a single Payment Gateway

Returns a single payment gateway identified by ID.

~~~
GET /payment_gateways/:payment_gateway_id
~~~

<%= render 'json_response', endpoint: "payment_gateways", scopes: %w(preferences-payments-read) %>


## Create a new Payment Gateway

Creates a Payment Gateway

~~~
POST /payment_gateways
~~~

<%= render 'json_response', endpoint: "payment_gateways", request: "create",
scopes: [{ preferences_payments_write: "preferences-payments-read" }] %>

## Update a  Payment Gateway

Returns an updated payment gateway identified by ID.

~~~
PUT /payment_gateways/:payment_gateway_id
~~~

<%= render 'json_response', endpoint: "payment_gateways", request: "update",
scopes: [{ preferences_payments_write: "preferences-payments-read" }] %>
