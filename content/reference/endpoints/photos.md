# Photos

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

Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
id                 | Integer | Read       | Photo's id.
-------------------|---------|------------|------------
description        | [Object](/reference/enums#formats)    | Read       | Photo's description, list of locales described in [enums section](/reference/enums#locales).
kind               | String  | Read       | Photo's kind, list of kinds described in [enum section](/reference/enums/#photo-kinds).
large_url          | String  | Read       | Photo's large size url.
micro_url          | String  | Read       | Photo's micro size url.
normal_url         | String  | Read       | Photo's normal size url.
position           | Integer | Read       | Photo's position on the rental list.
thumb_url          | String  | Read       | Photo's thumb size url.
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time.
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
### Parameters

Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
id                 | Integer | Read       | Photo's id.
-------------------|---------|------------|------------
description        | [Object](/reference/enums#formats)    | Read/Write | Photo's description, list of locales described in [enums section](/reference/enums#locales). (80 characters max)
kind               | String  | Read/Write | Photo's kind, list of kinds described in [enum section](/reference/enums/#photo-kinds).
large_url          | String  | Read       | Photo's large size url.
micro_url          | String  | Read       | Photo's micro size url.
normal_url         | String  | Read       | Photo's normal size url.
photo              | File    | Write      | **Required**. Photo's image.
position           | Integer | Read/Write | Photo's position on the rental list.
remote_photo_url   | String  | Write      | Photo's remote url.
thumb_url          | String  | Read       | Photo's thumb size url.
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time.
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time.
{: class="table table-bordered"}
  </div>
</div>

## List photos

List all photos for given account(s).

~~~
GET /photos
~~~

<%= render 'json_response', endpoint: "photos", scopes: [{ public: "public-rentals_write" }] %>

## Get a single photo

Returns a single photo identified by ID.

~~~
GET /photos/:photo_id
~~~

<%= render 'json_response', endpoint: "photos", scopes: [{ public: "public-rentals_write" }] %>

## Create a new photo

Creates a photo for given rental.

~~~~
POST /rentals/:rental_id/photos
~~~~

<%= render 'json_response', endpoint: "photos", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a photo

Returns an updated photo identified by ID.

~~~
PUT /photos/:photo_id
~~~

<%= render 'json_response', endpoint: "photos", request: "request",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a photo

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /photos/:photo_id
~~~~~~
