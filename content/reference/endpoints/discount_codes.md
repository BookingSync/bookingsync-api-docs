# Discount Codes

1. TOC
{:toc}

## Overview

This resource represents Discount Codes which are used to provide a flexible discount that can be applied to rental.
Upon applying the [Discount Code Usage](/reference/endpoints/discount_code_usages/) gets created.

### Parameters
<ul class="nav nav-pills" role="tablist">
<li class="disabled"><a>OAuth Scopes:</a></li>
<li class="active"><a href="#discount_code_read" role="tab" data-toggle="pill">discount_code_read</a></li>
<li><a href="#discount_code_write" role="tab" data-toggle="pill">discount_code_write</a></li>
</ul>
<div class="tab-content" markdown="1">
<div class="tab-pane active" id="discount_code_read" markdown="1">

Name                     | Type                             | Read/Write | Description
-------------------------|----------------------------------|------------|---------------------------------------------
id                       | String[UUID]                     | Read       | Discount Code's id.
discount_code            | String                           | Read       | Discount Code itself.
currency                 | String                           | Read       | Discount Code's currency.
fixed_amount             | Float                            | Read       | Fixed amount of discount.
percentage               | integer                          | Read       | Discount percentage.
all_rentals              | Boolean                          | Read       | Flag, that indicates that this discount is applicable to all rentals with the same currency.
number_of_times          | Integer                          | Read       | Number of times the Discount Code can be applied.
minimum_nights_booked    | integer                          | Read       | Minimum number of nights that must be booked in order to apply Discount Code.
minimum_spend            | Float                            | Read       | Minimum amount that must be spent in order to apply Discount Code.
start_date               | [Date](/reference/enums#formats) | Read       | The start date from which the Discount Code will be applicable.
end_date                 | [Date](/reference/enums#formats) | Read       | The expiration date of the Discount Code.
-------------------------|----------------------------------|------------|---------------------------------------------
created_at               | [Time](/reference/enums#formats) | Read       | Discount Code create time
updated_at               | [Time](/reference/enums#formats) | Read       | Discount Code update time
canceled_at              | [Time](/reference/enums#formats) | Read       | Discount Code soft delete time
{: class="table table-bordered"}

</div>
<div class="tab-pane" id="discount_code_write" markdown="1">

Name                     | Type                                                          | Read/Write | Description
-------------------------|---------------------------------------------------------------|------------|----------------
id                       | String[UUID]                                                  | Read       | Discount Code's id.
discount_code            | String                                                        | Read/Write | Discount Code itself.
currency                 | String                                                        | Read/Write | Discount Code's currency.
fixed_amount             | Float                                                         | Read/Write | Fixed amount of discount.
percentage               | integer                                                       | Read/Write | Discount percentage.
all_rentals              | Boolean                                                       | Read       | Flag, that indicates that this discount is applicable to all rentals with the same currency.
number_of_times          | Integer                                                       | Read/Write | Number of times the Discount Code can be applied.
minimum_nights_booked    | integer                                                       | Read/Write | Minimum number of nights that must be booked in order to apply Discount Code.
minimum_spend            | Float                                                         | Read/Write | Minimum amount that must be spent in order to apply Discount Code.
start_date               | [Date](/reference/enums#formats)                              | Read/Write | The start date from which the Discount Code will be applicable.
end_date                 | [Date](/reference/enums#formats)                              | Read/Write | The expiration date of the Discount Code.
rentals_eligibility      | [String](/reference/enums#discount-code-rentals-eligibility)  | Write      | What rentals this Discount Code can be applied to.
minimum_requirements     | [String](/reference/enums#discount-code-minimum-requirements) | Write      | Minimum requirements to make Discount Code applicable to booking.
usage_limit              | [String](/reference/enums#discount-code-usage-limit)          | Write      | Usage limit of the Discount Code.
discount_value_type      | [String](/reference/enums#discount-code-discount-value-type)  | Write      | The type of discount.
rental_ids               | Array of Integers                                             | Write      | The ids of rentals Discount Code can be used with.
-------------------------|---------------------------------------------------------------|------------|----------------
created_at               | [Time](/reference/enums#formats)                              | Read       | Discount Code create time
updated_at               | [Time](/reference/enums#formats)                              | Read       | Discount Code update time
canceled_at              | [Time](/reference/enums#formats)                              | Read       | Discount Code soft delete time
{: class="table table-bordered"}

</div>
</div>

## List Discount Codes

~~~
GET /booking/discount_codes
~~~

<%= render 'json_response', endpoint: "booking_discount_codes", scopes: %w(discount_code_read-discount_code_write) %>

Returns all Discount Codes for current account.

## Get a single Discount Code

Returns a single Discount Code identified by ID.

~~~
GET /booking/discount_codes/:discount_code_id
~~~

<%= render 'json_response', endpoint: "booking_discount_codes", scopes: %w(discount_code_read-discount_code_write) %>

## Create a new Discount Code

Creates a Discount Code and renders it.

~~~~
POST /booking/discount_codes
~~~~

<%= render 'json_response', endpoint: "booking_discount_codes", request: "create", scopes: %w(discount_code_write) %>

## Update a Discount Code

Updated the Discount Code identified by ID and renders it.

~~~
PUT /booking/discount_codes/:discount_code_id
~~~

<%= render 'json_response', endpoint: "booking_discount_codes", request: "update", scopes: %w(discount_code_write) %>

## Delete a Discount Code

Deletes Discount Code identified by ID.

~~~
DELETE /booking/discount_codes/:discount_code_id
~~~

Returns 204 on success or 404 on error.
