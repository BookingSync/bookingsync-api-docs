# Host reviews

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
         |                     | id                    | UUID    | Read       | Host Review's id.
---------|---------------------|-----------------------|---------|------------|------------
         |                     | comment               | Text    | Read       | Host Review's comment.
         |                     | shareable             | Boolean | Read       | Whether Host Review is permitted for public use.
         |                     | is_guest_recommended  | Boolean | Read       | Whether the host recommends guest.
         |                     | source_id             | Boolean | Read       | Source of the Host Review, always equal to the source of the booking.
---------|---------------------|-----------------------|---------|------------|------------
criteria |                     |                       | Object  | Read       | Guest ratings in specific criteria.
         | cleanliness         |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Rating of guests' clealiness
         |                     | comment               | Text    | Read       | Comment on guests' clealiness
         | communication       |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Rating of guests' communication
         |                     | comment               | Text    | Read       | Comment on guests' communication
         | respect_house_rules |                       | Object  | Read       | Details of given criterion.
         |                     | rating                | Decimal | Read       | Rating of guests' respect of house rules
         |                     | comment               | Text    | Read       | Comment on guests' respect of house rules
---------|---------------------|-----------------------|---------|------------|------------
         |                     | created_at            | [Time](/reference/enums#formats) | Read       | Review's create time.
         |                     | updated_at            | [Time](/reference/enums#formats) | Read       | Review's update time.
         |                     | submitted_at          | [Time](/reference/enums#formats) | Read       | Host Review's submission time. Once filled, no futher updates are required for given object.
         |                     | expires_at            | [Time](/reference/enums#formats) | Read       | Host Review's expiry time. Once that time is passed, submission will no longer be possible.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="reviews_write" markdown="1">
Group    | Subgroup            | Name                  | Type    | Read/Write | Description
---------|---------------------|-----------------------|---------|------------|------------
         |                     | id                    | UUID    | Read       | Host Review's id.
         |                     | source_id             | Integer | Write      | Id of the source of given host review. It must be equal to the source of the associated booking.
---------|---------------------|-----------------------|---------|------------|------------
         |                     | comment               | Text    | Read/Write | Host Review's comment. **Optional** for draft, **required** for submission.
         |                     | private_comment       | Text    | Read/Write | ** Optional**: Private feedback to the guest, can't be display publicly.
         |                     | shareable             | Boolean | Read/Write | Whether Host Review is permitted for public use. **Required**: Has to be set during creation, not possible to modify afterwards.
         |                     | is_guest_recommended  | Boolean | Read/Write | Whether the host recommends guest. **Optional** for draft, **required** for submission.
         |                     | source_id             | Boolean | Read/Write | Source of the Host Review. **Required**: Has to be set during creation, not possible to modify afterwards. Has to be the same as the source of the booking.
---------|---------------------|-----------------------|---------|------------|------------
criteria |                     |                       | Object  | Read/Write | Guest ratings in specific criteria. **Optional** for draft, **required** for submission.
         | cleanliness         |                       | Object  | Read/Write | Details of given criterion. **Optional** for draft, **required** for submission.
         |                     | rating                | Decimal | Read/Write | Rating of guests' clealiness. **Required** if parent element is defined.
         |                     | comment               | Text    | Read/Write | **Optional**: Comment on guests' cleanliness.
         | communication       |                       | Object  | Read/Write | Details of given criterion. **Optional** for draft, **required** for submission.
         |                     | rating                | Decimal | Read/Write | Rating of guests' communication. **Required** if parent element is defined.
         |                     | comment               | Text    | Read/Write | **Optional**: Comment on guests' communication.
         | respect_house_rules |                       | Object  | Read/Write | Details of given criterion. **Optional** for draft, **required** for submission.
         |                     | rating                | Decimal | Read/Write | Rating of guests' respect of house rules. **Required** if parent element is defined.
         |                     | comment               | Text    | Read/Write | **Optional**: Comment on guests' respect of house rules.
---------|---------------------|-----------------------|---------|------------|------------
         |                     | created_at            | [Time](/reference/enums#formats) | Read       | Review's create time.
         |                     | updated_at            | [Time](/reference/enums#formats) | Read       | Review's update time.
         |                     | submitted_at          | [Time](/reference/enums#formats) | Read/Write | Host Review's submission time. Once filled, no futher updates are required for given object. **Required** for submission, for draft it's ignored by the server.
         |                     | expires_at            | [Time](/reference/enums#formats) | Read/Write | **Optional**: Host Review's expiry time. Once that time is passed, submission will no longer be possible.
{: class="table table-bordered"}
  </div>
</div>

## List host reviews

List all host reviews (from host to guest) for a given account(s).

~~~
GET /host_reviews
~~~

<%= render 'json_response', endpoint: "host_reviews", scopes: [{ public: "public" }, { reviews_write: "reviews_write" }] %>

## Get a single host review

Returns a single host review identified by ID.

~~~
GET /host_reviews/:host_review_id
~~~

<%= render 'json_response', endpoint: "host_reviews", scopes: [{ public: "public" }, { reviews_write: "reviews_write" }] %>

## Create a new host review

### Create submitted host review

Creates a submitted host review for given booking.
Such a host review will be no longer editable and requires all data to be filled (`comment`, `shareable`, `is_guest_recommended`, `source_id`, `submitted_at`, all `criteria` with at least `rating`).

~~~
POST /bookings/:booking_id/host_reviews
~~~

<%= render 'json_response', endpoint: "host_reviews", request: "create-submitted",
  scopes: [{ reviews_write: "submit_reviews_write" }] %>

### Create draft host review

Creates a draft host review for given booking.
Such a host review will be editable until submitted, it requires bare minimum for a successful creation (`shareable`, `source_id`)

~~~
POST /bookings/:booking_id/host_reviews/draft
~~~

<%= render 'json_response', endpoint: "host_reviews", request: "create-draft",
  scopes: [{ reviews_write: "create_update_draft_reviews_write" }] %>

## Edit draft review

### Submit draft host review

Submits host review making it final and no longer editable. Apart from `shareable` and `source_id` which can be set only during creation, all other attibutes (`comment`, `is_guest_recommended`, `submitted_at`, all `criteria` with at least `rating`) are required.

~~~
PUT /host_reviews/draft/:host_review_id/submit
~~~

<%= render 'json_response', endpoint: "host_reviews", request: "submit-draft",
  scopes: [{ reviews_write: "submit_reviews_write" }] %>

### Modify draft host review without submitting

Updates host review attributes without submitting it, thus allowing for further editions. Apart from `shareable` and `source_id` which can be set only during creation, all other attibutes are optional.

~~~
PUT /host_reviews/draft/:host_review_id
~~~

<%= render 'json_response', endpoint: "host_reviews", request: "update-draft",
  scopes: [{ reviews_write: "create_update_draft_reviews_write" }] %>
