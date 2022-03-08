# Photos

1. TOC
{:toc}

## Overview

This resource represents Photos belonging to [Rentals](/reference/endpoints/rentals/) used for presentational purposes.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
account            | Integer | Read       | Account's ID related to the Photo 
rental             | Integer | Read       | Rental's ID related to the Photo 
-------------------|---------|------------|------------
id                 | Integer | Read       | Photo's ID.
compact_url        | String  | Read       | Photo's compact size (384x256) url.
description        | [Object](/reference/enums#formats)    | Read       | Photo's description, list of locales described in [enums section](/reference/enums#locales).
giant_url          | String  | Read       | Photo's giant size (2400x1600) url.
grande_url         | String  | Read       | Photo's grande size (1536x1024) url.
height             | Integer | Read       | Photo's height in pixels.
kind               | String  | Read       | Photo's kind, list of kinds described in [enum section](/reference/enums/#photo-kinds).
large_url          | String  | Read       | Photo's large size (1200x800) url.
medium_url         | String  | Read       | Photo's medium size (768x512) url.
micro_url          | String  | Read       | Photo's micro size (48x32) url.
position           | Integer | Read       | Photo's position on the rental list.
ratio              | [Decimal](/reference/enums#formats)   | Read       | Photo's width to height ratio.
small_url          | String  | Read       | Photo's small size (192x128) url.
thumb_url          | String  | Read       | Photo's thumb size (96x64) url.
width              | Integer | Read       | Photo's width in pixels.
size_in_bytes      | Integer | Read       | Photo's size in bytes
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time.
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name               | Type    | Read/Write | Description | Constraints
-------------------|---------|------------|-------------|
account            | Integer | Read       | Account's ID related to the Photo |
rental             | Integer | Read       | Rental's ID related to the Photo | 
-------------------|---------|------------|-------------|
id                 | Integer | Read       | Photo's ID. | 
compact_url        | String  | Read       |  Photo's compact size (384x256) url. | 
description        | [Object](/reference/enums#formats)    | Read/Write | Photo's description, list of locales described in [enums section](/reference/enums#locales) | Maximum length: 80
giant_url          | String  | Read       | Photo's giant size (2400x1600) url. | 
grande_url         | String  | Read       | Photo's grande size (1536x1024) url. | 
height             | Integer | Read       | Photo's height in pixels. | 
kind               | String  | Read/Write | Photo's kind, list of kinds described in [enum section](/reference/enums/#photo-kinds). | 
large_url          | String  | Read       | Photo's large size (1200x800) url | 
medium_url         | String  | Read       | Photo's medium size (768x512) url. | 
micro_url          | String  | Read       | Photo's micro size (48x32) url. | 
photo              | File    | Write      | Photo's image. | `photo` or  `remote_photo_url` - one of these is **required** | 
position           | Integer | Read/Write | Photo's position on the rental list. | 
ratio              | [Decimal](/reference/enums#formats)   | Read       | Photo's width to height ratio.
remote_photo_url   | String  | Write      | **Required**. Photo's remote url | `photo` or  `remote_photo_url` - one of these is **required**, must be a valid URL
small_url          | String  | Read       | Photo's small size (192x128) url.
thumb_url          | String  | Read       | Photo's thumb size (96x64) url.
width              | Integer | Read       | Photo's width in pixels.
size_in_bytes      | Integer | Read       | Photo's size in bytes
-------------------|---------|------------|-------------|
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time. |
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List photos

List all photos for a given account(s).

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

<div class="callout callout-info">
  <h4>Translated attributes</h4>
  <p>Please note that translated attributes are updated differenly than you read them.<br>
  To set the English description, locale <code>en</code>, you need to use the <code>description_en</code> attribute.</p>
  <p>List of locales described in <a href="/reference/enums#locales">enums section</a>.</p>
</div>

Returns a newly created photo for given rental.

~~~~
POST /rentals/:rental_id/photos
~~~~

<%= render 'json_response', endpoint: "photos", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a photo

<div class="callout callout-info">
  <h4>Translated attributes</h4>
  <p>Please note that translated attributes are updated differenly than you read them.<br>
  To set the English description, locale <code>en</code>, you need to use the <code>description_en</code> attribute.</p>
  <p>List of locales described in <a href="/reference/enums#locales">enums section</a>.</p>
</div>

Returns an updated photo identified by ID.

~~~
PUT /photos/:photo_id
~~~

<%= render 'json_response', endpoint: "photos", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a photo

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /photos/:photo_id
~~~~~~
