# Payment Gateways

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="preferences_payments_read"><a href="#public" role="tab" data-toggle="pill">preferences_payments_read</a></li>
  <li><a href="#preferences_payments_write" role="tab" data-toggle="pill">preferences_payments_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="preferences_payments_write" markdown="1">
Name                          | Type    | Read/Write | Description
------------------------------|---------|------------|------------
id                            | Integer | Read       | Payment Gateway's id.
account_id                    | Integer | Read      | Account id related to the payment gateway.
gateway_name                  | String  | Write      | Name of the gateway. Accepted gateways:authorize_net, blue_pay, bogus, braintree, moneris, moneris_us, ogone, omise, paybox_direct, paybox_direct_plus, paymill, paypal, paypal_ca, quickpay, sage, stripe, vacaypay, wepay
credentials                   | Array   | Write      | List of credentials. accepted keys: login, password, merchant_id, public_key, private_key, user, signature, signature_encryptor, secret_key, account_id, api_login, api_key, account_uuid, publishable_key, client_id, access_token
supported_cardtypes           | Array   | Write      | List of supported card types. Accepted types depend on the gateway.
supported_currencies          | Array   | Write      | List of supported currencies.
test                          | Boolean | Write      | Set it true if payment gateway is used for testing.
tokenize_credit_card_details  | Boolean | Write      | If true payments will store tokenized cc data when possible (depends on gateway).
name                          | String  | Write      | Name of the payment gateway.
created_at              | [Time](/reference/enums#formats) | Read       | Payment Gateway's create time.
updated_at              | [Time](/reference/enums#formats) | Read       | Payment Gateway's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane active" id="preferences_payments_read" markdown="1">
Name                          | Type    | Read/Write | Description
------------------------------|---------|------------|------------
id                            | Integer | Read       | Payment Gateway's id.
account_id                    | Integer | Read      | Account id related to the payment gateway.
gateway_name                  | String  | Read      | Name of the gateway. Accepted gateways:authorize_net, blue_pay, bogus, braintree, moneris, moneris_us, ogone, omise, paybox_direct, paybox_direct_plus, paymill, paypal, paypal_ca, payu_latam, quickpay, sage, stripe, vacaypay, wepay
credentials                   | Array   | Read      | List of credentials. accepted keys: login, password, merchant_id, public_key, private_key, user, signature, signature_encryptor, secret_key, account_id, api_login, api_key, account_uuid, publishable_key, client_id, access_token
supported_cardtypes           | Array   | Read      | List of supported card types. Accepted types depend on the gateway.
supported_currencies          | Array   | Read      | List of supported currencies.
test                          | Boolean | Read      | Set it true if payment gateway is used for testing.
tokenize_credit_card_details  | Boolean | Read      | If true payments will store tokenized cc data when possible (depends on gateway).
name                          | String  | Read      | Name of the payment gateway.
created_at              | [Time](/reference/enums#formats) | Read       | Payment Gateway's create time.
updated_at              | [Time](/reference/enums#formats) | Read       | Payment Gateway's update time.
{: class="table table-bordered"}
  </div>
</div>

## List payment_gateways

Scope                    | Read Permissions
-------------------------|------------
`:preferences_payments_read`         | Display all payment_gateways for current account(s)
`:preferences_payments_write`        | Display all payment_gateways for current account(s)
{: class="table table-bordered"}

Returns a list of all payment_gateways for current account(s).

~~~
GET /payment_gateways
~~~

<%= render 'json_response', endpoint: "payment_gateways",
  scopes: %w(preferences_payments_read-preferences_payments_write) %>

## Get a single payment_gateway

Returns a single payment_gateway identified by ID

~~~
GET /payment_gateways/:payment_gateway_id
~~~

<%= render 'json_response', endpoint: "payment_gateways",
  scopes: %w(preferences_payments_read-preferences_payments_write) %>

## Create a new payment_gateway

<div class="callout callout-info" markdown="1">
  <h4>Supported card types</h4>
  At least one supported card type must be given.
</div>

Creates a payment_gateway for your account.

~~~~
POST /payment_gateways
~~~~

<%= render 'json_response', endpoint: "payment_gateways", request: "create",
  scopes: %w(preferences_payments_write) %>

## Update a payment_gateway

Returns an updated payment_gateway identified by ID.

~~~
PUT /payment_gateways/:payment_gateway_id
~~~

<%= render 'json_response', endpoint: "payment_gateways", request: "update",
  scopes: [ {preferences_payments_write: "preferences_payments_write" }] %>

## Destroy a payment_gateway

Required OAuth scope: `:preferences_payments_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /payment_gateways/:payment_gateway_id
~~~~~~
