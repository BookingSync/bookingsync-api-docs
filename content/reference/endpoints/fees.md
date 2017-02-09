# Fees

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Fee's id.
-----------------|---------|------------|------------
downpayment_percentage | [Decimal](/reference/enums#formats) | Read       | Fee's downpayment percentage.
name             | [Object](/reference/enums#formats)   | Read       | Fee's name, list of locales described in [enums section](/reference/enums#locales).
kind             | String  | Read       | Fee's kind, list of fee's kinds described in [enums section](/reference/enums#fee-kinds)
rate             | [Decimal](/reference/enums#formats)  | Read       | Fee's rate.
rate_kind        | String  | Read       | Fee's rate kind, list of fee's rate kinds described in [enums section](/reference/enums#fee-rate-kinds).
-----------------|---------|------------|------------
archived_at      | [Time](/reference/enums#formats) | Read         | Fee's archive time.
created_at       | [Time](/reference/enums#formats) | Read         | Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Fee's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Fee's id.
-----------------|---------|------------|------------
downpayment_percentage | [Decimal](/reference/enums#formats) | Read/Write | Fee's downpayment percentage.
name             | [Object](/reference/enums#formats)   | Read/Write | Fee's name, list of locales described in [enums section](/reference/enums#locales).
kind             | String  | Read/Write | Fee's kind, list of fee's kinds described in [enums section](/reference/enums#fee-kinds)
rate             | [Decimal](/reference/enums#formats)  | Read/Write | Fee's rate.
rate_kind        | String  | Read/Write | Fee's rate kind, list of fee's rate kinds described in [enums section](/reference/enums#fee-rate-kinds).
-----------------|---------|------------|------------
archived_at      | [Time](/reference/enums#formats) | Read         | Fee's archive time.
created_at       | [Time](/reference/enums#formats) | Read         | Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Fee's update time.
{: class="table table-bordered"}
  </div>
</div>

## List fees

List all fees for given account(s).

~~~
GET /fees
~~~

<%= render 'json_response', endpoint: "fees", scopes: [{ public: "public-rates_write" }] %>

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
