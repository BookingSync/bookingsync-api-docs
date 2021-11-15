# Review Replies

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
id               | UUID    | Read       | Review Reply id.
-----------------|---------|------------|------------
message          | Text    | Read       | Reply to given Guest or Host review
-----------------|---------|------------|------------
submitted_at     | [Time](/reference/enums#formats) | Read       | Review Reply submission time.
created_at       | [Time](/reference/enums#formats) | Read       | Review's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Review's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="reviews_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | UUID    | Read       | Review Reply id.
-----------------|---------|------------|------------
message          | Text    | Read/Write | **Required** Reply to given Guest or Host review
-----------------|---------|------------|------------
submitted_at     | [Time](/reference/enums#formats) | Read/Write | Review Reply submission time. When not provided it will be set to creation time.
created_at       | [Time](/reference/enums#formats) | Read       | Review's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Review's update time.
{: class="table table-bordered"}
  </div>
</div>

## List review replies

List all review replies for a given account(s).

~~~
GET /review_replies
~~~

<%= render 'json_response', endpoint: "review_replies", scopes: [{ public: "public-reviews_write" }] %>

## Get a single review

Returns a single review identified by ID.

~~~
GET /review_replies/:review_id
~~~

<%= render 'json_response', endpoint: "review_replies", scopes: [{ public: "public-reviews_write" }] %>

## Reply to guest or host review

### Reply to guest review

Replies to a given guest review

~~~
POST /reviews/:review_id/review_replies
~~~

<%= render 'json_response', endpoint: "review_replies", request: "create",
  scopes: [{ reviews_write: "reply_to_guest_public-reviews_write" }] %>

### Reply to host review

Replies to a given host review

~~~
POST /host_reviews/:host_review_d/review_replies
~~~

<%= render 'json_response', endpoint: "review_replies", request: "create",
  scopes: [{ reviews_write: "public-reviews_write" }] %>
