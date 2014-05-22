# Rentals

1. TOC
{:toc}

## List rentals

Required OAuth scope: `:public`, `:rentals_read` or `:rentals_write`

List all rentals for given account(s).

~~~
GET /rentals
~~~

Response:

<%= json_response 'rentals/index' %>

## Get a single rental

Required OAuth scope: `:public`, `:rentals_read` or `:rentals_write`

Returns a single rental identified by ID.

~~~
GET /rentals/:rental_id
~~~

Response:

<%= json_response 'rentals/index' %>

## Create a new rental

Required OAuth scope: `:rentals_write`

Returns a newly created rental.

~~~
POST /rentals
~~~

### Parameters

Name                            | Type     | Description
--------------------------------|----------|------------
name                            | String   | **Required**. Rental's name.
description                     | String   | Rental's description.
notes                           | String   | Rental's notes.
rates_table_id                  | Integer  | Rental's rates table id.
rate                            | Integer  |
rate_kind                       | String   |
currency                        | String   | Rental's currency code, list of codes described in [enums section](/reference/enums).
deposit                         | Integer  | Rental's deposit value.
amenity_ids                     | Array    | List of amenities ids related to rental.
lat                             | Number   | Rental's latitude.
lng                             | Number   | Rental's longitude.
map_zoom                        | Integer  | 
rentals_description_attributes  | [Hash](/reference/endpoints/rentals_description) | Rentals description's attributes for a rental.
rental_type                     | String   | Rental's type, list of types described in [enums section](/reference/enums).
units                           | Integer  |
bedrooms_count                  | Integer  | Rental's bedrooms count.
sleeps                          | Integer  | 
sleeps_max                      | Integer  | 
bathrooms_count                 | Integer  | Rental's bathrooms count.
surface                         | Integer  |
rentals_contact_id              | Integer  | Rental's contact id.
owner_id                        | Integer  | Rental's owner id.
rentals_category_id             | Integer  | Rental's category id.
owner_agreements_attributes     | [Hash](/reference/endpoints/owner_agreements)  | Owner agreement's attributes for a rental.
destination_id                  | Integer  | Rental's destination id.
address1                        | String   | Rental's primary address.
address2                        | String   | Rental's optional address.
zip                             | String   | Rental's zip code.
{: class="table table-bordered"}

Response:

<%= json_response 'rentals/index' %>


## Update a rental

Required OAuth scope: `:rentals_write`

Returns an updated rental identified by ID.

~~~
PUT /rentals/ID
~~~

### Parameters

Name                            | Type     | Description
--------------------------------|----------|------------
name                            | String   | **Required**. Rental's name.
description                     | String   | Rental's description.
notes                           | String   | Rental's notes.
rates_table_id                  | Integer  | Rental's rates table id.
rate                            | Integer  |
rate_kind                       | String   |
currency                        | String   | Rental's currency code, list of codes described in [enums section](/reference/enums).
deposit                         | Integer  | Rental's deposit value.
amenity_ids                     | Array    | List of amenities ids related to rental.
lat                             | Number   | Rental's latitude.
lng                             | Number   | Rental's longitude.
map_zoom                        | Integer  | 
rentals_description_attributes  | [Hash](/reference/endpoints/rentals_description) | Rentals description's attributes for a rental.
rental_type                     | String   | Rental's type, list of types described in [enums section](/reference/enums).
units                           | Integer  |
bedrooms_count                  | Integer  | Rental's bedrooms count.
sleeps                          | Integer  | 
sleeps_max                      | Integer  | 
bathrooms_count                 | Integer  | Rental's bathrooms count.
surface                         | Integer  |
rentals_contact_id              | Integer  | Rental's contact id.
owner_id                        | Integer  | Rental's owner id.
rentals_category_id             | Integer  | Rental's category id.
owner_agreements_attributes     | [Hash](/reference/endpoints/owner_agreements)  | Owner agreement's attributes for a rental.
destination_id                  | Integer  | Rental's destination id.
address1                        | String   | Rental's primary address.
address2                        | String   | Rental's optional address.
zip                             | String   | Rental's zip code.
{: class="table table-bordered"}

Response:

<%= json_response 'rentals/index' %>


## Cancel a rental

Required OAuth scope: `:rentals_write`

Returns an empty Array on success.

~~~~~~
DELETE /rentals/ID
~~~~~~
