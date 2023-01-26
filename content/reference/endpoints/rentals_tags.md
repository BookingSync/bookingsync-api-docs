# Rentals tags

1. TOC
{:toc}

## Overview

This resource represents the Rentals Tags that can be associated with the [Rentals](/reference/endpoints/rentals/).

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
account          | Integer  | Read      | Account's ID related to the Rentals Tag
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Tag's ID.
name             | [Object](/reference/enums#formats)| Read       | Rentals Tag's title, list of locales described in [enums section](/reference/enums#locales).
logo             | String  | Read       | Rentals Tag's logo (Font Awesome class).
color            | String  | Read       | Rentals Tag's color (hex).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Tag's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Tag's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
account          | Integer  | Read      | Account's ID related to the Rentals Tag |
-----------------|---------|------------|-------------|
id               | Integer | Read       | Rentals Tag's ID. |
name             | [Object](/reference/enums#formats)| Read/Write | Rentals Tag's title, list of locales described in [enums section](/reference/enums#locales). | **Required**
logo             | String  | Read/Write | Rentals Tag's logo (Font Awesome class). |
color            | String  | Read/Write | Rentals Tag's color (hex). | **Required**
-----------------|---------|------------|-------------|
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Tag's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Tag's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List rentals tags

List all rentals tags for a given account.

~~~
GET /rentals_tags
~~~

<%= render '/json_response.html', endpoint: "rentals_tags",
  scopes: [{ public: "rentals_read" }] %>

## Get a single rentals tag

Returns a single rentals tag identified by ID.

~~~
GET /rentals_tags/:rentals_tag_id
~~~

<%= render '/json_response.html', endpoint: "rentals_tags",
  scopes: [{ public: "rentals_read" }] %>

## Create new rentals tags

<div class="callout callout-info">
  <h4>Translated attributes</h4>
  <p>Please note that translated attributes are updated differenly than you read them.<br>
  To set the English name, locale <code>en</code>, you need to use the <code>name_en</code> attribute.</p>
  <p>List of locales described in <a href="/reference/enums#locales">enums section</a>.</p>
</div>

Returns the newly created rentals tags.

~~~
POST /rentals_tags
~~~

<%= render '/json_response.html', endpoint: "rentals_tags", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a rentals tag

<div class="callout callout-info">
  <h4>Translated attributes</h4>
  <p>Please note that translated attributes are updated differenly than you read them.<br>
  To set the English name, locale <code>en</code>, you need to use the <code>name_en</code> attribute.</p>
  <p>List of locales described in <a href="/reference/enums#locales">enums section</a>.</p>
</div>

Returns an updated rentals tag identified by ID.

~~~
PUT /rentals_tags/:rentals_tag_id
~~~

<%= render '/json_response.html', endpoint: "rentals_tags", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>
