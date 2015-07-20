# Rentals

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_read" role="tab" data-toggle="pill">rentals_read</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental's id.
--------------------------------|----------|------------|--------------
absolute_min_price              | [Decimal](/reference/enums#formats) | Read       | Rental's minimum price based on `base_rate_kind`.
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
description                     | [Object](/reference/enums#formats)     | Read       | Rental's description, list of locales described in [enums section](/reference/enums#locales).
downpayment                     | Integer  | Read       | Rental's default downpayment percentage. If none defined, the default downpayment percentage of the account will be used.
final_price                     | Integer  | Read       | Rental's final price (after discount). Available only for a search query with valid dates, for other cases please refer to `base_rate` and `base_rate_kind`.
headline                        | [Object](/reference/enums#formats)     | Read       | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
initial_price                   | Integer  | Read       | Rental's initial price. Available only for a search query with valid dates, for other cases please refer to `base_rate` and `base_rate_kind`.
lat                             | Float    | Read       | Rental's latitude.
lng                             | Float    | Read       | Rental's longitude.
max_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's maximum price.
min_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's minimum price.
name                            | String   | Read       | Rental's name.
position                        | Integer  | Read       | Rental's position on the list.
price_public_notes              | [Object](/reference/enums#formats)   | Read       | Rental's price notes for public, list of locales described in [enums section](/reference/enums#locales).
rental_type                     | String   | Read       | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
reviews_average_rating          | [Decimal](/reference/enums#formats)  | Read       | Rental's overall rating from reviews.
reviews_count                   | Integer  | Read       | Rental's count of all reviews.
sleeps                          | Integer  | Read       | Rental's number of comfortable sleeps.
sleeps_max                      | Integer  | Read       | Rental's maximum number of sleeps.
state                           | String   | Read       | Rental's state.
stories_count                   | Integer  | Read       | Rental's number of stories.
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
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental's id.
--------------------------------|----------|------------|--------------
absolute_min_price              | [Decimal](/reference/enums#formats) | Read       | Rental's minimum price based on `base_rate_kind`.
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
description                     | [Object](/reference/enums#formats)     | Read       | Rental's description, list of locales described in [enums section](/reference/enums#locales).
downpayment                     | Integer  | Read       | Rental's default downpayment percentage. If none defined, the default downpayment percentage of the account will be used.
final_price                     | Integer  | Read       | Rental's final price (after discount). Available only for a search query with valid dates, for other cases please refer to `base_rate` and `base_rate_kind`.
headline                        | [Object](/reference/enums#formats)     | Read       | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
initial_price                   | Integer  | Read       | Rental's initial price. Available only for a search query with valid dates, for other cases please refer to `base_rate` and `base_rate_kind`.
lat                             | Float    | Read       | Rental's latitude.
lng                             | Float    | Read       | Rental's longitude.
max_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's maximum price.
min_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's minimum price.
name                            | String   | Read       | Rental's name.
notes                           | Text     | Read       | Rental's private notes.
position                        | Integer  | Read       | Rental's position on the list.
price_public_notes              | [Object](/reference/enums#formats)   | Read       | Rental's price notes for public, list of locales described in [enums section](/reference/enums#locales).
rental_type                     | String   | Read       | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
reviews_average_rating          | [Decimal](/reference/enums#formats)  | Read       | Rental's overall rating from reviews.
reviews_count                   | Integer  | Read       | Rental's count of all reviews.
sleeps                          | Integer  | Read       | Rental's number of comfortable sleeps.
sleeps_max                      | Integer  | Read       | Rental's maximum number of sleeps.
state                           | String   | Read       | Rental's state.
stories_count                   | Integer  | Read       | Rental's number of stories.
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
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental's id.
amenity_ids                     | Array    | Write      | Amenity ids related to the rental.
destination_id                  | Integer  | Write      | Destination id related to the rental.
rates_table_id                  | Integer  | Write      | Rates Table id related to the rental.
rentals_contact_id              | Integer  | Write      | Contact id related to the rental.
--------------------------------|----------|------------|--------------
absolute_min_price              | [Decimal](/reference/enums#formats) | Read/Write | Rental's minimum price based on `base_rate_kind`.
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
description                     | [Object](/reference/enums#formats)     | Read/Write | Rental's description, list of locales described in [enums section](/reference/enums#locales). (5000 characters max)
downpayment                         | Integer  | Read/Write | Rental's default downpayment percentage. If none defined, the default downpayment percentage of the account will be used. (between 0 and 100)
final_price                     | Integer  | Read       | Rental's final price (after discount). Available only for a search query with valid dates, for other cases please refer to `base_rate` and `base_rate_kind`.
headline                        | [Object](/reference/enums#formats)     | Read       | Rental's headline, list of locales described in [enums section](/reference/enums#locales).
initial_price                   | Integer  | Read       | Rental's initial price. Available only for a search query with valid dates, for other cases please refer to `base_rate` and `base_rate_kind`.
lat                             | Float    | Read/Write | Rental's latitude. (between -90 and 90)
lng                             | Float    | Read/Write | Rental's longitude. (between -180 and 180)
max_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's maximum price.
min_price                       | [Decimal](/reference/enums#formats)  | Read       | Rental's minimum price.
name                            | String   | Read/Write | **Required**. Rental's name. (3 min, 40 max characters)
notes                           | Text     | Read/Write | Rental's private notes. (1000 characters max)
position                        | Integer  | Read/Write | Rental's position on the list.
price_public_notes              | [Object](/reference/enums#formats)   | Read/Write | Rental's price notes for public, list of locales described in [enums section](/reference/enums#locales).
rental_type                     | String   | Read/Write | Rental's type (example: villa, apartment), all types described in [enums section](/reference/enums#rental-types).
reviews_average_rating          | [Decimal](/reference/enums#formats)  | Read       | Rental's overall rating from reviews.
reviews_count                   | Integer  | Read       | Rental's count of all reviews.
sleeps                          | Integer  | Read/Write | Rental's number of comfortable sleeps. (between 0 and 100)
sleeps_max                      | Integer  | Read/Write | Rental's maximum number of sleeps. (between 0 and 100)
state                           | String   | Read/Write | Rental's state.
stories_count                   | Integer  | Read/Write | Rental's number of stories.
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

## Search rentals

Search parameters allow to filter rentals by specified fields.

Example:

~~~
GET /rentals/search?start_at=20140324&end_at=20140330
~~~

### Search Parameters

Name              | Type    | Default | Description
------------------|---------|--------------
amenities         | String  |         | List of comma separated amenities to include.
bb_ne             | Float   |         | Rentals located between `bb_sw` & `bb_ne`. Format `latitude, longitude`.
bb_sw             | Float   |         | Rentals located between `bb_sw` & `bb_ne`. Format `latitude, longitude`.
city              | String  |         | Rentals matching given city.
country_code      | String  |         | Rentals matching given country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
destination       | String  |         | List of comma separated destinations.
direction         | String  |         | Direction to sort rentals, either `asc` or `desc`.
guests            | Integer |         | Rentals with maximum number of sleeps above given number of guests.
include_tentative | Boolean | false   | Treat tentative periods as available ones.
max_price         | Integer |         | Rentals with `max_price` below given price. Will use `final_price` if computed.
min_price         | Integer |         | Rentals with `min_price` above given price. Will use `final_price` if computed.
page              | Integer |         | Used to browse multi-paged listings.
per_page          | Integer |         | Limit amount of returned rentals to given number. Full list can then be browsed with `page` parameter.
published_only    | Boolean | false   | Show only published rentals.
reject_amenities  | String  |         | List of comma separated amenities to exclude.
rentals_tags      | String  |         | List of comma separated rentals tags.
rental_type       | String  |         | List of comma separated types, all types described in [enums section](/reference/enums#rental-types).
sort              | String  |         | Sort rentals by given attribute. Possible values: `price`, `sleeps`.
special_offers    | Boolean | false   | Show only rentals with special offers.
------------------|---------|---------|---------------------------------------
start_at          | [Time](/reference/enums#formats) |         | Rentals available between `start_at` & `end_at`.
end_at            | [Time](/reference/enums#formats) |         | Rentals available between `start_at` & `end_at`.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rentals", scopes: [{ public: "search" }] %>

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

<div class="callout callout-info">
  <h4>Translated attributes</h4>
  <p>Please note that translated attributes are updated differenly than you read them.<br>
  To set the English headline, locale <code>en</code>, you need to use the <code>headline_en</code> attribute.</p>
  <p>List of locales described in <a href="/reference/enums#locales">enums section</a>.</p>
</div>

Returns a newly created rental.

~~~~
POST /rentals
~~~~

<%= render 'json_response', endpoint: "rentals", request: "request",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

## Update a rental

Returns an updated rental identified by ID.

<div class="callout callout-info">
  <h4>Translated attributes</h4>
  <p>Please note that translated attributes are updated differenly than you read them.<br>
  To set the English headline, locale <code>en</code>, you need to use the <code>headline_en</code> attribute.</p>
  <p>List of locales described in <a href="/reference/enums#locales">enums section</a>.</p>
</div>

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
