# Payment Gateways

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#preferences_payments_read" role="tab" data-toggle="pill">preferences_payments_read</a></li>
  <li><a href="#preferences_payments_write" role="tab" data-toggle="pill">preferences_payments_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="preferences_payments_read" markdown="1">
Name                         | Type     | Read/Write | Description
-----------------------------|----------|------------|------------
id                           | Integer  | Read       | Payment Gateway's id.
name                         | String   | Read       | Payment Gateway's name.
test                         | Boolean  | Read       | Payment Gateway's test status.
gateway_name                 | String   | Read       | Payment Gateway's gateway_name.
credentials                  | String   | Read       | Payment Gateway's credentials hash
supported_cardtypes          | Array    | Read       | Payment Gateway's supported_cardtypes.
supported_currencies         | Array    | Read       | Payment Gateway's supported currencies, list of codes described in [enums section](/reference/enums/#currencies).
tokenize_credit_card_details | Boolean  | Read       | Payment Gateway's tokenize_credit_card_details status.
-----------------------------|----------|------------|------------
created_at                   | [Time](/reference/enums#formats) | Read       | Payment Gateway's create time.
updated_at                   | [Time](/reference/enums#formats) | Read       | Payment Gateway's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="preferences_payments_write" markdown="1">
Name                         | Type     | Read/Write | Description
-----------------------------|----------|------------|------------
id                           | Integer  | Read       | Payment Gateway's id.
name                         | String   | Read/Write | Payment Gateway's name.
test                         | Boolean  | Read/Write | Payment Gateway's test status.
gateway_name                 | String   | Read/Write | Payment Gateway's gateway_name.
credentials                  | String   | Read/Write | Payment Gateway's credentials hash
supported_cardtypes          | Array    | Read/Write | Payment Gateway's supported_cardtypes.
supported_currencies         | Array    | Read/Write | Payment Gateway's supported currencies, list of codes described in [enums section](/reference/enums/#currencies).
tokenize_credit_card_details | Boolean  | Read/Write | Payment Gateway's tokenize_credit_card_details status.
-----------------------------|----------|------------|------------
created_at                   | [Time](/reference/enums#formats) | Read       | Payment Gateway's create time.
updated_at                   | [Time](/reference/enums#formats) | Read       | Payment Gateway's update time.
{: class="table table-bordered"}
  </div>
</div>

## List payment_gateways

List all payment_gateways for a given account.

~~~
GET /payment_gateways
~~~

<%= render 'json_response', endpoint: "payment_gateways",
  scopes: %w(preferences_payments_read-preferences_payments_write) %>

## Get a single payment_gateway

Returns a single payment_gateway identified by ID.

~~~
GET /payment_gateways/:payment_gateway_id
~~~

<%= render 'json_response', endpoint: "payment_gateways",
  scopes: %w(preferences_payments_read-preferences_payments_write) %>

## Create a new payment_gateway

Returns a newly created payment_gateway.

~~~~
POST /payment_gateways
~~~~

<%= render 'json_response', endpoint: "payment_gateways", request: "create",
  scopes: [{
    "preferences_payments_read-preferences_payments_write" => "preferences_payments_read-preferences_payments_write"
  }] %>

## Update a payment_gateway

Returns an updated payment_gateway identified by ID.

~~~
PUT /payment_gateways/:payment_gateway_id
~~~

<%= render 'json_response', endpoint: "payment_gateways", request: "update",
  scopes: [{
    "preferences_payments_read-preferences_payments_write" => "preferences_payments_read-preferences_payments_write"
  }] %>

## Destroy a payment_gateway

Required OAuth scope: `:preferences_payments_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /payment_gateways/:payment_gateway_id
~~~~~~
