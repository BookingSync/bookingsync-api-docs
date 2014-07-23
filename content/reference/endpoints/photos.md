# Photos

1. TOC
{:toc}

## List photos

List all photos for given account(s).

~~~
GET /photos
~~~

<%= render 'json_response', endpoint: "photos",
  scopes: [{public: "public-rentals_write"}] %>

## Get a single photo

Returns a single photo identified by ID.

~~~
GET /photos/:photo_id
~~~

<%= render 'json_response', endpoint: "photos",
  scopes: [{public: "public-rentals_write"}] %>

## Create a new photo

Creates a photo for given rental.

~~~~
POST /rentals/:rental_id/photos
~~~~

Name             | Type    | Description
-----------------|---------|------------
photo            | File    | **Required**. Photo's image.
description      | String  | Photo's description.
kind             | String  | Photo's kind, list of kinds described in [enum section](/reference/enums/#photo-kinds).
position         | Integer | Photo's position.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "photos",
  scopes: [{rentals_write: "public-rentals_write"}] %>

## Update a photo

Returns an updated photo identified by ID.

~~~
PUT /photos/:photo_id
~~~

Name             | Type    | Description
-----------------|---------|------------
photo            | File    | **Required**. Photo's image.
description      | String  | Photo's description.
kind             | String  | Photo's kind, list of kinds described in [enum section](/reference/enums/#photo-kinds).
position         | Integer | Photo's position.
{: class="table table-bordered"}

<%= render 'json_response', endpoint: "photos",
  scopes: [{rentals_write: "public-rentals_write"}] %>

## Destroy a photo

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /photos/:photo_id
~~~~~~
