# Special Offers

1. TOC
{:toc}

## Overview

This resource represents Special Offers which are the Rental's price (as `initial_price` in [Booking](/reference/endpoints/Bookings/)) modifiers, making it possible to provide special discounts during certain periods.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
account              | Integer | Read       | Account's ID related to the Special Offer
rental               | Integer | Read       | Rental's ID related to the Special Offer
---------------------|---------|------------|------------
id                   | Integer | Read       | Special Offer's ID.
discount             | Float   | Read       | Special Offer's discount in percents.
name                 | [Object](/reference/enums#formats)    | Read       | Special Offer's name, list of locales described in [enums section](/reference/enums#locales).
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Special Offer's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Special Offer's update time.
start_date           | [Date](/reference/enums#formats) | Read       | Special Offer's start date.
end_date             | [Date](/reference/enums#formats) | Read       | Special Offer's end date.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name                 | Type    | Read/Write | Description | Constraints
---------------------|---------|------------|-------------|
account              | Integer | Read       | Account's ID related to the Special Offer |
rental               | Integer | Read       | Rental's ID related to the Special Offer |
---------------------|---------|------------|-------------|
id                   | Integer | Read       | Special Offer's ID. |
discount             | Float   | Read/Write | **Required**. Special Offer's discount in percents. (between 1 and 100) | **Required**, must be between 1 (exclusive) and 100 (inclusive)
name                 | [Object](/reference/enums#formats) | Read/Write |  Special Offer's name, list of locales described in [enums section](/reference/enums#locales). | **Required** for Account's default locale, minimum length: 3, maximum length: 50
---------------------|---------|------------|-------------|
created_at           | [Time](/reference/enums#formats) | Read       | Special Offer's create time. |
updated_at           | [Time](/reference/enums#formats) | Read       | Special Offer's update time. |
start_date           | [Date](/reference/enums#formats) | Read/Write | Special Offer's start date. | **Required**, must be before `end_date`, cannot be in the past
end_date             | [Date](/reference/enums#formats) | Read/Write | Special Offer's end date. | **Required**, must be after `start_date`
{: class="table table-bordered"}
  </div>
</div>

## List special offers

List all special offers for a given account(s).

~~~
GET /special_offers
~~~

<%= render '/json_response.html', endpoint: "special_offers", scopes: [{ public: "public-rates_write" }] %>

## Get a single special offer

Returns a single special offer identified by ID.

~~~
GET /special_offers/:special_offer_id
~~~

<%= render '/json_response.html', endpoint: "special_offers", scopes: [{ public: "public-rates_write" }] %>

## Create a new special offer

Creates a special offer for given rental.

~~~
POST /rentals/:rental_id/special_offers
~~~

<%= render '/json_response.html', endpoint: "special_offers", request: "create",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Update a special offer

Returns an updated special offer identified by ID.

~~~
PUT /special_offers/:special_offer
~~~

<%= render '/json_response.html', endpoint: "special_offers", request: "update",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Destroy a special offer

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /special_offers/:special_offer_id
~~~~~~
