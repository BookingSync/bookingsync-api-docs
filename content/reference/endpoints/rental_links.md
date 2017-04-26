# Rental Links

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
id                 | Integer | Read       | Rental link's id.
-------------------|---------|------------|------------
kind               | String | Read        | Rental link's kind, list of rental link's rate kinds described in [enums section](/reference/enums#rental-link-kinds).
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read         | Rental link's create time.
updated_at         | [Time](/reference/enums#formats) | Read         | Rental link's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rental links

List all rental link for given account(s).

~~~
GET /rental_links
~~~

<%= render 'json_response', endpoint: "rental_links", scopes: %w(public) %>

## Get a single rental link

Returns a single rental link identified by ID.

~~~
GET /rental_links/:rental_link_id
~~~

<%= render 'json_response', endpoint: "rental_links", scopes: %w(public) %>
