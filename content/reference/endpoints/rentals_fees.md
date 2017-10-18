# Rentals Fees

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Fee's id.
-----------------|---------|------------|------------
always_applied   | Boolean | Read       | Available to all seasons and periods if set to true.
maximum_bookable | Integer | Read       | Rentals Fee's maximum booked count.
name             | [Object](/reference/enums#formats)   | Read       | Rentals Fee's name, list of locales described in [enums section](/reference/enums#locales).
public           | Boolean | Read       | Publicly bookable by client if set to true.
rate             | [Decimal](/reference/enums#formats)  | Read       | Rentals Fee's rate.
rate_kind        | String  | Read       | Rentals Fee's rate kind, list of fee's rate kinds described in [enums section](/reference/enums#fee-rate-kinds).
required         | Boolean | Read       | Always included for new bookings, also public if set to true.
-----------------|---------|------------|------------
archived_at      | [Time](/reference/enums#formats) | Read       | Rentals Fee's archive time.
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Fee's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Rentals Fee's start date.
end_date         | [Date](/reference/enums#formats) | Read       | Rentals Fee's end date.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rentals Fee's id.
fee_id           | Integer | Write      | Fee id related to the Rentals Fee.
season_ids       | Array   | Write      | Season ids related to the Rentals Fee.
-----------------|---------|------------|------------
always_applied   | Boolean | Read/Write | Available to all seasons and periods if set to true.
maximum_bookable | Integer | Read/Write | Rentals Fee's maximum booked count.
name             | [Object](/reference/enums#formats)   | Read       | Rentals Fee's name, list of locales described in [enums section](/reference/enums#locales).
public           | Boolean | Read       | Publicly bookable by client if set to true.
rate             | [Decimal](/reference/enums#formats)  | Read       | Rentals Fee's rate.
rate_kind        | String  | Read       | Rentals Fee's rate kind, list of fee's rate kinds described in [enums section](/reference/enums#fee-rate-kinds).
required         | Boolean | Read       | Always included for new bookings, also public if set to true.
status           | Boolean | Write      | Possible values are `public`, `required` or `private`.
-----------------|---------|------------|------------
archived_at      | [Time](/reference/enums#formats) | Read       | Rentals Fee's archive time.
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Fee's update time.
start_date       | [Date](/reference/enums#formats) | Read/Write | Rentals Fee's start date.
end_date         | [Date](/reference/enums#formats) | Read/Write | Rentals Fee's end date.
{: class="table table-bordered"}
  </div>
</div>

## List rentals fees

List all rentals fees for a given account(s).

~~~
GET /rentals_fees
~~~

<%= render 'json_response', endpoint: "rentals_fees", scopes: [{ public: "public-rentals_write" }] %>

## Get a single rentals fee

Returns a single rentals fee identified by ID.

~~~
GET /rentals_fees/:rentals_fee_id
~~~

<%= render 'json_response', endpoint: "rentals_fees", scopes: [{ public: "public-rentals_write" }] %>

## Create a new rentals fee

Creates a rentals fee for given rental.

~~~
POST /rentals/:rental_id/rentals_fees
~~~

<%= render 'json_response', endpoint: "rentals_fees", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a rentals fee

Returns an updated rentals fee identified by ID.

~~~
PUT /rentals_fees/:rentals_fee_id
~~~

<%= render 'json_response', endpoint: "rentals_fees", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Archive a rentals fee

Required OAuth scope: `:rentals_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rentals_fees/:rentals_fee_id
~~~~~~
