# Photos

1. TOC
{:toc}

## List photos

Required OAuth scope: `:public`

List all photos for given account(s).

~~~
GET /photos
~~~

Response:

<%= json_response 'photos/index' %>

## Get a single photo

Required OAuth scope: `:public`

Returns a single photo identified by ID.

~~~
GET /photos/ID
~~~

Response:

<%= json_response 'photos/index' %>

## Create a new photo

Required OAuth scope: `:rentals_write`

Returns a newly created photo.

~~~~
POST /photos
~~~~

Name             | Type    | Description
-----------------|---------|------------
photo            | File    | **Required**. Photo's image.
description      | String  | Photo's description.
kind             | String  | Photo's kind, list of kinds described in [enum section](/reference/enums).
position         | Integer | Photo's position.
{: class="table table-bordered"}

Response:

<%= json_response 'photos/index' %>

## Update a photo

Required OAuth scope: `:rentals_write`

Returns an updated photo identified by ID.

~~~
PUT /photos/ID
~~~

Name             | Type    | Description
-----------------|---------|------------
photo            | File    | **Required**. Photo's image.
description      | String  | Photo's description.
kind             | String  | Photo's kind, list of kinds described in [enum section](/reference/enums).
position         | Integer | Photo's position.
{: class="table table-bordered"}

Response:

<%= json_response 'photos/index' %>

## Destroy a photo

Required OAuth scope: `:rentals_write`

Returns an empty Array on success.

~~~~~~
DELETE /photos/ID
~~~~~~

