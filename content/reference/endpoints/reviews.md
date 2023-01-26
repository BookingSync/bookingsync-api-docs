# Reviews

1. TOC
{:toc}

## Overview

his resource represents guests' (travelers') Reviews for the host for a given [Booking](/reference/endpoints/bookings/).

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
          |                     | account               | Integer | Read       | Account's ID related to the Review
          |                     | rental                | Integer | Read       | Rental's ID related to the Review
          |                     | source                | Integer | Read       | Source's ID related to the Review
          |                     | reply                 | Integer | Read       | Reply's (ReviewReply)'s ID related to the Review
          |                     | booking               | Integer | Read       | Booking's ID related to the Review
 ---------|---------------------|-----------------------|---------|------------|------------
          |                     | id                    | Integer | Read       | Review's ID.
          |                     | title                 | Text    | Read | Title/Summary of the review.
          |                     | comment               | Text    | Read | Comment from traveler (guest).
          |                     | private_comment       | Text    | Read | Private comment from the traveler (guest) (not meant to be exposed publicly).
          |                     | rating                | Integer | Read/Write | Overall rating of a stay
          |                     | rating_accurate       | [Decimal](/reference/enums#formats)    | Read       | Non-rounded rating.
          |                     | name                  | Text    | Read       | Reviewer's name, cropped to show only the initial of the last name.
          |                     | country_code          | Text    | Read       | Reviewer's country code.
          |                     | shareable             | Boolean | Read | Whether Review is permitted for public use.
          |                     | dismissed_by          | Boolean | Read | Whom the Review was dismissed by
          |                     | dismissal_reason      | Boolean | Read | The Reason why the was dismissed
 ---------|---------------------|-----------------------|---------|------------|------------
 criteria |                     |                       | [Object](/reference/enums#formats)   | Read       | Host ratings in specific criteria.
          | cleanliness         |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Was the cleanliness up to the standards?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | communication       |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | How fast/easy the communication with the host was.
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | checkin             |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | How smooth was the checkin process?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | location            |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Was the guest aware of any location dependent factors that could affect the stay (such as noise, safety, transportation etc.)?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | facilities          |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Were facilities working and matching description?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | comfort             |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Was the property warm enough, with enough lights. Were the beds and/or sofa comfy?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | staff               |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Was the staff friendly, attentive and respectful?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | value_for_money     |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Was it worth the price?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
          | accuracy            |                       | [Object](/reference/enums#formats)   | Read       | Details of given criterion.
          |                     | rating                | [Decimal](/reference/enums#formats) | Read       | Was the property accurately represented on a website?
          |                     | comment               | Text    | Read       | Additional feedback for a given criterion.
 ---------|---------------------|-----------------------|---------|------------|------------
          |                     | created_at            | [Time](/reference/enums#formats) | Read       | Review's create time.
          |                     | updated_at            | [Time](/reference/enums#formats) | Read       | Review's update time.
          |                     | submitted_at          | [Time](/reference/enums#formats) | Read       | Review's submission time. When not specified, defaults to creation time.
          |                     | dismissed_at          | [Time](/reference/enums#formats) | Read | When the Review was dismissed
 {: class="table table-bordered"}
   </div>
   <div class="tab-pane" id="reviews_write" markdown="1">
 Group    | Subgroup            | Name                  | Type    | Read/Write | Description | Constraints
  ---------|---------------------|-----------------------|---------|-----------|-------------|
          |                     | account               | Integer | Read       | Account's ID related to the Review |
          |                     | rental                | Integer | Read       | Rental's ID related to the Review |
          |                     | source                | Integer | Read       | Source's ID related to the Review |
          |                     | reply                 | Integer | Read       | Reply's (ReviewReply)'s ID related to the Review |
          |                     | booking               | Integer | Read       | Booking's ID related to the Review |
 ---------|---------------------|-----------------------|---------|------------|-------------|
          |                     | id                    | Integer | Read       | Review's ID. |
          |                     | source_id             | Integer | Write      | Source's ID related to the Review |
          |                     | title                 | Text    | Read/Write | Title/Summary of the review. |
          |                     | comment               | Text    | Read/Write | Comment from traveler (guest). | **Required**
          |                     | private_comment       | Text    | Read/Write | Private comment from the traveler (guest) (not meant to be exposed publicly). |
          |                     | rating                | Integer for Read/[Decimal](/reference/enums#formats)  | Read/Write | Overall rating of a stay | **Required**, must be between 1 and 5
          |                     | rating_accurate       | [Decimal](/reference/enums#formats)    | Read       | Non-rounded rating. |
          |                     | name                  | Text    | Read       | Reviewer's name, cropped to show only the initial of the last name. |
          |                     | country_code          | Text    | Read       | Reviewer's country code. |
          |                     | shareable             | Boolean | Read/Write | Whether Review is permitted for public use. |
          |                     | dismissed_by          | Boolean | Read/Write | Whom the Review was dismissed by  | Writing possibly only via `dismiss` action
          |                     | dismissal_reason      | Boolean | Read/Write | The Reason why the was dismissed | Writig possibly only via `dismiss` action
 ---------|---------------------|-----------------------|---------|------------|-------------|
 criteria |                     |                       | [Object](/reference/enums#formats)   | Read/Write | Host ratings in specific criteria. |
          | cleanliness         |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Was the cleanliness up to the standards? | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | communication       |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | How fast/easy the communication with the host was. | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | checkin             |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | How smooth was the checkin process?  | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | location            |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Was the guest aware of any location dependent factors that could affect the stay (such as noise, safety, transportation etc.)?  | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | facilities          |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Were facilities working and matching description?  | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | comfort             |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Was the property warm enough, with enough lights. Were the beds and/or sofa comfy? | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | staff               |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Was the staff friendly, attentive and respectful? | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | value_for_money     |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Was it worth the price?  | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
          | accuracy            |                       | [Object](/reference/enums#formats)   | Read/Write | Details of given criterion. |
          |                     | rating                | [Decimal](/reference/enums#formats) | Read/Write | Was the property accurately represented on a website? | **Required** only when sending parent node, must be between 1 and 5
          |                     | comment               | Text    | Read/Write | Additional feedback for a given criterion. |
 ---------|---------------------|-----------------------|---------|------------|-------------|
          |                     | created_at            | [Time](/reference/enums#formats) | Read       | Review's create time. |
          |                     | updated_at            | [Time](/reference/enums#formats) | Read       | Review's update time. |
          |                     | submitted_at          | [Time](/reference/enums#formats) | Read/Write | Review's submission time.  | Default's to current timestamp
          |                     | dismissed_at          | [Time](/reference/enums#formats) | Read/Write | When the Review was dismissed | Writing possible only via `dismiss` action, defaults to current timestamp
 {: class="table table-bordered"}
   </div>
 </div>


## List reviews

List all reviews for a given account(s).

~~~
GET /reviews
~~~

<%= render '/json_response.html', endpoint: "reviews", scopes: [{ public: "public-reviews_write" }] %>

## Get a single review

Returns a single review identified by ID.

~~~
GET /reviews/:review_id
~~~

<%= render '/json_response.html', endpoint: "reviews", scopes: [{ public: "public-reviews_write" }] %>

## Create a new review

Creates a review for given booking.

~~~
POST /bookings/:booking_id/reviews
~~~

<%= render '/json_response.html', endpoint: "reviews", request: "create",
  scopes: [{ reviews_write: "public-reviews_write" }] %>


## Dismiss a  review

Returns an dismissed review identified by ID.

~~~
PUT /reviews/:review_id/dismiss
~~~

<%= render '/json_response.html', endpoint: "reviews", request: "dismiss",
  scopes: [{ reviews_write: "public-reviews_write" }] %>
