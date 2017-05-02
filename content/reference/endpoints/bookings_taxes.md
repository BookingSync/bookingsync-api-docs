# Bookings Taxes

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#bookings_read-bookings_write-bookings_write_owned" role="tab" data-toggle="pill">bookings_read/bookings_write/bookings_write_owned</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="bookings_read-bookings_write-bookings_write_owned" markdown="1">
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

Based on the OAuth token scopes bookings taxes will be limited to a
certain range.

Scope                    | Read Permissions
-------------------------|------------
`:bookings_write_owned`  | Display only bookings taxes for bookings created by app making the request
`:bookings_read`         | Display all bookings taxes
`:bookings_write`        | Display all bookings taxes
{: class="table table-bordered"}

List all bookings taxes for current account(s).

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
