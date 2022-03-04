# Rental Cancelation Policies

1. TOC
{:toc}

## Overview

This resource represents Rental Cancelation Policies which define the rules and potential penalties for the cancelation of [Bookings](/reference/endpoints/bookings/) (defined either via Rental Cancelation Policy Items or `preset`)

The Rental Cancelation Policy can be defined on the Account level (a global one that will be applied to all [Rentals](/reference/endpoints/rentals/)), a custom one for Rental (if not defined, it default to Account's one) and on the Booking level (which is the copy of the Rental's one at time of Booking creation).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
account          | Integer | Read       | Account's ID related to the Rental Cancelation Policy
rental           | Integer | Read       | Rental's ID related to the Rental Cancelation Policy
rental_cancelation_policy_items | Array | Read | Rental Cancelation Policy Items' defined for the Rental Cancelation Policy
policeable_id    | Integer | Read       | ID of the resource to which Rental Cancelation Policy belongs to (Rental, Account or Booking)
policeable_type  | String  | Read       | Type of the resource to which Rental Cancelation Policy belongs to (Rental, Account or Booking)
-----------------|---------|------------|------------
id               | Integer | Read       | Rental cancelation policy's ID.
body             | String  | Read       | Rental cancelation policy's body in Account’s default locale.
body_translations | [Object](/reference/enums#formats)     | Read       | Rental cancelation policy's body translations, list of locales described in [enums section](/reference/enums#locales).
preset           | String  | Read       | Rental cancelation policy's preset, list of presets described in [enums section](/reference/enums#rental-cancelation-policies-presets).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's update time.
{: class="table table-bordered"}
  </div>
</div>


attributes :id, :body, :created_at, :updated_at, :body_translations, :

has_one  :rental, visible: false, embed: :object, serializer: Api::V3::RentalSerializer
has_many :rental_cancelation_policy_items, visible: false, embed: :object,
serializer: Api::V3::RentalCancelationPolicyItemSerializer


## List rental cancelation policies

List all rental cancelation policies for given account(s).

~~~
GET /rental_cancelation_policies
~~~

<%= render 'json_response', endpoint: "rental_cancelation_policies", scopes: %w(public) %>

## Get a single rental cancelation policy

Returns a single rental cancelation policy identified by ID.

~~~
GET /rental_cancelation_policies/:rental_cancelation_policy_id
~~~

<%= render 'json_response', endpoint: "rental_cancelation_policies", scopes: %w(public) %>
