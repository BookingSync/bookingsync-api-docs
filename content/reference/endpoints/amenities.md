# Amenities

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Amenity's id.
-----------------|---------|------------|------------
key              | String  | Read       | Amenity's key.
title            | [Object](/reference/enums#formats)| Read       | Amenity's title, list of locales described in [enums section](/reference/enums#locales).
{: class="table table-bordered"}
  </div>
</div>

## List amenities

List all amenities for a given account(s). Amenities can repeat because each
rental has it's own set of amenities.

~~~
GET /amenities
~~~

<%= render 'json_response', endpoint: "amenities", scopes: %w(public) %>

## Get a single amenity

Returns a single amenity identified by ID.

~~~
GET /amenities/:amenity_id
~~~

<%= render 'json_response', endpoint: "amenities", scopes: %w(public) %>
