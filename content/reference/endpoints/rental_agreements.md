# Rental Agreements

1. TOC
{:toc}

## List rental agreements

Required OAuth scope: `:public`

List all rental agreements for rentals in given account(s).

~~~
GET /rental_agreements
~~~

Response:

<%= json_response 'rental_agreements/index' %>

## Get a single rental agreement

Required OAuth scope: `:public`

Returns a single rental agreement identified by ID.

~~~
GET /rental_agreements/ID
~~~

Response:

<%= json_response 'rental_agreements/index' %>

## Create a new default rental agreement

Required OAuth scope: `:rentals_write`

Create a new rental agreement to be used by default. This rental agreement will be used unless one is defined at rental or booking level.

Returns a newly created rental agreement.

~~~~
POST /rental_agreements
~~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
body             | String  | **Required**. Rental agreement's content.
{: class="table table-bordered"}

Response:

<%= json_response 'rental_agreements/index' %>

## Create a new rental agreement for a booking

Required OAuth scope: `:rentals_write`

Create a new rental agreement to be used exclusivly for this booking.

Returns a newly created rental agreement.

~~~~
POST /bookings/BOOKING_ID/rental_agreements
~~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
booking_id       | Integer | **Required**. Rental agreement's booking id.
body             | String  | **Required**. Rental agreement's content.
{: class="table table-bordered"}

Response:

<%= json_response 'rental_agreements/index' %>

## Create a new rental agreement for a rental

Required OAuth scope: `:rentals_write`

Create a new rental agreement to be used a default for the given rental.

Returns a newly created rental agreement.

~~~~
POST /rentals/RENTAL_ID/rental_agreements
~~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
rental_id        | Integer | **Required**. Rental agreement's rental id.
body             | String  | **Required**. Rental agreement's content.
{: class="table table-bordered"}

Response:

<%= json_response 'rental_agreements/index' %>
