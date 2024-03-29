# Rental Link Groups

1. TOC
{:toc}

## Overview

This resource represents Rental Link Groups which is a way of establishing links between [Rentals](/reference/endpoints/rentals/) - creating or deleting a Rental Link Group results creating or deleting [Rental Links](/reference/endpoints/rental_links/). 

The purpose of the Rental Links is to mirror the availabilities between two Rentals - if there is a link between Rental A and Rental B, creating (or canceling) a [Booking](/reference/endpoints/bookings/) for either of them will result in creating/canceling a "mirrored" Booking on the other Rental.  

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
account          | Integer | Read       | Account's ID related to the Rental Link Group
rentals          | Array   | Read       | Rentals' IDs related to the Rental Link Group
rental_links     | Array   | Read       | Rental Links' ID related to the Rental Link Group
-----------------|---------|------------|------------
id               | Integer | Read       | Rental link group's ID.
rental_names     | String  | Read       | Rentals' names associated with given rental link group's
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Rental link group's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Rental link group's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer | Read       | Account's ID related to the Rental Link Group |
rentals          | Array   | Read       | Rentals' IDs related to the Rental Link Group |
rental_links     | Array   | Read       | Rental Links' ID related to the Rental Link Group |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Rental link group's id. | 
rental_ids       | Array   | Write      | IDs of the rentals to be linked | **Required**, Minimum number of IDs: 2
rental_names     | String  | Read       | Rentals' names associated with given rental link group's |
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read         | Rental link group's create time. |
updated_at       | [Time](/reference/enums#formats) | Read         | Rental link group's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List rental link groups

List all rental link groups for a given account(s).

~~~
GET /rental_link_groups
~~~

<%= render 'json_response', endpoint: "rental_link_groups", scopes: [{ public: "public-rentals_write" }] %>

## Get a single rental link group

Returns a single rental link group identified by ID.

~~~
GET /rental_link_groups/:rental_link_group_id
~~~

<%= render 'json_response', endpoint: "rental_link_groups", scopes: [{ public: "public-rentals_write" }] %>

## Create a new rental link group

Creates a rental link group for given rental.

~~~~
POST /rental_link_groups
~~~~

<%= render 'json_response', endpoint: "rental_link_groups", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Cancel a rental link group

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rental_link_groups/:rental_link_group_id
~~~~~~
