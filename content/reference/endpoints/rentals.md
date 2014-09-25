# Rentals

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_read" role="tab" data-toggle="pill">rentals_read</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental's id.
--------------------------------|----------|------------|--------------
base_rate                       | [Decimal](/reference/enums#formats) | Read       | Rental's base rate, used by the rates table to calculate the seasonability and discounted prices. We recommend using the highest price as base rate.
base_rate_kind                  | String   | Read       | Rental's rate type attached to the base rate. List of types described in [enums section](/reference/enums#rates-types).
bathrooms_count                 | Integer  | Read       | Rental's bathrooms count.
bedrooms_count                  | Integer  | Read       | Rental's bedrooms count.
bookable_online                 | Boolean  | Read       | Rental's online booking status.
checkin_time                    | Integer  | Read       | Rental's checkin time.
checkout_time                   | Integer  | Read       | Rental's checkout time.
city                            | String   | Read       | Rental's city.
contact_name                    | String   | Read       | Rental's contact name.
country_code                    | String   | Read       | Rental's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
currency                        | String   | Read       | Rental's currency code, list of codes described in [enums section](/reference/enums#currencies).
deposit                         | Integer  | Read       | Rental's default deposit percentage. If none defined, the default deposit percentage of the account will be used.
description                     | [Object](/reference/enums#formats)     | Read       | Rental's description, list of locales described in [enums section](/reference/enums#locales).
final_price                     | Integer  | Read       | Rental's final price. (after discount)
headline                        | [Object](/reference/enums#formats)     | Read       | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
initial_price                   | Integer  | Read       | Rental's initial price.
lat                             | Float    | Read       | Rental's latitude.
lng                             | Float    | Read       | Rental's longitude.
max_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's maximum price.
min_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's minimum price.
name                            | String   | Read       | Rental's name.
position                        | Integer  | Read       | Rental's position on the list.
price_public_notes              | String   | Read       | Rental's price notes for public.
rental_type                     | String   | Read       | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
reviews_average_rating          | [Decimal](/reference/enums#formats)  | Read       | Rental's overall rating from reviews.
reviews_count                   | Integer  | Read       | Rental's count of all reviews.
sleeps                          | Integer  | Read       | Rental's number of comfortable sleeps.
sleeps_max                      | Integer  | Read       | Rental's maximum number of sleeps.
state                           | String   | Read       | Rental's state.
summary                         | [Object](/reference/enums#formats)     | Read       | Rental's summary, list of locales described in [enums section](/reference/enums#locales).
surface                         | Integer  | Read       | Rental's surface area.
surface_unit                    | String   | Read       | Rental's surface area unit, either <i>metric</i> or <i>imperial</i>.
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental's update time.
published_at                    | [Time](/reference/enums#formats) | Read         | Rental's publish time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_read" markdown="1">
### Parameters

Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental's id.
--------------------------------|----------|------------|--------------
address1                        | String   | Read       | Rental's primary address.
address2                        | String   | Read       | Rental's optional address.
base_rate                       | [Decimal](/reference/enums#formats) | Read       | Rental's base rate, used by the rates table to calculate the seasonability and discounted prices. We recommend using the highest price as base rate.
base_rate_kind                  | String   | Read       | Rental's rate type attached to the base rate. List of types described in [enums section](/reference/enums#rates-types).
bathrooms_count                 | Integer  | Read       | Rental's bathrooms count.
bedrooms_count                  | Integer  | Read       | Rental's bedrooms count.
bookable_online                 | Boolean  | Read       | Rental's online booking status.
checkin_time                    | Integer  | Read       | Rental's checkin time.
checkout_time                   | Integer  | Read       | Rental's checkout time.
city                            | String   | Read       | Rental's city.
contact_name                    | String   | Read       | Rental's contact name.
country_code                    | String   | Read       | Rental's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
currency                        | String   | Read       | Rental's currency code, list of codes described in [enums section](/reference/enums#currencies).
deposit                         | Integer  | Read       | Rental's default deposit percentage. If none defined, the default deposit percentage of the account will be used.
description                     | [Object](/reference/enums#formats)     | Read       | Rental's description, list of locales described in [enums section](/reference/enums#locales).
final_price                     | Integer  | Read       | Rental's final price.
headline                        | [Object](/reference/enums#formats)     | Read       | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
initial_price                   | Integer  | Read       | Rental's initial price.
lat                             | Float    | Read       | Rental's latitude.
lng                             | Float    | Read       | Rental's longitude.
max_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's maximum price.
min_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's minimum price.
name                            | String   | Read       | Rental's name.
notes                           | Text     | Read       | Rental's private notes.
position                        | Integer  | Read       | Rental's position on the list.
price_public_notes              | String   | Read       | Rental's price notes for public.
rental_type                     | String   | Read       | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
reviews_average_rating          | [Decimal](/reference/enums#formats)  | Read       | Rental's overall rating from reviews.
reviews_count                   | Integer  | Read       | Rental's count of all reviews.
sleeps                          | Integer  | Read       | Rental's number of comfortable sleeps.
sleeps_max                      | Integer  | Read       | Rental's maximum number of sleeps.
state                           | String   | Read       | Rental's state.
summary                         | [Object](/reference/enums#formats)     | Read       | Rental's summary, list of locales described in [enums section](/reference/enums#locales).
surface                         | Integer  | Read       | Rental's surface area.
surface_unit                    | String   | Read       | Rental's surface area unit, either <i>metric</i> or <i>imperial</i>.
zip                             | String   | Read       | Rental's zip code.
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental's update time.
published_at                    | [Time](/reference/enums#formats) | Read         | Rental's publish time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
### Parameters

Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental's id.
amenity_ids                     | Array    | Write      | Amenity ids related to the rental.
destination_id                  | Integer  | Write      | Destination id related to the rental.
rates_table_id                  | Integer  | Write      | Rates Table id related to the rental.
rentals_contact_id              | Integer  | Write      | Contact id related to the rental.
--------------------------------|----------|------------|--------------
address1                        | String   | Read/Write | Rental's primary address.
address2                        | String   | Read/Write | Rental's optional address.
base_rate                       | [Decimal](/reference/enums#formats) | Read/Write | Rental's base rate, used by the rates table to calculate the seasonability and discounted prices. We recommend using the highest price as base rate. (greater than 0)
base_rate_kind                  | String   | Read/Write | Rental's rate type attached to the base rate. List of types described in [enums section](/reference/enums#rates-types).
bathrooms_count                 | Integer  | Read/Write | Rental's bathrooms count. (between 0 and 100)
bedrooms_count                  | Integer  | Read/Write | Rental's bedrooms count. (between 0 and 100)
bookable_online                 | Boolean  | Read       | Rental's online booking status.
checkin_time                    | Integer  | Read       | Rental's checkin time.
checkout_time                   | Integer  | Read       | Rental's checkout time.
city                            | String   | Read/Write | Rental's city.
contact_name                    | String   | Read       | Rental's contact name.
country_code                    | String   | Read/Write | Rental's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
currency                        | String   | Read/Write | Rental's currency code, list of codes described in [enums section](/reference/enums#currencies).
deposit                         | Integer  | Read/Write | Rental's default deposit percentage. If none defined, the default deposit percentage of the account will be used. (between 0 and 100)
description                     | [Object](/reference/enums#formats)     | Read/Write | Rental's description, list of locales described in [enums section](/reference/enums#locales). (5000 characters max)
final_price                     | Integer  | Read       | Rental's final price. (after discount)
headline                        | [Object](/reference/enums#formats)     | Read/Write | Rental's headline, list of locales described in [enums section](/reference/enums#locales). (75 characters max)
initial_price                   | Integer  | Read       | Rental's initial price.
lat                             | Float    | Read/Write | Rental's latitude. (between -90 and 90)
lng                             | Float    | Read/Write | Rental's longitude. (between -180 and 180)
max_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's maximum price.
min_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's minimum price.
name                            | String   | Read/Write | **Required**. Rental's name. (3 min, 40 max characters)
notes                           | Text     | Read/Write | Rental's private notes. (1000 characters max)
position                        | Integer  | Read/Write | Rental's position on the list.
price_public_notes              | String   | Read       | Rental's price notes for public.
rental_type                     | String   | Read/Write | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
reviews_average_rating          | [Decimal](/reference/enums#formats)  | Read       | Rental's overall rating from reviews.
reviews_count                   | Integer  | Read       | Rental's count of all reviews.
sleeps                          | Integer  | Read/Write | Rental's number of comfortable sleeps. (between 0 and 100)
sleeps_max                      | Integer  | Read/Write | Rental's maximum number of sleeps. (between 0 and 100)
state                           | String   | Read/Write | Rental's state.
summary                         | [Object](/reference/enums#formats)     | Read/Write | Rental's summary, list of locales described in [enums section](/reference/enums#locales). (150 characters max)
surface                         | Integer  | Read/Write | Rental's surface area. (greater than 0)
surface_unit                    | String   | Read/Write | Rental's surface area unit, either <i>metric</i> or <i>imperial</i>.
zip                             | String   | Read/Write | Rental's zip code.
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental's update time.
published_at                    | [Time](/reference/enums#formats) | Read         | Rental's publish time.
{: class="table table-bordered"}
  </div>
</div>

## List rentals

List all rentals for given account(s).

~~~
GET /rentals
~~~

<%= render 'json_response', endpoint: "rentals", scopes: %w(public rentals_read-rentals_write) %>

## Get a single rental

Returns a single rental identified by ID.

~~~
GET /rentals/:rental_id
~~~

<%= render 'json_response', endpoint: "rentals", scopes: %w(public rentals_read-rentals_write) %>

## Create a new rental

<div class="callout callout-warning">
  <h4>Price increase</h4>
  Please note that creating rentals will increase the account monthly fee. For further details, check our <a href="http://www.bookingsync.com/pricing">pricing</a>.
</div>

Returns a newly created rental.

~~~~
POST /rentals
~~~~

<%= render 'json_response', endpoint: "rentals", request: "request",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

## Update a rental

Returns an updated rental identified by ID.

~~~
PUT /rentals/:rental_id
~~~

<%= render 'json_response', endpoint: "rentals", request: "request",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

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
