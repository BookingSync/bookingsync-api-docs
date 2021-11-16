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
Group    | Subgroup            | Name                  | Type    | Read/Write | Description
---------|---------------------|-----------------------|---------|------------|------------
         |                     | id                    | Integer | Read       | Guest Review's id.
---------|---------------------|-----------------------|---------|------------|------------
         |                     | title                 | Text    | Read       | Title/Summary of the review.
         |                     | comment               | Text    | Read       | Guest Review's comment.
         |                     | rating                | Integer | Read       | Guest Review's rating (between 1 and 5, inclusive).
         |                     | rating_accurate       | Text    | Read       | Non rounded rating.
         |                     | name                  | Text    | Read       | Reviewer's name, cropped to show only the initial of the last name.
         |                     | country_code          | Text    | Read       | Reviewer's country code.
         |                     | shareable             | Boolean | Read       | Whether Guest Review is permitted for public use.
---------|---------------------|-----------------------|---------|------------|------------
criteria |                     |                       | Object  | Read       | Host ratings in specific criteria.
         | cleanliness         |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Was the cleanliness up to the standards?
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | communication       |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | How fast/easy the communication with the host was.
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | checkin             |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | How smooth was the checkin process?
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | location            |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Was the guest aware of any location dependent factors that could affect the stay (such as noise, safety, transportation etc.)?
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | facilities          |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Whare facilities working and matching description? XXX
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | comfort             |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | How comfortabel was the stay? XXX
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | staff               |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | How helpful was the staff? XXX
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | value_for_money     |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Was it worth the price?
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
         | accuracy            |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | How accurate was the property represented on a website?
         |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
---------|---------------------|-----------------------|---------|------------|------------
         |                     | created_at            | [Time](/reference/enums#formats) | Read       | Review's create time.
         |                     | updated_at            | [Time](/reference/enums#formats) | Read       | Review's update time.
         |                     | submitted_at          | [Time](/reference/enums#formats) | Read       | Review's submission time. When not specified, defaults to creation time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="reviews_write" markdown="1">
Group    | Subgroup            | Name                  | Type    | Read/Write | Description
---------|---------------------|-----------------------|---------|------------|------------
         |                     | id                    | Integer | Read       | Guest Review's id.
         |                     | source_id             | Integer | Write      | Id of the source of this review
---------|---------------------|-----------------------|---------|------------|------------
         |                     | title                 | Text    | Read/Write | Title/Summary of the review.
         |                     | comment               | Text    | Read/Write | **Required**: Comment from guest.
         |                     | private_comment       | Text    | Read/Write | Private comment from guest (not meant to be exposed publicly).
         |                     | rating                | Integer | Read/Write | **Required**: Overall rating of a stay (between 1 and 5, inclusive).
         |                     | rating_accurate       | Text    | Read       | Non rounded rating.
         |                     | name                  | Text    | Read       | Reviewer's name, cropped to show only the initial of the last name.
         |                     | country_code          | Text    | Read       | Reviewer's country code.
         |                     | shareable             | Boolean | Read/Write | Whether Guest Review is permitted for public use.
---------|---------------------|-----------------------|---------|------------|------------
criteria |                     |                       | Object  | Read/Write | Host ratings in specific criteria.
         | cleanliness         |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | Was the cleanliness up to the standards? **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | communication       |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | How fast/easy the communication with the host was. **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | checkin             |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | How smooth was the checkin process? **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | location            |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | Was the guest aware of any location dependent factors that could affect the stay (such as noise, safety, transportation etc.)? **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | facilities          |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | Were facilities working and matching description? XXX **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | comfort             |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | How comfortabel was the stay?. XXX **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | staff               |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | How helpful was the staff? XXX **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | value_for_money     |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | Was it worth the price? **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
         | accuracy            |                       | Object  | Read/Write | Details of given criterion.
         |                     | rating                | Decimal | Read/Write | How accurate was the property represented on a website? **Required** only when sending parent node.
         |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion.
---------|---------------------|-----------------------|---------|------------|------------
         |                     | created_at            | [Time](/reference/enums#formats) | Read       | Review's create time.
         |                     | updated_at            | [Time](/reference/enums#formats) | Read       | Review's update time.
         |                     | submitted_at          | [Time](/reference/enums#formats) | Read/Write | Host Review's submission time. Once filled, no futher updates are required for given object.
{: class="table table-bordered"}
  </div>
</div>

## List reviews

List all guest reviews (from guest to host) for a given account(s).

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
