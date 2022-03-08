# Fees Taxes

1. TOC
{:toc}

## Overview

This resource represents Fees Taxes - the [taxes](/reference/endpoints/taxes/) for a [fee](/reference/endpoints/fees/), which can be either configured to be included in fee's rate or not.  

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
account                | Integer | Read       | Account's ID related to the Fees Tax
fee                    | Integer | Read       | Fees's ID related to the Fees Tax
tax                    | Integer | Read       | Tax's ID related to the Fees Tax
-----------------------|---------|------------|------------
id                     | Integer | Read       | Fees Tax's id.
tax_included_in_rate   | Boolean | Read       | Whether Tax amount is already included in fee's rate or not. If fee's rate is 100 and there is a tax with a percentage of 10% assigned to it, that tax would already be included in 100 if it the value was set to `true`. However, if set to `false`, the "total" amount (in the context of [Bookings'](/reference/endpoints/bookings/) creation) would be 100 + 10% from 100 which is 110.
-----------------------|---------|------------|------------
created_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's create time.
updated_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name                   | Type    | Read/Write | Description | Constraints
-----------------------|---------|------------|-------------|
account                | Integer | Read       | Account's ID related to the Fees Tax |
fee                    | Integer | Read       | Fees's ID related to the Fees Tax |
tax                    | Integer | Read       | Tax's ID related to the Fees Tax |
-----------------------|---------|------------|------------
-----------------------|---------|------------|------------|
id                     | Integer | Read       | Fees Tax's id. | **Required**
tax_id                 | Integer | Write      | Tax's id. | **Required**
tax_included_in_rate   | Boolean | Read/Write | Whether Tax amount is already included in fee's rate or not. If fee's rate is 100 and there is a tax with a percentage of 10% assigned to it, that tax would already be included in 100 if it the value was set to `true`. However, if set to `false`, the "total" amount (in the context of [Bookings'](/reference/endpoints/bookings/) creation) would be 100 + 10% from 100 which is 110. | **Required**
-----------------------|---------|------------|------------|
created_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's create time. |
updated_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List fees taxes

List all fees taxes for a given account(s).

~~~
GET /fees_taxes
~~~

<%= render 'json_response', endpoint: "fees_taxes",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Get a single fees tax

Returns a single fees tax identified by ID.

~~~
GET /fees_taxes/:fees_tax_id
~~~

<%= render 'json_response', endpoint: "fees_taxes",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Create a new fees tax

Returns a newly created fees tax.

~~~
POST /fees/:fee_id/fees_taxes
~~~

<%= render 'json_response', endpoint: "fees_taxes", request: "create",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Update a fees tax

Returns an updated fees tax identified by ID.

~~~
PUT /fees_taxes/:fees_tax_id
~~~

<%= render 'json_response', endpoint: "fees_taxes", request: "update",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Delete fees tax

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /fees_taxes/:fees_tax_id
~~~~~~
