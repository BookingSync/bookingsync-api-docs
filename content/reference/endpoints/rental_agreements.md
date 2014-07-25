# Rental Agreements

1. TOC
{:toc}

## List rental agreements

List all rental agreements for rentals in given account(s).

~~~
GET /rental_agreements
~~~

<%= render 'json_response', endpoint: "rental_agreements",
  scopes: [{public: "public-rentals_write"}] %>

## Get a single rental agreement

Returns a single rental agreement identified by ID.

~~~
GET /rental_agreements/:rental_agreement_id
~~~

<%= render 'json_response', endpoint: "rental_agreements",
  scopes: [{public: "public-rentals_write"}] %>

## Create a new default rental agreement

Create a new rental agreement to be used by default.
This rental agreement will be used unless one is defined at rental
or booking level.

Returns a newly created rental agreement.

~~~~
POST /rental_agreements
~~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
body             | String  | **Required**. Rental agreement's content.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rental_agreements", request: "request",
  scopes: [{rentals_write: "public-rentals_write"}] %>

## Create a new rental agreement for a booking

Create a new rental agreement to be used exclusivly for this booking.

Returns a newly created rental agreement.

~~~~
POST /bookings/:booking_id/rental_agreements
~~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
booking_id       | Integer | **Required**. Rental agreement's booking id.
body             | String  | **Required**. Rental agreement's content.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rental_agreements", request: "request-booking",
  scopes: [{rentals_write: "public-rentals_write"}] %>

## Create a new rental agreement for a rental

Create a new rental agreement to be used a default for the given rental.

Returns a newly created rental agreement.

~~~~
POST /rentals/:rental_id/rental_agreements
~~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
rental_id        | Integer | **Required**. Rental agreement's rental id.
body             | String  | **Required**. Rental agreement's content.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "rental_agreements", request: "request-rental",
  scopes: [{rentals_write: "public-rentals_write"}] %>
