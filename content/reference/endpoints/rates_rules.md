# Rates Rules

1. TOC
{:toc}

## Overview

This resource represents Rates Rules which drive the behavior behind the calculation of Booking's `initial_price` (i.e. the contribution from the Rental.). They are applied on top of the rates defined by either Nightly Rate Map or a combination of Rental's `base_rate`, Seasons and Periods.

A detailed description of Rates Rules is available [here](https://manual.bookingsync.com/hc/en-us/articles/360005324073-All-our-Rates-Rules)

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#rates_read" role="tab" data-toggle="pill">rates_read</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rates_read" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
account              | Integer | Read       | Account's ID related to the Rates Rule
rates_table          | Integer | Read       | Rates Table's ID related to Rates Rule
seasons              | Array   | Read       | Season's IDs related to the Rates Rule 
---------------------|---------|------------|------------
id                   | Integer | Read       | Rates Rule's id.
always_applied       | Boolean | Read       | Rates Rule's application status.
kind                 | String  | Read       | Rates Rule's kind. List of types described in [enums section](/reference/enums#rates-rules-types).
percentage           | [Decimal](/reference/enums#formats) | Read       | Rates Rule's percentage discount.
fixed_amount         | [Decimal](/reference/enums#formats) | Read       | Rates Rule's fixed price modifier.
period_name          | String  | Read       | Rates Rule's period name.
variables            | [Object](/reference/enums#formats) | Read       | Rates Rule's variables used depending on kind type. List of variables described in [enums section](/reference/enums#rates-rules-variables)
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's update time.
start_date           | [Date](/reference/enums#formats) | Read       | Rates Rule's start date.
end_date             | [Date](/reference/enums#formats) | Read       | Rates Rule's end date.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name                 | Type    | Read/Write | Description | Constrains
---------------------|---------|------------|-------------|
account              | Integer | Read       | Account's ID related to the Rates Rule | 
rates_table          | Integer | Read       | Rates Table's ID related to Rates Rule |
seasons              | Array   | Read       | Season's IDs related to the Rates Rule |
---------------------|---------|------------|-------------|
id                   | Integer | Read       | Rates Rule's id. |
season_ids           | Array   | Write      | Season ids related to the rates rule. | Use only one of these: `season_ids`, `always_applied` (if the value is `true`) or `start_date`/`end_date`
always_applied       | Boolean | Read/Write | Rates Rule's application status. | Use only one of these: `season_ids`, `always_applied` (if the value is `true`) or `start_date`/`end_date`
kind                 | String  | Read/Write | Rates Rule's kind. List of types described in [enums section](/reference/enums#rates-rules-types). | **Required**, myst be a valid rates rule kind
percentage           | [Decimal](/reference/enums#formats) | Read/Write | Rates Rule's percentage discount. | must be greater than or equal to -100, conditionally **required** depending on `kind`
fixed_amount         | [Decimal](/reference/enums#formats) | Read/Write | Rates Rule's fixed price modifier. | conditionally **required** depending on `kind`
period_name          | String  | Read/Write | Rates Rule's period name. | Maximum length: 50 
variables            | [Object](/reference/enums#formats) | Read/Write | Rates Rule's variables used depending on kind type. List of variables described in [enums section](/reference/enums#rates-rules-variables) | Conditionally **required**, depending on `kind` 
---------------------|---------|------------|-------------|
created_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's create time. | 
updated_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's update time. |
start_date           | [Date](/reference/enums#formats) | Read/Write | Rates Rule's start date. | Use only one of these: `season_ids`, `always_applied` (if the value is `true`) or `start_date`/`end_date`, required for some kinds
end_date             | [Date](/reference/enums#formats) | Read/Write | Rates Rule's end date. | Use only one of these: `season_ids`, `always_applied` (if the value is `true`) or `start_date`/`end_date`, required for some kinds
{: class="table table-bordered"}
  </div>
</div>

## List rates rules

List all rates rules for a given account.

~~~
GET /rates_rules
~~~

<%= render 'json_response', endpoint: "rates_rules", scopes: %w(rates_read-rates_write) %>

## Get a single rates rule

Returns a single rates rule identified by ID.

~~~
GET /rates_rules/:rates_rule_id
~~~

<%= render 'json_response', endpoint: "rates_rules", scopes: %w(rates_read-rates_write) %>

## Create a new rates rule

Creates a rates rule for given rates table.

~~~
POST /rates_tables/:rates_table_id/rates_rules
~~~

<%= render 'json_response', endpoint: "rates_rules", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a rates rule

Returns an updated rates rule identified by ID.

~~~
PUT /rates_rules/:rates_rule_id
~~~

<%= render 'json_response', endpoint: "rates_rules", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a rates rule

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rates_rules/:rates_rule_id
~~~~~~
