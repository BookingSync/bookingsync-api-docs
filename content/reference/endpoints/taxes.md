# Taxes

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rates_read" role="tab" data-toggle="pill">rates_write</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
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
created_at       | [Time](/reference/enums#formats) | Read       | Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Tax's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Beginning of the period when the tax is applicable.
end_date         | [Date](/reference/enums#formats) | Read       | Ending of the period when the tax is applicable.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Tax's id.
-----------------|---------|------------|------------
name             | [Object](/reference/enums#formats)   | Read       | Tax's name, list of locales described in [enums section](/reference/enums#locales).
notes            | String  | Read       | Tax's private notes.
percentage       | [Decimal](/reference/enums#formats)  | Read       | Tax's percentage.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Tax's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Beginning of the period when the tax is applicable.
end_date         | [Date](/reference/enums#formats) | Read       | Ending of the period when the tax is applicable.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Tax's id.
-----------------|---------|------------|------------
name             | [Object](/reference/enums#formats)   | Read/Write | Tax's name, list of locales described in [enums section](/reference/enums#locales).
notes            | String  | Read/Write | Tax's private notes.
percentage       | [Decimal](/reference/enums#formats)  | Read/Write | Tax's percentage.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Tax's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Tax's update time.
start_date       | [Date](/reference/enums#formats) | Read/Write | Beginning of the period when the tax is applicable.
end_date         | [Date](/reference/enums#formats) | Read/Write | Ending of the period when the tax is applicable.
{: class="table table-bordered"}
  </div>
</div>

## List taxes

List all taxes for given account(s).

~~~
GET /taxes
~~~

<%= render 'json_response', endpoint: "taxes", scopes: %w(public rates_read-rates_write) %>

## Get a single tax

Returns a single tax identified by ID.

~~~
GET /taxes/:tax_id
~~~

<%= render 'json_response', endpoint: "taxes", scopes: %w(public rates_read-rates_write) %>

## Create a new tax

Returns a newly created tax.

~~~
POST /taxes
~~~

<%= render 'json_response', endpoint: "taxes", request: "create",
  scopes: [{ rates_write: "rates_read-rates_write" }] %>
