# Rentals tags

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">rentals_read</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rentals_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Tag's id.
-----------------|---------|------------|------------
name             | [Object](/reference/enums#formats)| Read       | Rentals Tag's title, list of locales described in [enums section](/reference/enums#locales).
logo             | String  | Read       | Rentals Tag's logo (Font Awesome class).
color            | String  | Read       | Rentals Tag's color (hex).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Tag's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Tag's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rentals tags

List all rentals tags for given account.

~~~
GET /rentals_tags
~~~

<%= render 'json_response', endpoint: "rentals_tags",
  scopes: [{ public: "rentals_read" }] %>

## Get a single rentals tag

Returns a single rentals tag identified by ID.

~~~
GET /rentals_tags/:rentals_tag_id
~~~

<%= render 'json_response', endpoint: "rentals_tags",
  scopes: [{ public: "rentals_read" }] %>
