# Rentals amenities

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Amenity's id.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Amenity's id.
amenity_id       | Integer | Write      | **Required**. Amenity id related to the Rentals Amenity.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Amenity's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rentals amenities

List all rentals amenities for given account.

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

<%= render 'json_response', endpoint: "rentals_amenities", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a rentals amenity

Returns an updated rentals amenity identified by ID.

~~~
PUT /rentals_amenities/:rentals_amenity_id
~~~

<%= render 'json_response', endpoint: "rentals_amenities", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a rentals amenity

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rentals_amenities/:rentals_amenity_id
~~~~~~
