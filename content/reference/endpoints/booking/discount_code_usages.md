# Discount Code Usages

1. TOC
{:toc}

## Overview

This resource represents the usage of a [Discount Code](/reference/endpoints/booking/discount_codes/) which are created when the [Discount Code](/reference/endpoints/booking/discount_codes/) is applied via instant booking page or booknow widget.

### Parameters
<ul class="nav nav-pills" role="tablist">
<li class="disabled"><a>OAuth Scopes:</a></li>
<li class="active"><a href="#discount_code_usage_read" role="tab" data-toggle="pill">discount_code_usage_read</a></li>
</ul>
<div class="tab-content" markdown="1">
<div class="tab-pane active" id="discount_code_usage_read" markdown="1">

Name                     | Type                             | Read/Write | Description
-------------------------|----------------------------------|------------|---------------------------------------------
id                       | String[UUID]                     | Read       | Discount Code Usage's id.
currency                 | String                           | Read       | Currency of applied discount.
amount_in_cents          | Integer                          | Read       | Applied amount of discount in cents.
-------------------------|----------------------------------|------------|---------------------------------------------
created_at               | [Time](/reference/enums#formats) | Read       | Discount Code Usage create time (discount application time)
canceled_at              | [Time](/reference/enums#formats) | Read       | Discount Code Usage soft delete time
{: class="table table-bordered"}

</div>
</div>

## List Discount Code Usages

Returns all Discount Codes Usages for current account.

~~~
GET /booking/discount_code_usages
~~~

<%= render 'json_response', endpoint: "booking/discount_code_usages", scopes: %w(discount_code_usage_read) %>

## Get a single Discount Code Usage

Returns a single Discount Code Usage identified by ID.

~~~
GET /booking/discount_code_usages/:discount_code_usage_id
~~~

<%= render 'json_response', endpoint: "booking/discount_code_usages", scopes: %w(discount_code_usage_read) %>
