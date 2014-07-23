# Reviews

1. TOC
{:toc}

## List reviews

List all reviews for given account(s).

~~~
GET /reviews
~~~

<%= render 'json_response', endpoint: "reviews",
  scopes: [{public: "public-reviews_write"}] %>

## Get a single review

Returns a single review identified by ID.

~~~
GET /reviews/:review_id
~~~

<%= render 'json_response', endpoint: "reviews",
  scopes: [{public: "public-reviews_write"}] %>

## Create a new review

Creates a review for given booking.

~~~
POST /bookings/:booking_id/reviews
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
comment          | String  | Client's opinion.
rating           | Integer | **Required**. Client's rating.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "reviews",
  scopes: [{reviews_write: "public-reviews_write"}] %>
