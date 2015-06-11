# Bookings Taxes

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
id               | Integer | Read       | Bookings Tax's id.
-----------------|---------|------------|------------
amount           | [Decimal](/reference/enums#formats)  | Read       | Bookings Tax's amount.
name             | [Object](/reference/enums#formats)   | Read       | Bookings Tax's name, list of locales described in [enums section](/reference/enums#locales).
percentage       | [Decimal](/reference/enums#formats)  | Read       | Bookings Tax's percentage.
tax_included_in_price | Boolean | Read       | Tax amount already included in taxable(Rental or Bookings Fee) price if set to true.
{: class="table table-bordered"}
  </div>
</div>

## List bookings taxes

List all bookings taxes for given account(s).

~~~
GET /bookings_taxes
~~~

<%= render 'json_response', endpoint: "bookings_taxes", scopes: %w(public) %>

## Get a single bookings tax

Returns a single bookings tax identified by ID.

~~~
GET /bookings_taxes/:bookings_tax_id
~~~

<%= render 'json_response', endpoint: "bookings_taxes", scopes: %w(public) %>
