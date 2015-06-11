# Taxes

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
id               | Integer | Read       | Tax's id.
-----------------|---------|------------|------------
name             | [Object](/reference/enums#formats)   | Read       | Tax's name, list of locales described in [enums section](/reference/enums#locales).
percentage       | [Decimal](/reference/enums#formats)  | Read       | Tax's percentage.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Tax's update time.
{: class="table table-bordered"}
  </div>
</div>

## List taxes

List all taxes for given account(s).

~~~
GET /taxes
~~~

<%= render 'json_response', endpoint: "taxes", scopes: %w(public) %>

## Get a single tax

Returns a single tax identified by ID.

~~~
GET /taxes/:tax_id
~~~

<%= render 'json_response', endpoint: "taxes", scopes: %w(public) %>
