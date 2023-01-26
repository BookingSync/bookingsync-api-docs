# LivingRooms

1. TOC
{:toc}

## Overview

This resource represents the rental's living rooms. This resource is mostly static information used for presentational purposes.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                | Type    | Read/Write | Description
--------------------|---------|------------|------------
rental              | Integer | Read       | Rental's ID related to LivingRoom
account             | Integer | Read       | Account's ID related to LivingRoom
--------------------|---------|------------|------------
id                  | Integer | Read       | LivingRoom's id.
bunk_beds_count     | Integer | Read       | LivingRoom's number of bunk beds.
double_beds_count   | Integer | Read       | LivingRoom's number of double beds.
kingsize_beds_count | Integer | Read       | LivingRoom's number of kingsize beds.
queensize_beds_count| Integer | Read       | LivingRoom's number of queensize beds.
single_beds_count   | Integer | Read       | LivingRoom's number of single beds.
sofa_beds_count     | Integer | Read       | LivingRoom's number of sofa beds.
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | LivingRoom's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | LivingRoom's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                | Type    | Read/Write | Description | Constraints
--------------------|---------|------------|-------------|
rental              | Integer | Read       | Rental's ID related to LivingRoom |
account             | Integer | Read       | Account's ID related to LivingRoom |
--------------------|---------|------------|-------------|
id                  | Integer | Read       | LivingRoom's id. |
bunk_beds_count     | Integer | Read/Write | LivingRoom's number of bunk beds. | integer only, greater than or equal to: 0
double_beds_count   | Integer | Read/Write | LivingRoom's number of double beds. | integer only, greater than or equal to: 0
kingsize_beds_count | Integer | Read/Write | LivingRoom's number of kingsize beds. | integer only, greater than or equal to: 0
queensize_beds_count| Integer | Read/Write | LivingRoom's number of queensize beds. | integer only, greater than or equal to: 0
single_beds_count   | Integer | Read/Write | LivingRoom's number of single beds. | integer only, greater than or equal to: 0
sofa_beds_count     | Integer | Read/Write | LivingRoom's number of sofa beds. | integer only, greater than or equal to: 0
--------------------|---------|------------|-------------|
created_at          | [Time](/reference/enums#formats) | Read       | LivingRoom's create time. |
updated_at          | [Time](/reference/enums#formats) | Read       | LivingRoom's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List living_rooms

List all living_rooms for a given account.

~~~
GET /living_rooms
~~~

<%= render '/json_response.html', endpoint: "living_rooms",
  scopes: [{ public: "public-rentals_write" }] %>

## Get a single living_room

Returns a single living_room identified by ID.

~~~
GET /living_rooms/:living_room_id
~~~

<%= render '/json_response.html', endpoint: "living_rooms",
  scopes: [{ public: "public-rentals_write" }] %>

## Create a new living_room

Creates a living_room for given rental.

~~~
POST /rentals/:rental_id/living_rooms
~~~

<%= render '/json_response.html', endpoint: "living_rooms", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a living_room

Returns an updated living_room identified by ID.

~~~
PUT /living_rooms/:living_room_id
~~~

<%= render '/json_response.html', endpoint: "living_rooms", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a living_room

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /living_rooms/:living_room_id
~~~~~~
