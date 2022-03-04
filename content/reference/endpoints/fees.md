# Fees

1. TOC
{:toc}

## Overview

This resource represents the Fees (Services) that are the part of the [Bookings](/reference/endpoints/bookings/) as [Bookings Fees](/reference/endpoints/bookings_fees/) - either as "standalone fees" (that don't have any relationship to [Rentals Fees](/reference/endpoints/rentals_fees/)) or the ones that have a relationship to [Rentals Fees](/reference/endpoints/rentals_fees/).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                   | Type    | Read/Write | Description
-----------------------|---------|------------|------------
account                | Integer | Read       | Account's ID related to the Fee
-----------------------|---------|------------|------------
id                     | Integer | Read       | Fee's id.
currency               | String  | Read       | Requested fee's currency, defaults to `original_currency`. List of currencies codes described in [enums section](/reference/enums#currencies)
downpayment_percentage | [Decimal](/reference/enums#formats) | Read       | Fee's downpayment percentage.
exchange_rate          | [Decimal](/reference/enums#formats) | Read       | The rate used to convert from the `original_currency` to `currency`.
name                   | [Object](/reference/enums#formats)   | Read       | Fee's name, list of locales described in [enums section](/reference/enums#locales).
kind                   | String  | Read       | Fee's kind, list of fee's kinds described in [enums section](/reference/enums#fee-kinds)
original_currency      | String  | Read       | Fee's original currency, list of currencies codes described in [enums section](/reference/enums#currencies)
rate                   | [Decimal](/reference/enums#formats)  | Read       | Fee's rate.
rate_kind              | String  | Read       | Fee's rate kind, list of fee's rate kinds described in [enums section](/reference/enums#fee-rate-kinds).
maximum_possible_rate  | [Decimal](/reference/enums#formats) | Read       | Fee's maximum possible rate, calculated value won't exceed amount present on this attribute. It is applied only for percentage kinds, list of kinds is described in [enums section](/reference/enums#fee-kinds)
notes                  | String  | Read       | Fee's notes
-----------------------|---------|------------|------------
archived_at            | [Time](/reference/enums#formats) | Read         | Fee's archive time.
created_at             | [Time](/reference/enums#formats) | Read         | Fee's create time.
updated_at             | [Time](/reference/enums#formats) | Read         | Fee's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name                   | Type    | Read/Write | Description | Constraints
-----------------------|---------|------------|-------------|
account                | Integer | Read       | Account's ID related to the Fee |
-----------------------|---------|------------|------------|
id                     | Integer | Read       | Fee's id. |
currency               | String  | Read/Write | Requested fee's currency, defaults to `original_currency`. List of currencies codes described in [enums section](/reference/enums#currencies) | Must be one of the currencies enum 
downpayment_percentage | [Decimal](/reference/enums#formats) | Read/Write |  Fee's downpayment percentage. | **Required**, must be great than or equal to: 0, must be less than or equal to: 100
exchange_rate          | [Decimal](/reference/enums#formats) | Read       | The rate used to convert from the `original_currency` to `currency`. |
name                   | [Object](/reference/enums#formats)   | Read/Write | Fee's name, list of locales described in [enums section](/reference/enums#locales). | **Required**, cannot contain non-printing characters 
kind                   | String  | Read/Write | Fee's kind, list of fee's kinds described in [enums section](/reference/enums#fee-kinds) | **Required** must be one of the fee kinds
original_currency      | String  | Read       | Fee's original currency, list of currencies codes described in [enums section](/reference/enums#currencies) |
rate                   | [Decimal](/reference/enums#formats)  | Read/Write | Fee's rate. | **Required**, greater than or equal to: 0 
rate_kind              | String  | Read/Write |  Fee's rate kind, list of fee's rate kinds described in [enums section](/reference/enums#fee-rate-kinds). | **Required**, must be one of the fee rate kinds 
maximum_possible_rate  | [Decimal](/reference/enums#formats) | Read/Write | Fee's maximum possible rate, calculated value won't exceed amount present on this attribute. | Must be greater than or equal to: 0, applicable only for percentage kinds (list of kinds is described in [enums section](/reference/enums#fee-kinds)).
notes                  | String  | Read/Write       | Fee's notes | Maximum length: 100
-----------------------|---------|------------|------------|
archived_at            | [Time](/reference/enums#formats) | Read         | Fee's archive time. |
created_at             | [Time](/reference/enums#formats) | Read         | Fee's create time. |
updated_at             | [Time](/reference/enums#formats) | Read         | Fee's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List fees

List all fees for a given account(s).

~~~
GET /fees
~~~

<%= render 'json_response', endpoint: "fees", scopes: [{ public: "public-rates_write" }] %>

## Change fees currency

Coverts fee's rate to defined currency.

Example:

~~~
GET /fees?exchange_to_currency=USD
~~~

### Exchange Parameters

Name                 | Type    | Default | Description
---------------------|---------|--------------
exchange_to_currency | String  | original currency | Fees with exchanged rate value.

## Get a single fee

Returns a single fee identified by ID.

~~~
GET /fees/:fee_id
~~~

<%= render 'json_response', endpoint: "fees", scopes: [{ public: "public-rates_write" }] %>

## Create a new fee

Returns a newly created fee.

~~~
POST /fees
~~~

<%= render 'json_response', endpoint: "fees", request: "create",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Update a fee

Returns an updated fee identified by ID.

~~~
PUT /fees/:fee_id
~~~

<%= render 'json_response', endpoint: "fees", request: "update",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Archive a fee

<div class="callout callout-info" markdown="1">
  <h4>Archived fees</h4>
  Fees that were archived are no longer considered valid, but will be present on `index` and `show` actions.
  They can be identified by presence of `archived_at` timestamp.
</div>

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /fees/:fee_id
~~~~~~
