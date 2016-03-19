# Bookings Fees

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
id               | Integer | Read       | Bookings Fee's id.
-----------------|---------|------------|------------
included_in_price| Boolean | Read       | Fee price already included in bookings price if set to true.
name             | [Object](/reference/enums#formats)| Read       | Bookings Fee's name, list of locales described in [enums section](/reference/enums#locales).
price            | [Decimal](/reference/enums#formats)  | Read       | Bookings Fee's price.
required         | Boolean | Read       | Always included for new bookings if set to true.
times_booked     | Integer | Read       | Bookings Fee's times booked count.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Bookings Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Bookings Fee's update time.
{: class="table table-bordered"}
  </div>
</div>

## List bookings fees

List all bookings fees for given account(s).

~~~
GET /bookings_fees
~~~

<%= render 'json_response', endpoint: "bookings_fees", scopes: %w(public) %>

## Get a single bookings fee

Returns a single bookings fee identified by ID.

~~~
GET /bookings_fees/:bookings_fee_id
~~~

<%= render 'json_response', endpoint: "bookings_fees", scopes: %w(public) %>
