# Rentals

1. TOC
{:toc}

## List rentals

List all rentals for given account(s).

~~~
GET /rentals
~~~

<%= render 'json_response', endpoint: "rentals",
  scopes: %w(public rentals_read-rentals_write) %>

## Get a single rental

Returns a single rental identified by ID.

~~~
GET /rentals/:rental_id
~~~

<%= render 'json_response', endpoint: "rentals",
  scopes: %w(public rentals_read-rentals_write) %>

## Create a new rental

<div class="callout callout-warning">
  <h4>Price increase</h4>
  Please note that creating rentals will increase the account monthly fee. For further details, check our <a href="http://www.bookingsync.com/pricing">pricing</a>.
</div>

Returns a newly created rental.

~~~~
POST /rentals
~~~~

### Parameters

Name                            | Type     | Description
--------------------------------|----------|------------
name                            | String   | **Required**. Rental's name.
headline_LOCALE                 | String   | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
summary_LOCALE                  | String   | Rental's summary, list of locales described in [enums section](/reference/enums#locales).
description_LOCALE              | String   | Rental's description, list of locales described in [enums section](/reference/enums#locales).
rates_table_id                  | Integer  | Rates table id related to the rental.
rate                            | Integer  | Rental's rate represents the base rate, used by the rates table to calculate the seasonability and discounted prices. We recommend using the highest price as base rate.
rate_kind                       | String   | Rental's rate type attached to the rental rate. List of types described in [enums section](/reference/enums#rates-types).
currency                        | String   | Rental's currency code, list of codes described in [enums section](/reference/enums#currencies).
deposit                         | Integer  | Rental's default deposit percentage. If none defined, the default deposit percentage of the account will be used.
lat                             | Float    | Rental's latitude.
lng                             | Float    | Rental's longitude.
address1                        | String   | Rental's primary address.
address2                        | String   | Rental's optional address.
state                           | String   | Rental's state.
zip                             | String   | Rental's zip code.
city                            | String   | Rental's city.
country_code                    | String   | Rental's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
rentals_contact_id              | Integer  | Contact id related to the rental.
rental_type                     | String   | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
bedrooms_count                  | Integer  | Rental's bedrooms count.
sleeps                          | Integer  | Rental's number of comfortable sleeps.
sleeps_max                      | Integer  | Rental's maximum number of sleeps.
bathrooms_count                 | Integer  | Rental's bathrooms count.
surface                         | Integer  | Rental's surface area.
destination_id                  | Integer  | Destination id related to the rental.
amenity_ids                     | Array    | Array of amenity ids related to the rental.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rentals", request: "request",
  scopes: [{rentals_write: "rentals_read-rentals_write"}] %>

## Update a rental

Returns an updated rental identified by ID.

~~~
PUT /rentals/:rental_id
~~~

### Parameters

Name                            | Type     | Description
--------------------------------|----------|------------
name                            | String   | **Required**. Rental's name.
headline_LOCALE                 | String   | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
summary_LOCALE                  | String   | Rental's summary, list of locales described in [enums section](/reference/enums#locales).
description_LOCALE              | String   | Rental's description, list of locales described in [enums section](/reference/enums#locales).
rates_table_id                  | Integer  | Rates table id related to the rental.
rate                            | Integer  | Rental's rate represents the base rate, used by the rates table to calculate the seasonability and discounted prices. We recommend using the highest price as base rate.
rate_kind                       | String   | Rental's rate type attached to the rental rate. List of types described in [enums section](/reference/enums#rates-types).
currency                        | String   | Rental's currency code, list of codes described in [enums section](/reference/enums#currencies).
deposit                         | Integer  | Rental's default deposit percentage. If none defined, the default deposit percentage of the account will be used.
lat                             | Float    | Rental's latitude.
lng                             | Float    | Rental's longitude.
address1                        | String   | Rental's primary address.
address2                        | String   | Rental's optional address.
state                           | String   | Rental's state.
zip                             | String   | Rental's zip code.
city                            | String   | Rental's city.
country_code                    | String   | Rental's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
rentals_contact_id              | Integer  | Contact id related to the rental.
rental_type                     | String   | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
bedrooms_count                  | Integer  | Rental's bedrooms count.
sleeps                          | Integer  | Rental's number of comfortable sleeps.
sleeps_max                      | Integer  | Rental's maximum number of sleeps.
bathrooms_count                 | Integer  | Rental's bathrooms count.
surface                         | Integer  | Rental's surface area.
destination_id                  | Integer  | Destination id related to the rental.
amenity_ids                     | Array    | Array of amenity ids related to the rental.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rentals", request: "request",
  scopes: [{rentals_write: "rentals_read-rentals_write"}] %>

## Destroy a rental

<div class="callout callout-info">
  <h4>Price decrease</h4>
  Please note that destroying rentals will decrease the account monthly fee. For further details, check our <a href="http://www.bookingsync.com/pricing">pricing</a>.
</div>

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rentals/:rental_id
~~~~~~
