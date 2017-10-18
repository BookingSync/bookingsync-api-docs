# Rentals Contents Overrides
Rental content overrides endpoint was made so that different channels could have different length validations for our fields like `headline, summary, description`.
By using those objects clients applications can use full available length at each channel.

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#rentals_read" role="tab" data-toggle="pill">rentals_read</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rentals_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Contents Override's id.
-----------------|---------|------------|------------
description      | [Object](/reference/enums#formats) | Read       | Description override for related application, list of locales described in [enums section](/reference/enums#locales).
headline         | [Object](/reference/enums#formats) | Read       | Headline override for related application, list of locales described in [enums section](/reference/enums#locales).
summary          | [Object](/reference/enums#formats) | Read       | Summary override for related application, list of locales described in [enums section](/reference/enums#locales).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Contents Override's id.
application_id   | Integer | Write      | Application id related to the Rentals Contents Override.
rental_id        | Integer | Write      | Rental id related to the Rentals Contents Override.
-----------------|---------|------------|------------
description      | [Object](/reference/enums#formats) | Read/Write | Description override for related application, list of locales described in [enums section](/reference/enums#locales).
headline         | [Object](/reference/enums#formats) | Read/Write | Headline override for related application, list of locales described in [enums section](/reference/enums#locales).
summary          | [Object](/reference/enums#formats) | Read/Write | Summary override for related application, list of locales described in [enums section](/reference/enums#locales).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rentals contents overrides

List all rentals contents overrides for a given account(s).

~~~
GET /rentals_contents_overrides
~~~

<%= render 'json_response', endpoint: "rentals_contents_overrides",
  scopes: %w(rentals_read-rentals_write) %>

## Get a single rentals content override

Returns a single rentals content override identified by ID.

~~~
GET /rentals_contents_overrides/:rentals_content_override_id
~~~

<%= render 'json_response', endpoint: "rentals_contents_overrides",
  scopes: %w(rentals_read-rentals_write) %>

## Create a new rentals content override

Creates a rentals content override for given rental.

~~~
POST /rentals_contents_overrides
~~~

<%= render 'json_response', endpoint: "rentals_contents_overrides", request: "create",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

## Update a rentals content override

Returns an updated rentals content override identified by ID.

~~~
PUT /rentals_contents_overrides/:rentals_content_override_id
~~~

<%= render 'json_response', endpoint: "rentals_contents_overrides", request: "update",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

## Destroy a rentals content override

Required OAuth scope: `:rentals_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rentals_contents_overrides/:rentals_content_override_id
~~~~~~
