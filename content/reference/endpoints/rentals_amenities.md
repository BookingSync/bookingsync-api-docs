# Rentals amenities

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Amenity's id.
-----------------|---------|------------|------------
created_at       | [Time](/reference/formats#date--time) | Read       | Rentals Amenity's create time.
updated_at       | [Time](/reference/formats#date--time) | Read       | Rentals Amenity's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rentals amenities

List all rentals amenities for given account.

~~~
GET /rentals_amenities
~~~

<%= render 'json_response', endpoint: "rentals_amenities", scopes: %w(public) %>

## Get a single rentals amenity

Returns a single rentals amenity identified by ID.

~~~
GET /rentals_amenities/:rentals_amenity_id
~~~

<%= render 'json_response', endpoint: "rentals_amenities", scopes: %w(public) %>
