# Reviews

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#reviews_write" role="tab" data-toggle="pill">reviews_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Review's id.
-----------------|---------|------------|------------
comment          | Text    | Read       | Review's comment.
country_code     | String  | Read       | Reviewer's country code.
name             | String  | Read       | Reviewer's name, cropped to show only the initial of the last name.
rating           | Integer | Read       | Review's rating.
title            | String  | Read       | Review's title.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Review's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Review's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="reviews_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Review's id.
-----------------|---------|------------|------------
comment          | Text    | Read/Write | **Required**. Review's comment. (10 min, 2000 max characters)
country_code     | String  | Read       | Reviewer's country code. e.g: FR
name             | String  | Read       | Reviewer's name, cropped to show only the initial of the last name.
rating           | Integer | Read/Write | **Required**. Review's rating. (between 1 and 6)
title            | String  | Read/Write | Review's title. (3 min, 100 max characters)
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Review's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Review's update time.
{: class="table table-bordered"}
  </div>
</div>

## List reviews

List all reviews for a given account(s).

~~~
GET /reviews
~~~

<%= render 'json_response', endpoint: "reviews", scopes: [{ public: "public-reviews_write" }] %>

## Get a single review

Returns a single review identified by ID.

~~~
GET /reviews/:review_id
~~~

<%= render 'json_response', endpoint: "reviews", scopes: [{ public: "public-reviews_write" }] %>

## Create a new review

Creates a review for given booking.

~~~
POST /bookings/:booking_id/reviews
~~~

<%= render 'json_response', endpoint: "reviews", request: "create",
  scopes: [{ reviews_write: "public-reviews_write" }] %>
