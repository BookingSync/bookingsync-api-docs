# Rental URLs

1. TOC
{:toc}

## Overview

This resource represents Rental URLs which are the URLs under where [Rentals](/reference/endpoints/rentals/) are available on the channels' websites.

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
account            | Integer | Read       | Account's ID related to the Rental link
rental             | Integer | Read       | Rental's ID related to the Rental link
-------------------|---------|------------|------------
id                 | Integer | Read       | Rental URL's ID.
label              | String  | Read       | Rental URL's label - usually represents the channel's or application's name.
url                | String  | Read       | The URL where the Rental is available on the channel's website.
lock               | Object  | Read       | Lock shows what's editable/not-editable (representing ownership status).
-------------------|---------|------------|------------
canceled_at        | [Time](/reference/enums#formats) | Read       | Time of soft delete.
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time.
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time.
{: class="table table-bordered"}
</div>
<div class="tab-pane" id="rentals_write" markdown="1">
Name               | Type    | Read/Write | Description | Constraints
-------------------|---------|------------|-------------|
account            | Integer | Read       | Account's ID related to the Rental link |
rental             | Integer | Read       | Rental's ID related to the Rental link |
-------------------|---------|------------|-------------|
id                 | Integer | Read       | Rental URL's ID. |
label              | String  | Read/Write | Rental URL's label - usually represents the channel's or application's name. |
url                | String  | Read/Write | The URL where the Rental is available on the channel's website. |
lock               | Object  | Read       | Lock shows what's editable/not-editable (representing ownership status). |
locked             | Boolean | Write      | Setting locked to `true` means that other apps won't be able to modify this Rental URL (your application will be granted exclusivity for managing this resource). |
-------------------|---------|------------|-------------|
created_at         | [Time](/reference/enums#formats) | Read       | Photo's create time. | 
updated_at         | [Time](/reference/enums#formats) | Read       | Photo's update time. |
{: class="table table-bordered"}
</div>
</div>

## List Rental URLs

List all Rental URLs for a given account(s).

~~~
GET /rental_urls
~~~

<%= render 'json_response', endpoint: "rental_urls", scopes: [{ public: "public-rentals_write" }] %>

## Get a single Rental URL

Returns a single Rental URL identified by ID.

~~~
GET /rental_urls/:rental_url_id
~~~

<%= render 'json_response', endpoint: "rental_urls", scopes: [{ public: "public-rentals_write" }] %>

## Create a new Rental URL

Returns a newly created Rental URL for given rental.

~~~~
POST /rentals/:rental_id/rental_urls
~~~~

<%= render 'json_response', endpoint: "rental_urls", request: "create",
  scopes: [{ rentals_write: "rentals_write" }] %>

## Update a Rental URL

Returns an updated Rental URL identified by ID.

~~~
PUT /rental_urls/:rental_url_id
~~~

<%= render 'json_response', endpoint: "rental_urls", request: "update",
  scopes: [{ rentals_write: "rentals_write" }] %>

## Destroy a Rental URL

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rental_urls/:rental_url_id
~~~~~~
