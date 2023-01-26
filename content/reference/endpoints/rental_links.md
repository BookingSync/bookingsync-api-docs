# Rental Links

1. TOC
{:toc}

## Overview

This resource represents Rental Links which are managed via [Rental Link Groups](/reference/endpoints/rental_link_groups/).

The purpose of the Rental Links is to mirror the availabilities between two Rentals - if there is a link between Rental A and Rental B, creating (or canceling) a [Booking](/reference/endpoints/bookings/) for either of them will result in creating/canceling a "mirrored" Booking on the other Rental.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
account            | Integer | Read       | Account's ID related to the Rental link
rental_link_group  | Integer | Read       | Rental link Group's ID related to the Rental link
source_rental      | Integer | Read       | Rental's ID (as source of the link) related to the Rental link
destination_rental | Integer | Read       | Rental's ID (as destination of the link) related to the Rental link
-------------------|---------|------------|------------
id                 | Integer | Read       | Rental link's ID.
kind               | String  | Read       | Rental link's kind, list of rental link's rate kinds described in [enums section](/reference/enums#rental-link-kinds).
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read         | Rental link's create time.
updated_at         | [Time](/reference/enums#formats) | Read         | Rental link's update time.
{: class="table table-bordered"}
  </div>
</div>


## List rental links

List all rental link for a given account(s).

~~~
GET /rental_links
~~~

<%= render '/json_response.html', endpoint: "rental_links", scopes: %w(public) %>

## Get a single rental link

Returns a single rental link identified by ID.

~~~
GET /rental_links/:rental_link_id
~~~

<%= render '/json_response.html', endpoint: "rental_links", scopes: %w(public) %>
