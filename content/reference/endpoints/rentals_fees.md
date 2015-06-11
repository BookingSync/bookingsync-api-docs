# Rentals Fees

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
id               | Integer | Read       | Rentals Fee's id.
-----------------|---------|------------|------------
always_applied   | Boolean | Read       | Available to all seasons and periods if set to true.
maximum_bookable | Integer | Read       | Rentals Fee's maximum booked count.
public           | Boolean | Read       | Publicly bookable by client if set to true.
required         | Boolean | Read       | Always included for new bookings, also public if set to true.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Rentals Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Rentals Fee's update time.
start_date       | [Date](/reference/enums#formats) | Read       | Rentals Fee's start date.
end_date         | [Date](/reference/enums#formats) | Read       | Rentals Fee's end date.
{: class="table table-bordered"}
  </div>
</div>

## List rentals fees

List all rentals fees for given account(s).

~~~
GET /rentals_fees
~~~

<%= render 'json_response', endpoint: "rentals_fees", scopes: %w(public) %>

## Get a single rentals fee

Returns a single rentals fee identified by ID.

~~~
GET /rentals_fees/:rentals_fee_id
~~~

<%= render 'json_response', endpoint: "rentals_fees", scopes: %w(public) %>
