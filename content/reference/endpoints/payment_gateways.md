# Payment Gateways

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#preferences_payments_read" role="tab" data-toggle="pill">preferences_payments_read</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="preferences_payments_read" markdown="1">
Name                           | Type    | Read/Write | Description
-------------------------------|---------|------------|------------
id                             | BigInteger | Read       | Uniq identifier.
-------------------------------|---------|------------|------------
name                           | String  | Read       | Payment Gateway's name serving as an additional identifier.
test                           | Boolean | Read       | Submitted requests will not be charged if set to true.
gateway_name                   | String  | Read       | Payment Gateway's name, available values are described in: [enums section](/reference/enums#payment-gateway-names) 
credentials                    | [Object](/reference/enums#formats) | Read       | Credentials used for payment gateway authentication.
supported_cardtypes            | Array   | Read       | Array of String values containing supported cardtypes for selected gateway.
supported_currencies           | Array   | Read       | Array of string values containing supported currencies for selected gateway.
tokenize_credit_card_details   | Boolean | Read       | Credit Card details will be tokenized if set to true.
host_booking_pay_wallet_id     | String  | Read       | Wallet ID for BookingPay host.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Payment Gateway's creation time.
updated_at           | [Time](/reference/enums#formats) | Read       | Payment Gateway's creation time.
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


