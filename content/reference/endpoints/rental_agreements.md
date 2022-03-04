# Rental Agreements

1. TOC
{:toc}

## Overview

This resource represents Rental Agreements - an agreement that needs to be accepted by [Clients (travelers)](/reference/endpoints/clients/) for [Bookings](/reference/endpoints/bookings/).

The Rental Agreement can be defined on the Account level (a global one that will be applied to all [Rentals](/reference/endpoints/rentals/)), a custom one for Rental (if not defined, it default to Account's one) and on the Booking level (which is the copy of the Rental's one at time of Booking creation).

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
account                   | Integer | Read       | Account's ID related to the Rental Agreement
rental_agreementable_id   | Integer | Read       | ID of the resource to which Rental Agreement belongs to (Rental, Account or Booking)
rental_agreementable_type | String  | Read       | Type of the resource to which Rental Agreement belongs to (Rental, Account or Booking)
-----------------|---------|------------|------------
id               | Integer | Read       | Rental Agreement's ID.
body             | Text    | Read       | Rental Agreement's body for the Account's default locale.
body_translations | [Object](/reference/enums#formats)| Read       | Rental Agreement's body translations
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account                   | Integer | Read       | Account's ID related to the Rental Agreement |
rental_agreementable_id   | Integer | Read       | ID of the resource to which Rental Agreement belongs to (Rental, Account or Booking) |
rental_agreementable_type | String  | Read       | Type of the resource to which Rental Agreement belongs to (Rental, Account or Booking) |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Rental Agreement's ID.  |
body             | Text    | Read/Write | Rental Agreement's body for the Account's default locale. | **Required**, Maximum length: 100 000
body_translations | [Object](/reference/enums#formats)| Read       | Rental Agreement's body translations |
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List rental agreements

List all rental agreements for rentals in given account(s).

~~~
GET /rental_agreements
~~~

<%= render 'json_response', endpoint: "rental_agreements",
  scopes: [{ public: "public-rentals_write" }] %>

## Get a single rental agreement

Returns a single rental agreement identified by ID.

~~~
GET /rental_agreements/:rental_agreement_id
~~~

<%= render 'json_response', endpoint: "rental_agreements",
  scopes: [{ public: "public-rentals_write" }] %>

## Create a new default rental agreement

Create a new rental agreement to be used by default.
This rental agreement will be used, unless one is defined at rental
or booking level.

Returns a newly created rental agreement.

~~~~
POST /rental_agreements
~~~~

<%= render 'json_response', endpoint: "rental_agreements", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Create a new rental agreement for a booking

Create a new rental agreement to be used exclusively for this booking.

Returns a newly created rental agreement.

~~~~
POST /bookings/:booking_id/rental_agreements
~~~~

<%= render 'json_response', endpoint: "rental_agreements", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Create a new rental agreement for a rental

Create a new rental agreement to be used by default for the given rental.

Returns a newly created rental agreement.

~~~~
POST /rentals/:rental_id/rental_agreements
~~~~

<%= render 'json_response', endpoint: "rental_agreements", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>
