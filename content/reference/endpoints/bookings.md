# Bookings

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#bookings_write_owned" role="tab" data-toggle="pill">bookings_write_owned</a></li>
  <li><a href="#bookings_read" role="tab" data-toggle="pill">bookings_read</a></li>
  <li><a href="#bookings_write" role="tab" data-toggle="pill">bookings_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
------------------------|---------|------------|------------
reference               | String  | Read       | Booking's reference code.
------------------------|---------|------------|------------
status                  | String  | Read       | Booking's status.
------------------------|---------|------------|------------
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read       | Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read       | Booking's end time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write_owned" markdown="1">
Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
client_id               | Integer | Write      | Client id related to the Booking.
source_id               | Integer | Write      | Source id related to the Booking.
bookings_tag_ids        | Array   | Write      | Array of bookings_tags ids associated with Booking.
------------------------|---------|------------|------------
adults                  | Integer | Write      | Booking's number of adults.
booked                  | Boolean | Write      | Booking's booked status, false by default. When set to true, marks a regular booking.
channel_price           | Integer | Write      | Price accepted by the traveler on the channel site, excluding traveler's fees (eg: Airbnb).
charge_damage_deposit_on_arrival  | Boolean    | Write | Defines if charge damage deposite will be charged on arrival.
children                | Integer | Write      | Booking's number of children.
comission               | [Decimal](/reference/enums#formats) | Write | Booking's comission fee.
currency                | String  | Write      | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
damage_deposit          | [Decimal](/reference/enums#formats) | Write | Booking's damage deposit.
discount                | String  | Write      | Booking's discount. (in percents e.g. 10%)
door_key_code           | String  | Write      | Booking's rental door key code.
downpayment             | [Decimal](/reference/enums#formats) | Write | Booking's downpayment.
expected_checkin_time   | String  | Write      | Expected guest's checkin time.
expected_checkout_time  | String  | Write      | Expected guest's checkout time.
final_payback_to_owner  | [Decimal](/reference/enums#formats) | Write | Final payback to rental owner.
final_price             | [Decimal](/reference/enums#formats) | Write | Booking's final price. (after discount)
initial_price           | [Decimal](/reference/enums#formats) | Write | Booking's initial price.
payment_left_to_collect | [Decimal](/reference/enums#formats) | Read  | Booking's payment left to collect.
locked                  | String  | Write      | Booking's locked status.
notes                   | Text    | Write      | Booking's notes. (1000 characters max)
reference               | String  | Read       | Booking's reference code.
rental_payback_to_owner | [Decimal](/reference/enums#formats) | Write | Amount of money to pay back to owner (only rental, excluding fees).
status                  | String  | Read       | Booking's status.
unavailable             | Boolean | Write      | Booking's unavailable status, false by default. When set to true, marks the given period as unavailable. Commonly used for closed or maintenance periods.
------------------------|---------|------------|------------
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's end time.
canceled_at             | [Time](/reference/enums#formats) | Write | Booking's cancel time.
tentative_expires_at    | [Time](/reference/enums#formats) | Write | Booking's tentative expiry time, null by default. When set, it will mark the period as "on hold" until the given date. Once this date is passed, the period will automatically become available again.
booked_at               | [Time](/reference/enums#formats) | Write      | Exact timestamp when a booking was booked
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_read" markdown="1">
Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
------------------------|---------|------------|------------
adults                  | Integer | Read       | Booking's number of adults.
booked                  | Boolean | Read       | Booking's booked status, false by default. When set to true, marks a regular booking.
bookings_payments_count | Integer | Read       | Booking's number of payments.
channel_price           | Integer | Read       | Price accepted by the traveler on the channel site, excluding traveler's fees (eg: Airbnb).
charge_damage_deposit_on_arrival | Boolean | Read | Defines if charge damage deposite will be charged on arrival.
children                | Integer | Read       | Booking's number of children.
comission               | [Decimal](/reference/enums#formats) | Read | Booking's comission fee.
currency                | String  | Read       | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
damage_deposit          | [Decimal](/reference/enums#formats) | Read | Booking's damage deposit.
discount                | String  | Read       | Booking's discount. (in percents e.g. 10%)
door_key_code           | String  | Read       | Booking's rental door key code.
downpayment             | [Decimal](/reference/enums#formats) | Read       | Booking's downpayment.
expected_checkin_time   | String  | Read       | Expected guest's checkin time.
expected_checkout_time  | String  | Read       | Expected guest's checkout time.
final_payback_to_owner  | [Decimal](/reference/enums#formats) | Read       | Final payback to rental owner.
final_price             | [Decimal](/reference/enums#formats) | Read       | Booking's final price. (after discount)
final_rental_price      | [Decimal](/reference/enums#formats) | Read       | initial_rental_price reduced by discount (taxes and fees not included).
initial_price           | [Decimal](/reference/enums#formats) | Read       | Booking's initial price.
initial_rental_price    | [Decimal](/reference/enums#formats) | Read       | An alias for initial_price
payment_left_to_collect | [Decimal](/reference/enums#formats) | Read       | Booking's payment left to collect.
locked                  | String  | Read       | Booking's locked status.
notes                   | Text    | Read       | Booking's notes.
owned_by_app            | Boolean | Read       | Defines whether booking was created by current app.
paid_amount             | [Decimal](/reference/enums#formats) | Read       | Booking's amount that have already been paid.
payment_url             | String  | Read       | Url for booking's payment.
reference               | String  | Read       | Booking's reference code.
rental_payback_to_owner | [Decimal](/reference/enums#formats) | Read       | Amount of money to pay back to owner (only rental, excluding fees).
review_requests_count   | Integer | Read       | Booking's number of review requests.
status                  | String  | Read       | Booking's status.
unavailable             | Boolean | Read       | Booking's unavailable status, false by default. When set to true, marks the given period as unavailable. Commonly used for closed or maintenance periods.
------------------------|---------|------------|------------
balance_due_at          | [Time](/reference/enums#formats) | Read       | Booking's payment deadline.
created_at              | [Time](/reference/enums#formats) | Read       | Booking's create time.
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read       | Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read       | Booking's end time.
canceled_at             | [Time](/reference/enums#formats) | Read       | Booking's cancel time.
tentative_expires_at    | [Time](/reference/enums#formats) | Read       | Booking's tentative expiry time, null by default. When set, it will mark the period as "on hold" until the given date. Once this date is passed, the period will automatically become available again.
contract_updated_at     | [Time](/reference/enums#formats) | Read       | Booking's contract update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_write" markdown="1">
Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
client_id               | Integer | Write      | Client id related to the Booking.
source_id               | Integer | Write      | Source id related to the Booking.
bookings_tag_ids        | Array   | Write      | Array of bookings_tags ids associated with Booking.
------------------------|---------|------------|------------
adults                  | Integer | Read/Write | Booking's number of adults.
booked                  | Boolean | Read/Write | Booking's booked status, false by default. When set to true, marks a regular booking.
bookings_payments_count | Integer | Read       | Booking's number of payments.
channel_price           | Integer | Read/Write | Price accepted by the traveler on the channel site, excluding traveler's fees (eg: Airbnb).
charge_damage_deposit_on_arrival | Boolean | Read/Write | Defines if charge damage deposite will be charged on arrival.
children                | Integer | Read/Write | Booking's number of children.
comission               | [Decimal](/reference/enums#formats) | Read/Write | Booking's comission fee.
currency                | String  | Read/Write | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
damage_deposit          | [Decimal](/reference/enums#formats) | Read/Write | Booking's damage deposit.
discount                | String  | Read/Write | Booking's discount. (in percents e.g. 10%)
door_key_code           | String  | Read/Write | Booking's rental door key code.
downpayment             | [Decimal](/reference/enums#formats) | Read/Write | Booking's downpayment.
expected_checkin_time   | String  | Read/Write | Expected guest's checkin time.
expected_checkout_time  | String  | Read/Write | Expected guest's checkout time.
final_payback_to_owner  | [Decimal](/reference/enums#formats) | Read/Write | Final payback to rental owner.
final_price             | [Decimal](/reference/enums#formats) | Read/Write | Booking's final price. (after discount)
final_rental_price      | [Decimal](/reference/enums#formats) | Read       | initial_rental_price reduced by discount (taxes and fees not included).
initial_price           | [Decimal](/reference/enums#formats) | Read/Write | Booking's initial price.
initial_rental_price    | [Decimal](/reference/enums#formats) | Read       | An alias for initial_price.
payment_left_to_collect | [Decimal](/reference/enums#formats) | Read       | Booking's payment left to collect.
locked                  | String  | Read/Write | Booking's locked status.
notes                   | Text    | Read/Write | Booking's notes. (1000 characters max)
owned_by_app            | Boolean | Read       | Defines whether booking was created by current app.
paid_amount             | [Decimal](/reference/enums#formats) | Read       | Booking's amount that have already been paid.
payment_url             | String  | Read       | Url for booking's payment.
reference               | String  | Read       | Booking's reference code.
rental_payback_to_owner | [Decimal](/reference/enums#formats) | Read/Write | Amount of money to pay back to owner (only rental, excluding fees).
review_requests_count   | Integer | Read       | Booking's number of review requests.
status                  | String  | Read       | Booking's status.
unavailable             | Boolean | Read/Write | Booking's unavailable status, false by default. When set to true, marks the given period as unavailable. Commonly used for closed or maintenance periods.
------------------------|---------|------------|------------
balance_due_at          | [Time](/reference/enums#formats) | Read       | Booking's payment deadline.
created_at              | [Time](/reference/enums#formats) | Read       | Booking's create time.
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time.
start_at                | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's start time.
end_at                  | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's end time.
canceled_at             | [Time](/reference/enums#formats) | Read/Write | Booking's cancel time.
tentative_expires_at    | [Time](/reference/enums#formats) | Read/Write | Booking's tentative expiry time, null by default. When set, it will mark the period as "on hold" until the given date. Once this date is passed, the period will automatically become available again.
contract_updated_at     | [Time](/reference/enums#formats) | Read       | Booking's contract update time.
booked_at               | [Time](/reference/enums#formats) | Write      | Exact timestamp when a booking was booked
{: class="table table-bordered"}
  </div>
</div>

## List bookings

Based on the OAuth token scopes bookings listing will be limited to a
certain range.

Scope                    | Read Permissions
-------------------------|------------
`:public`                | Display only future, not canceled bookings
`:bookings_write_owned`  | Display only future, not canceled bookings
`:bookings_read`         | Display all bookings
`:bookings_write`        | Display all bookings
{: class="table table-bordered"}

Returns a list of all bookings for current account(s).

<div class="callout callout-info" markdown="1">
  <h4>Returns only future and non-canceled bookings by default</h4>
  By default this endpoint returns only future and non-canceled bookings, if you like to change this behavior, make sure to check the <a href="#search-parameters">search parameters</a>.
</div>

~~~
GET /bookings
~~~

<%= render 'json_response', endpoint: "bookings",
  scopes: %w(public-bookings_write_owned bookings_read-bookings_write) %>

## Search bookings

Search parameters allow to filter bookings by specified fields.

Example:

~~~
GET /bookings?status=booked,unavailable&from=20140324
~~~

### Search Parameters

Name             | Type    | Default | Description
-----------------|---------|--------------
from             | [Time](/reference/enums#formats) | now     | Bookings ending after given time. Default is now.
until            | [Time](/reference/enums#formats) |         | Bookings starting before given time.
months           | Integer |         | Bookings starting before `:from` + `:months`.
status           | String  |         | List of comma separated statuses. Possible values: booked,unavailable,tentative.
include_canceled | Boolean | false   | Show also canceled bookings (requires `:bookings_read` or `:bookings_write` scope).
rental_id        | String  |         | List of comma separated IDs. Returns only bookings for this rental(s)
client_id        | String  |         | List of comma separated IDs. Returns only bookings for this client(s)
updated_since    | [Time](/reference/enums#formats) |         | Bookings updated after given time. Also includes ids of bookings canceled after given time.
{: class="table table-bordered"}

## Get a single booking

Returns a single booking identified by ID

~~~
GET /bookings/:booking_id
~~~

<%= render 'json_response', endpoint: "bookings",
  scopes: %w(public-bookings_write_owned bookings_read-bookings_write) %>

## Create a new booking

<div class="callout callout-info" markdown="1">
  <h4>Status assignment</h4>
  To assign a status to a booking, you have to set either `booked`, `unavailable` or `tentative_expires_at` fields. Only one of those attributes can be used at the same time.
</div>

Creates a booking for given rental.

~~~~
POST /rentals/:rental_id/bookings
~~~~

<%= render 'json_response', endpoint: "bookings", request: "create",
  scopes: [
    { bookings_write_owned: "bookings_read-bookings_write" },
    { bookings_write: "bookings_read-bookings_write" }
  ] %>

<div class="callout callout-info" markdown="1">
  <h4>Comments, Fees and Taxes</h4>
  You can also pass comments, bookings fees and bookings taxes directly during a booking creation using the parameters:  `comments`, `bookings_fees` and `bookings_taxes`.
</div>

<%= render 'json_response', endpoint: "bookings", request: "create_with_comments_fees_and_taxes",
  scopes: [
    { bookings_write: "bookings_read-bookings_write_with_comments_fees_and_taxes" },
    { bookings_write_owned: "bookings_read-bookings_write_with_comments_fees_and_taxes" }
  ] %>

## Update a booking

Returns an updated booking identified by ID.

~~~
PUT /bookings/:booking_id
~~~

<%= render 'json_response', endpoint: "bookings", request: "update",
  scopes: [
    { bookings_write_owned: "public-bookings_write_owned" },
    { bookings_write: "bookings_read-bookings_write" }
  ] %>

## Cancel a booking

Required OAuth scope: `:bookings_write` or `:bookings_write_owned`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /bookings/:booking_id
~~~~~~
