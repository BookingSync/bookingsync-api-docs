# Rental Agreements

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
id               | Integer | Read       | Rental Agreement's id.
-----------------|---------|------------|------------
body             | Text    | Read       | Rental Agreement's body.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rental Agreement's id.
-----------------|---------|------------|------------
body             | Text    | Read/Write | **Required**. Rental Agreement's body.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rental Agreement's update time.
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

<%= render 'json_response', endpoint: "rental_agreements", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Create a new rental agreement for a booking

Create a new rental agreement to be used exclusivly for this booking.

Returns a newly created rental agreement.

~~~~
POST /bookings/:booking_id/rental_agreements
~~~~

<%= render 'json_response', endpoint: "rental_agreements", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Create a new rental agreement for a rental

Create a new rental agreement to be used by default for the given rental.

Returns a newly created rental agreement.

~~~~
POST /rentals/:rental_id/rental_agreements
~~~~

<%= render 'json_response', endpoint: "rental_agreements", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>
