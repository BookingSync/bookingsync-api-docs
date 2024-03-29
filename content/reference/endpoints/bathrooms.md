# Bathrooms

1. TOC
   {:toc}

## Overview

This resource represents the rental's bathrooms. This resource is mostly static information used for presentational purposes.

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
account             | Integer | Read       | Account's ID related to the Bathroom
rental              | Integer | Read       | Rental's ID related to the Bathroom
--------------------|---------|------------|------------
id                  | Integer | Read       | Bathroom's id.
name                | [Object](/reference/enums#formats)| Read       | Bathroom's name, list of locales described in [enums section](/reference/enums#locales).
bath_count          | Integer | Read       | Bathroom's number of baths.
shower_count        | Integer | Read       | Bathroom's number of showers.
wc_count            | Integer | Read       | Bathroom's number of wc's.
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read        | Bathroom's create time.
updated_at          | [Time](/reference/enums#formats) | Read        | Bathroom's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                | Type    | Read/Write | Description | Constraints
--------------------|---------|------------|------------ |
account             | Integer | Read       | Account's ID related to the Bathroom |
rental              | Integer | Read       | Rental's ID related to the Bathroom |
--------------------|---------|------------|------------|
id                  | Integer | Read       | Bathroom's id. |
name                | [Object](/reference/enums#formats)| Read | Bathroom's name, list of locales described in [enums section](/reference/enums#locales).
name_*locale*        | String  | Write     |  Bathroom's name, used in write operations. Replace the `locale` with one of the  locales described in [enums section](/reference/enums#locales) (e.g. `name_en`). Multiple of these attributes could be passed in the same operation, as long as they each have a unique locale (e.g `name_en` and `name_fr`) | **Required** for Account's default locale, maximum length: 25
bath_count          | Integer | Read/Write | Bathroom's number of baths.   | integer only, greater than or equal to: 0
shower_count        | Integer | Read/Write | Bathroom's number of showers. | integer only, greater than or equal to: 0
wc_count            | Integer | Read/Write | Bathroom's number of wc's.    | integer only, greater than or equal to: 0
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read       | Bathroom's create time.
updated_at          | [Time](/reference/enums#formats) | Read       | Bathroom's update time.
{: class="table table-bordered"}
  </div>
</div>

## List bathrooms

List all bathrooms for a given account.

```
GET /bathrooms
```

<%= render 'json_response', endpoint: "bathrooms",
scopes: [{ public: "public-rentals_write" }] %>

## Get a single bathroom

Returns a single bathroom identified by ID.

```
GET /bathrooms/:bathroom_id
```

<%= render 'json_response', endpoint: "bathrooms",
scopes: [{ public: "public-rentals_write" }] %>

## Create a new bathroom

Creates a bathroom for given rental.

```
POST /rentals/:rental_id/bathrooms
```

<%= render 'json_response', endpoint: "bathrooms", request: "create",
scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a bathroom

Returns an updated bathroom identified by ID.

```
PUT /bathrooms/:bathroom_id
```

<%= render 'json_response', endpoint: "bathrooms", request: "update",
scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a bathroom

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

```
DELETE /bathrooms/:bathroom_id
```
