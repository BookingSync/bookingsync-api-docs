# Rentals amenities

1. TOC
{:toc}

## Overview

This resource represents the Rentals Amenities, that establish relationship between [Rentals](/reference/endpoints/rentals) and [Amenities](/reference/endpoints/amenities).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Rentals Amenity
rental           | Integer | Read       | Rental's ID related to the Rentals Amenity
amenity          | Integer | Read       | Amenity's ID related to the Rentals Amenity
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Amenity's id.
details          | [Object](/reference/enums#formats) | Read       | Rentals Amenity's details, list of locales described in [enums section](/reference/enums#locales).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer | Read       | Account's ID related to the Rentals Amenity |
rental           | Integer | Read       | Rental's ID related to the Rentals Amenity |
amenity          | Integer | Read       | Amenity's ID related to the Rentals Amenity |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Rentals Amenity's ID. |
amenity_id       | Integer | Write      | Amenity's ID related to the Rentals Amenity | **Required**. 
-----------------|---------|------------|-------------|
details          | [Object](/reference/enums#formats) | Read/Write | Rentals Amenity's details, list of locales described in [enums section](/reference/enums#locales). | Maximum length: 100
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List rentals amenities

List all rentals amenities for a given account.

~~~
GET /rentals_amenities
~~~

<%= render 'json_response', endpoint: "rentals_amenities",
  scopes: [{ public: "public-rentals_write" }] %>

## Get a single rentals amenity

Returns a single rentals amenity identified by ID.

~~~
GET /rentals_amenities/:rentals_amenity_id
~~~

<%= render 'json_response', endpoint: "rentals_amenities",
  scopes: [{ public: "public-rentals_write" }] %>

## Create a new rentals amenity

Creates a rentals amenity for given rental.

~~~~
POST /rentals/:rental_id/rentals_amenities
~~~~

<%= render 'json_response', endpoint: "rentals_amenities", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a rentals amenity

Returns an updated rentals amenity identified by ID.

~~~
PUT /rentals_amenities/:rentals_amenity_id
~~~

<%= render 'json_response', endpoint: "rentals_amenities", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a rentals amenity

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rentals_amenities/:rentals_amenity_id
~~~~~~
