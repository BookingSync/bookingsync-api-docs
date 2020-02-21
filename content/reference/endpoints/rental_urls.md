# Rental URLs

1. TOC
{:toc}

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
id                 | Integer | Read       | RentalURL's id.
-------------------|---------|------------|------------
label              | String  | Read       | Usually equals the application's name.
url                | String  | Read       | The URL where the rental is visible on the channel's website.
lock               | Object  | Read       | Lock shows what's not editable.
-------------------|---------|------------|------------
canceled_at        | [Time](/reference/enums#formats) | Read       | Time of soft delete.
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time.
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time.
{: class="table table-bordered"}
</div>
<div class="tab-pane" id="rentals_write" markdown="1">
Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
id                 | Integer | Read       | RentalURL's id.
-------------------|---------|------------|------------
label              | String  | Read       | Usually equals the application's name.
url                | String  | Read       | The URL where the rental is visible on the channel's website.
lock               | Object  | Read       | Lock shows what's not editable.
locked             | Boolean | Write      | Setting locked to true means that other apps won't be able to modify this resource.
-------------------|---------|------------|------------
canceled_at        | [Time](/reference/enums#formats) | Read       | Time of soft delete.
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time.
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time.
{: class="table table-bordered"}
</div>
</div>

## List RentalURLs

List all RentalURLs for a given account(s).

~~~
GET /rental_urls
~~~

<%= render 'json_response', endpoint: "rental_urls", scopes: [{ public: "public-rentals_write" }] %>

## Get a single RentalURL

Returns a single RentalURL identified by ID.

~~~
GET /rental_urls/:rental_url_id
~~~

<%= render 'json_response', endpoint: "rental_urls", scopes: [{ public: "public-rentals_write" }] %>

## Create a new RentalURL

Returns a newly created RentalURL for given rental.

~~~~
POST /rentals/:rental_id/rental_urls
~~~~

<%= render 'json_response', endpoint: "rental_urls", request: "create",
  scopes: [{ rentals_write: "rentals_write" }] %>

## Update a RentalURL

Returns an updated RentalURL identified by ID.

~~~
PUT /rental_urls/:rental_url_id
~~~

<%= render 'json_response', endpoint: "rental_urls", request: "update",
  scopes: [{ rentals_write: "rentals_write" }] %>

## Destroy a RentalURL

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rental_urls/:rental_url_id
~~~~~~
