# Bedrooms

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
Name                | Type    | Read/Write | Description
--------------------|---------|------------|------------
id                  | Integer | Read       | Bedroom's id.
--------------------|---------|------------|------------
name                | [Object](/reference/enums#formats)| Read       | Bedroom's name, list of locales described in [enums section](/reference/enums#locales).
bunk_beds_count     | Integer | Read       | Bedroom's number of bunk beds.
double_beds_count   | Integer | Read       | Bedroom's number of double beds.
kingsize_beds_count | Integer | Read       | Bedroom's number of kingsize beds.
queensize_beds_count| Integer | Read       | Bedroom's number of queensize beds.
single_beds_count   | Integer | Read       | Bedroom's number of single beds.
sofa_beds_count     | Integer | Read       | Bedroom's number of sofa beds.
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Bedroom's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Bedroom's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                | Type    | Read/Write | Description
--------------------|---------|------------|------------
id                  | Integer | Read       | Bedroom's id.
--------------------|---------|------------|------------
name                | [Object](/reference/enums#formats)| Read/Write | **Required**. Bedroom's name, list of locales described in [enums section](/reference/enums#locales).
bunk_beds_count     | Integer | Read/Write | Bedroom's number of bunk beds.
double_beds_count   | Integer | Read/Write | Bedroom's number of double beds.
kingsize_beds_count | Integer | Read/Write | Bedroom's number of kingsize beds.
queensize_beds_count| Integer | Read/Write | Bedroom's number of queensize beds.
single_beds_count   | Integer | Read/Write | Bedroom's number of single beds.
sofa_beds_count     | Integer | Read/Write | Bedroom's number of sofa beds.
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Bedroom's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Bedroom's update time.
{: class="table table-bordered"}
  </div>
</div>

## List bedrooms

List all bedrooms for given account.

~~~
GET /bedrooms
~~~

<%= render 'json_response', endpoint: "bedrooms",
  scopes: [{ public: "public-rentals_write" }] %>

## Get a single bedroom

Returns a single bedroom identified by ID.

~~~
GET /bedrooms/:bedroom_id
~~~

<%= render 'json_response', endpoint: "bedrooms",
  scopes: [{ public: "public-rentals_write" }] %>

## Create a new bedroom

Creates a bedroom for given rental.

~~~
POST /rentals/:rental_id/bedrooms
~~~

<%= render 'json_response', endpoint: "bedrooms", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a bedroom

Returns an updated bedroom identified by ID.

~~~
PUT /bedrooms/:bedroom_id
~~~

<%= render 'json_response', endpoint: "bedrooms", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a bedroom

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /bedrooms/:bedroom_id
~~~~~~
