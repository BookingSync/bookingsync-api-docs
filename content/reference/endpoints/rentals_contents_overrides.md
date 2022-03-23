# Rentals Contents Overrides

1. TOC
{:toc}

## Overview

This resource represents the Rental Content Overrides which allow different channels (other [Applications](/reference/endpoints/applications/).) to have customized content for fields like `headline`, `summary`, `description`, which also allows to bypass the length validation that is normally applied for these fields in [Rentals](/reference/endpoints/rentals/) endpoint.

Note: An Application needs to be configured in a way that content overrides are permitted. Most likely you will need to reach out to us and ask for this feature to be enabled for your Application or if you want to customize the maximum length for the overridable fields. 

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
account          | Integer  | Read       | Account's ID related to the Rentals Contents Override
application      | Integer  | Read       | Application's ID related to the Rentals Contents Override
rental           | Integer  | Read       | Rental's ID related to the Rentals Contents Override
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Contents Override's ID.
description      | [Object](/reference/enums#formats) | Read       | Description override for related application, list of locales described in [enums section](/reference/enums#locales).
headline         | [Object](/reference/enums#formats) | Read       | Headline override for related application, list of locales described in [enums section](/reference/enums#locales).
summary          | [Object](/reference/enums#formats) | Read       | Summary override for related application, list of locales described in [enums section](/reference/enums#locales).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer  | Read       | Account's ID related to the Rentals Contents Override |
application      | Integer  | Read       | Application's ID related to the Rentals Contents Override |
rental           | Integer  | Read       | Rental's ID related to the Rentals Contents Override |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Rentals Contents Override's ID. |
application_id   | Integer | Write      | Application's Id related to the Rentals Contents Override. | **Required** on create
rental_id        | Integer | Write      | Rental's ID related to the Rentals Contents Override. | **Required** on create
description      | [Object](/reference/enums#formats) | Read/Write | Description override for related application, list of locales described in [enums section](/reference/enums#locales). | Maximum length: 10 000 (unless customized)
headline         | [Object](/reference/enums#formats) | Read/Write | Headline override for related application, list of locales described in [enums section](/reference/enums#locales). | Maximum length: 75 (unless customized)
summary          | [Object](/reference/enums#formats) | Read/Write | Summary override for related application, list of locales described in [enums section](/reference/enums#locales). | Maximum length: 150 (unless customized)
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Contents Override's update time. |
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
