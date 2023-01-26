# Rental Cancelation Policy Items

1. TOC
{:toc}

## Overview

This resource represents Rental Cancelation Policy Items which describe the rules and penalties for the cancelation of [Bookings](/reference/endpoints/bookings/) for the specific [Rental Cancelation Policy](/reference/endpoints/rental_cancelation_policy/)

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
account                   | Integer | Read       | Account's ID related to the Rental Cancelation Policy Item
rental_cancelation_policy | Integer | Read       | Rental Cancelation Policy's ID related to the Rental Cancelation Policy Item
-------------------|---------|------------|------------
id                 | Integer | Read       | Rental cancelation policy item's ID.
eligible_days      | Integer | Read       | Number of days before the check-in from which the penalty applies (For example, if there is only a single Item defined for a Policy with eligible_days as 30, `penalty_percentage` doesn't apply before 30 days prior to check-in, only from 30 days and less).
penalty_percentage | [Decimal](/reference/enums#formats) | Read       | Percentage of penalty from the booking price.
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's create time.
updated_at         | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rental cancelation policy items

List all rental cancelation policy items for given account(s).

~~~
GET /rental_cancelation_policy_items
~~~

<%= render '/json_response.html', endpoint: "rental_cancelation_policy_items", scopes: %w(public) %>

## Get a single rental cancelation policy item

Returns a single rental cancelation policy item identified by ID.

~~~
GET /rental_cancelation_policy_items/:rental_cancelation_policy_item_id
~~~

<%= render '/json_response.html', endpoint: "rental_cancelation_policy_items", scopes: %w(public) %>
