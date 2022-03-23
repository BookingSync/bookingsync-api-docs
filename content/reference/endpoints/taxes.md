# Taxes

1. TOC
{:toc}

## Overview

This resource represents Taxes which can be later added to [Rentals](/reference/endpoints/rentals/) as [Rentals Taxes](/reference/endpoints/rentals_taxes/) or [Fees](/reference/endpoints/Fees/) as [Rentals Fees](/reference/endpoints/rentals_fees/).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rates_read" role="tab" data-toggle="pill">rates_read</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Tax
-----------------|---------|------------|------------
id               | Integer | Read       | Tax's ID.
name             | [Object](/reference/enums#formats)   | Read       | Tax's name, list of locales described in [enums section](/reference/enums#locales).
percentage       | [Decimal](/reference/enums#formats)  | Read       | Tax's percentage.
kind             | String  | Read       | Tax's kind, list of kinds described in [enums section](/reference/enums#tax-kinds) 
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Tax's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Beginning of the period when the tax is applicable.
end_date         | [Date](/reference/enums#formats) | Read       | Ending of the period when the tax is applicable. If left blank, the Tax is applicable indefinitely starting from `start_date`
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Tax
-----------------|---------|------------|------------
id               | Integer | Read       | Tax's ID.
name             | [Object](/reference/enums#formats)   | Read       | Tax's name, list of locales described in [enums section](/reference/enums#locales).
notes            | String  | Read       | Tax's private notes (requires `rates_read` or `rates_write scope)`.
percentage       | [Decimal](/reference/enums#formats)  | Read       | Tax's percentage.
kind             | String  | Read       | Tax's kind, list of kinds described in [enums section](/reference/enums#tax-kinds) 
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Tax's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Beginning of the period when the tax is applicable.
end_date         | [Date](/reference/enums#formats) | Read       | Ending of the period when the tax is applicable. If left blank, the Tax is applicable indefinitely starting from `start_date`
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer | Read       | Account's ID related to the Tax |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Tax's ID. |
name             | [Object](/reference/enums#formats)   | Read/Write | Tax's name, list of locales described in [enums section](/reference/enums#locales). | **Required** for Account's default locale, must not contain non-printing characters, maximum length: 50, 
notes            | String  | Read/Write | Tax's private notes (requires `rates_read` or `rates_write scope)`.  |
percentage       | [Decimal](/reference/enums#formats)  | Read/Write | Tax's percentage. | **Required**, must be greated than or equal to 0, writable only during creation.
kind             | String  | Read/Write | Tax's kind, list of kinds described in [enums section](/reference/enums#tax-kinds) | **Required**, Must be a valid tax kind
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Tax's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Tax's update time. |
start_date       | [Date](/reference/enums#formats) | Read/Write | Beginning of the period when the tax is applicable. | **Required**, must be before `end_date` if `end_date` is present
end_date         | [Date](/reference/enums#formats) | Read/Write | Ending of the period when the tax is applicable. If left blank, the Tax is applicable indefinitely starting from `start_date` | Must be after `start_date` if present
{: class="table table-bordered"}
  </div>
</div>


## List taxes

List all taxes for a given account(s).

~~~
GET /taxes
~~~

<%= render 'json_response', endpoint: "taxes", scopes: %w(public rates_read-rates_write) %>

## Get a single tax

Returns a single tax identified by ID.

~~~
GET /taxes/:tax_id
~~~

<%= render 'json_response', endpoint: "taxes", scopes: %w(public rates_read-rates_write) %>

## Create a new tax

Returns a newly created tax.

~~~
POST /taxes
~~~

<%= render 'json_response', endpoint: "taxes", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>

## Update a tax

Returns an updated tax identified by ID.

~~~
PUT /taxes/:tax_id
~~~

<%= render 'json_response', endpoint: "taxes", request: "update",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>
