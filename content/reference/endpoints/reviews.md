# Reviews

1. TOC
{:toc}

## List reviews

Required OAuth scope: `:public`

List all reviews for given account(s).

~~~
GET /reviews
~~~

Response:

<%= json_response 'reviews/index' %>

## Get a single review

Required OAuth scope: `:public`

Returns a single review identified by ID.

~~~
GET /reviews/ID
~~~

Response:

<%= json_response 'reviews/index' %>

## Create a new review

Required OAuth scope: `:reviews_write`

Returns a newly created review.

~~~
POST /reviews
~~~

### Parameters

Name             | Type    | Description
-----------------|---------|-----------
comment          | String  | Client's opinion. 
rating           | Integer | **Required**. Client's rating.
{: class="table table-bordered"}

Response:

<%= json_response 'reviews/index' %>
