# Special Offers

1. TOC
{:toc}

## List special offers

List all special offers for given account(s).

~~~
GET /special_offers
~~~

<%= render 'json_response', endpoint: "special_offers",
  scopes: %w(public) %>

## Get a single special offer

Returns a single special offer identified by ID.

~~~
GET /special_offers/:special_offer_id
~~~

<%= render 'json_response', endpoint: "special_offers",
  scopes: %w(public) %>

## Create a new special offer

Creates a special offer for given rental.

~~~
POST /rentals/:rental_id/special_offers
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Special Offer's name.
start_at         | [Date](/reference/formats) | **Required**. Special Offer's start date.
end_at           | [Date](/reference/formats) | **Required**. Special Offer's end date.
discount         | Integer | **Required**. Special Offer's discount value, e.g. use 20 for 20% discount.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "special_offers",
  scopes: %w(rates_write) %>

## Update a special offer

Returns an updated special offer identified by ID.

~~~
PUT /special_offers/:special_offer
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
name             | String  | **Required**. Special Offer's name.
start_at         | [Date](/reference/formats) | **Required**. Special Offer's start date.
end_at           | [Date](/reference/formats) | **Required**. Special Offer's end date.
discount         | Integer | **Required**. Special Offer's discount value, e.g. use 20 for 20% discount.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "special_offers",
  scopes: %w(rates_write) %>

## Destroy a special offer

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /special_offers/:special_offer_id
~~~~~~
