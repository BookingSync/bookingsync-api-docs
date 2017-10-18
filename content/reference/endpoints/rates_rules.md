# Rates Rules

1. TOC
{:toc}

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
id                   | Integer | Read       | Rates Rule's id.
---------------------|---------|------------|------------
always_applied       | Boolean | Read       | Rates Rule's application status.
kind                 | String  | Read       | Rates Rule's kind. List of types described in [enums section](/reference/enums#rates-rules-types).
percentage           | [Decimal](/reference/enums#formats) | Read       | Rates Rule's percentage discount.
fixed_amount         | [Decimal](/reference/enums#formats) | Read       | Rates Rule's fixed price modifier.
period_name          | String  | Read       | Rates Rule's period name.
variables            | [Object](/reference/enums#formats) | Read       | Rates Rule's variables used depending on kind type.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's update time.
start_date           | [Date](/reference/enums#formats) | Read       | Rates Rule's start date.
end_date             | [Date](/reference/enums#formats) | Read       | Rates Rule's end date.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Rates Rule's id.
season_ids           | Array   | Write      | Season ids related to the rates rule.
---------------------|---------|------------|------------
always_applied       | Boolean | Read/Write | Rates Rule's application status.
kind                 | String  | Read/Write | Rates Rule's kind. List of types described in [enums section](/reference/enums#rates-rules-types).
percentage           | [Decimal](/reference/enums#formats) | Read/Write | Rates Rule's percentage discount. (greater than (-100))
fixed_amount         | [Decimal](/reference/enums#formats) | Read/Write | Rates Rule's fixed price modifier.
period_name          | String  | Read/Write | Rates Rule's period name. (50 max characters)
variables            | [Object](/reference/enums#formats) | Read/Write | Rates Rule's variables used depending on kind type.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Rates Rule's update time.
start_date           | [Date](/reference/enums#formats) | Read/Write | Rates Rule's start date.
end_date             | [Date](/reference/enums#formats) | Read/Write | Rates Rule's end date.
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
PUT /rates_rules/:rates_table_id
~~~

<%= render 'json_response', endpoint: "rates_rules", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Destroy a rates rule

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rates_rules/:rates_table_id
~~~~~~
