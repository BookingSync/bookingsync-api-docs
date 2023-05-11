# Bookings

1. TOC
{:toc}

This resource represents the Bookings (reservations) occupying the calendar for a given [Rental](/reference/endpoints/rentals/).

Depending on the use case, there are various types of Bookings (determined by `status` attribute):

- Booked - the actual confirmed bookings for a given [Client](/reference/endpoints/clients/).

- Tentative - the bookings that are not confirmed yet. Either these bookings eventually become Booked or they expire (which is determined by `tentative_expires_at` attribute) and are canceled in such such case.

- Unavailable - mostly useful for blocking the calendar (e.g. for a given season)

- Canceled - the bookings that no longer occupy the calendar

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
Name                    | Type    | Read/Write | Description | Constraints
------------------------|---------|------------|------------|
account           | Integer | Read       | Account's ID related to the Booking |
rental            | Integer | Read       | Rental's ID related to the Booking |
client            | Integer | Read       | Client's ID related to the Booking |
rental_agreement  | Integer | Read       | RentalAgreement's ID related to the Bookings Fee |
source            | Integer   | Read     | Source's ID related to the Booking |
inquiry           | Integer   | Read     | Inquiry's ID related to the Booking |
created_by_id     | Integer   | Read     | Created By's ID related to the Booking | (User, Booking or Application - this is a polymorphic association) |
created_by_type   | String   | Read      | Created By's Type related to the Booking | (User, Booking or Application - this is a polymorphic association) |
booking_comments  | Array    | Read      | Array of related Bookings Comments IDs |
booking_fees      | Array    | Read      | Array of related Bookings Fees IDs |
booking_taxes     | Array    | Read      | Array of related Bookings Taxes IDs |
booking_payments  | Array    | Read      | Array of related Bookings Payments IDs |
conversations     | Array    | Read      | Array of related Inbox Conversation IDs |
payments          | Array    | Read      | Array of related Payments IDs |
rentals_tags      | Array    | Read      | Array of related Rentals Tags IDs |
bookings_tags     | Array    | Read      | Array of related Bookings Tags IDs |
------------------------|---------|------------|------------ |
id                                             | Integer | Read       | Booking's id. |
client_id                                      | Integer | Write      | Client id related to the Booking. |
source_id                                      | Integer | Write      | Source id related to the Booking. |
bookings_tag_ids                               | Array   | Write      | Array of ids of BookingsTags to be associated with Booking. |
adults                                         | Integer | Read/Write      | Booking's number of adults. |
booked                                         | Boolean | Read/Write      | Booking's booked status, false by default. When set to true, marks a regular booking. |
channel_price                                  | Integer | Read/Write      | Price accepted by the traveler on the channel site, excluding traveler's fees (eg: Airbnb). |
charge_damage_deposit_on_arrival               | Boolean    | Read/Write | Defines if charge damage deposit will be charged on arrival. | Can be `true` or `false` for Pro subscriptions, only `false` allowed when `damage_deposit_collection_method` is `"smily_damage_deposit_with_swikly"` |
children                                       | Integer | Read/Write      | Booking's number of children. |
commission                                     | [Decimal](/reference/enums#formats) | Write | Booking's commission fee. | Requires `final_price` to be present
currency                                       | String  | Read/Write      | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies). | Must be blank or included in [currencies list](/reference/enums#currencies)
damage_deposit                                 | [Decimal](/reference/enums#formats) | Read/Write | Booking's damage deposit. | greater than or equal to: 0 |
damage_deposit_collection_method               | [String](/reference/enums#formats) | Read/Write | Booking's damage deposit collection method. | Can be: `"with_smily"` (default), `"external"`, `"smily_damage_deposit_with_swikly"` (for non-Pro subscriptions) |
damage_deposit_external_collection_method_name | [String](/reference/enums#formats) | Read/Write | Damage deposit collection method name (in case `damage_deposit_collection_method` is `"external"`). | Leave blank unless `damage_deposit_collection_method` is `"external"` |
discount                                       | String  | Read/Write      | Booking's discount. (in percents e.g. 10%) | must blank or an absolute value (e.g. 100) or percentage value (e.g. 10%) |
door_key_code                                  | String  | Read/Write      | Booking's rental door key code. |
downpayment                                    | [Decimal](/reference/enums#formats) | Read/Write | Booking's downpayment. | Requires `final_price` to be present
expected_checkin_time                          | String  | Read/Write      | Expected guest's checkin time. | must be blank or represent a time value (e.g. 12, 12:30)
expected_checkout_time                         | String  | Read/Write      | Expected guest's checkout time. | must be blank or represent a time value (e.g. 12, 12:30)
final_payback_to_owner                         | [Decimal](/reference/enums#formats) | Read/Write | Final payback to rental owner. | Must be lower than `final_price`
final_price                                    | [Decimal](/reference/enums#formats) | Read/Write | Booking's final price. (after discount) |
initial_price                                  | [Decimal](/reference/enums#formats) | Read/Write | Booking's initial price. |
payment_left_to_collect                        | [Decimal](/reference/enums#formats) | Read  | Booking's payment left to collect. |
locked                                         | String  | Write      | Booking's locked status. |
notes                                          | Text    | Read/Write      | Booking's notes. (1000 characters max) | maximum length: 6000
reference                                      | String  | Read       | Booking's reference code. |
rental_payback_to_owner                        | [Decimal](/reference/enums#formats) | Read/Write | Amount of money to pay back to owner (only rental, excluding fees). | Must be blank or greater than or equal to: 0 and lower than `initial_price`
status                                         | String  | Read       | Booking's status. |
unavailable                                    | Boolean | Read/Write      | Booking's unavailable status, false by default. When set to true, marks the given period as unavailable. Commonly used for closed or maintenance periods. |
external_reference                             | String  | Read/Write | Booking's reference from the source channel. |
cancelation_reason                             | String  | Read/Write | Booking's cancelation reason (for writable part - it can be used in both update and cancelation endpoints) |
cancelation_message_to_guest                   | String  | Read/Write | Booking's cancelation message to guest (for writable part - only in cancelation endpoint) |
cancelation_message_to_channel                 | String  | Read/Write | Booking's cancelation message to guest (for writable part - only in cancelation endpoint) |
imported                                       | Boolean  | Read/Write | Whether this booking was imported from the external Channel or not |
reconciliation                                 | [Decimal](/reference/enums#formats)  | Read/Write | Booking's reconciliation |
authorized_amount                              | [Decimal](/reference/enums#formats)  | Read | Booking's authorized amount |
paid_or_authorized_amount                      | [Decimal](/reference/enums#formats)  | Read | Booking's paid or authorized amount |
------------------------|---------|------------|------------|
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time. |
start_at                | [Time](/reference/enums#formats) | Read/Write | Booking's start time. | **Required**, must be before `end_at`
end_at                  | [Time](/reference/enums#formats) | Read/Write | Booking's end time. | **Required**, must be after `start_at`
canceled_at             | [Time](/reference/enums#formats) | Write | Booking's cancel time. |
tentative_expires_at    | [Time](/reference/enums#formats) | Write | Booking's tentative expiry time, null by default. When set, it will mark the period as "on hold" until the given date. Once this date is passed, the period will automatically become available again. | Must be in the future
booked_at               | [Time](/reference/enums#formats) | Write      | Exact timestamp when a booking was booked |
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="bookings_read" markdown="1">
Name                    | Type    | Read/Write | Description
------------------------|---------|------------|------------|
account           | Integer | Read       | Account's ID related to the Booking
rental            | Integer | Read       | Rental's ID related to the Booking
client            | Integer | Read       | Client's ID related to the Booking
rental_agreement  | Integer | Read       | RentalAgreement's ID related to the Bookings Fee
source            | Integer   | Read     | Source's ID related to the Booking
inquiry           | Integer   | Read     | Inquiry's ID related to the Booking
created_by_id     | Integer   | Read     | Created By's ID related to the Booking
created_by_type   | String   | Read      | Created By's Type related to the Booking
booking_comments  | Array    | Read      | Array of related Bookings Comments IDs
booking_fees      | Array    | Read      | Array of related Bookings Fees IDs
booking_taxes     | Array    | Read      | Array of related Bookings Taxes IDs
booking_payments  | Array    | Read      | Array of related Bookings Payments IDs
conversations     | Array    | Read      | Array of related Inbox Conversation IDs
payments          | Array    | Read      | Array of related Payments IDs
rentals_tags      | Array    | Read      | Array of related Rentals Tags IDs
bookings_tags     | Array    | Read      | Array of related Bookings Tags IDs
------------------------|---------|------------|------------
id                      | Integer | Read       | Booking's id.
adults                  | Integer | Read       | Booking's number of adults.
booked                  | Boolean | Read       | Booking's booked status, false by default. When set to true, marks a regular booking.
bookings_payments_count | Integer | Read       | Booking's number of payments.
channel_price           | Integer | Read       | Price accepted by the traveler on the channel site, excluding traveler's fees (eg: Airbnb).
charge_damage_deposit_on_arrival | Boolean    | Read | Defines if charge damage deposit will be charged on arrival.  Can be `true` or `false` for Pro subscriptions, only `false` allowed when `damage_deposit_collection_method` is `"smily_damage_deposit_with_swikly"`
children                | Integer | Read       | Booking's number of children.
commission              | [Decimal](/reference/enums#formats) | Read | Booking's commission fee.
currency                | String  | Read       | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies).
damage_deposit          | [Decimal](/reference/enums#formats) | Read | Booking's damage deposit.
damage_deposit_collection_method | [String](/reference/enums#formats) | Read | Booking's damage deposit collection method. Can be: `"with_smily"` (default), `"external"`, `"smily_damage_deposit_with_swikly"` (for non-Pro subscriptions)
damage_deposit_external_collection_method_name | [String](/reference/enums#formats) | Read | Damage deposit collection method name (in case `damage_deposit_collection_method` is `"external"`).  Can be blank unless `damage_deposit_collection_method` is `"external"`
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
external_reference      | String  | Read       | Booking's reference from the source channel.
cancelation_reason      | String  | Read | Booking's cancelation reason
cancelation_message_to_guest      | String  | Read | Booking's cancelation message to guest
cancelation_message_to_channel    | String  | Read | Booking's cancelation message to guest
imported                | Boolean  | Read/Write | Whether this booking was imported from the external Channel or not
reconciliation          | [Decimal](/reference/enums#formats)  | Read | Booking's reconciliation
authorized_amount       | [Decimal](/reference/enums#formats)  | Read | Booking's authorized amount
paid_or_authorized_amount | [Decimal](/reference/enums#formats)  | Read | Booking's paid or authorized amount
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
Name                    | Type    | Read/Write | Description | Constraints
------------------------|---------|------------|------------|
account           | Integer | Read       | Account's ID related to the Booking |
rental            | Integer | Read       | Rental's ID related to the Booking |
client            | Integer | Read       | Client's ID related to the Booking |
rental_agreement  | Integer | Read       | RentalAgreement's ID related to the Bookings Fee |
source            | Integer   | Read     | Source's ID related to the Booking |
inquiry           | Integer   | Read     | Inquiry's ID related to the Booking |
created_by_id     | Integer   | Read       | Created By's ID related to the Booking | (User, Booking or Application - this is a polymorphic association) |
created_by_type   | String   | Read      | Created By's Type related to the Booking | (User, Booking or Application - this is a polymorphic association) |
booking_comments  | Array    | Read      | Array of related Bookings Comments IDs |
booking_fees      | Array    | Read      | Array of related Bookings Fees IDs |
booking_taxes     | Array    | Read      | Array of related Bookings Taxes IDs |
booking_payments  | Array    | Read      | Array of related Bookings Payments IDs |
conversations     | Array    | Read      | Array of related Inbox Conversation IDs |
payments          | Array    | Read      | Array of related Payments IDs |
rentals_tags      | Array    | Read      | Array of related Rentals Tags IDs |
bookings_tags     | Array    | Read      | Array of related Bookings Tags IDs |
------------------------|---------|------------|------------|
id                      | Integer | Read       | Booking's id. |
client_id               | Integer | Write      | Client id related to the Booking. |
source_id               | Integer | Write      | Source id related to the Booking. |
bookings_tag_ids        | Array   | Write      | Array of ids of BookingsTags to be associated with Booking. |
adults                  | Integer | Read/Write | Booking's number of adults. |
booked                  | Boolean | Read/Write | Booking's booked status, false by default. When set to true, marks a regular booking. |
bookings_payments_count | Integer | Read       | Booking's number of payments. |
channel_price           | Integer | Read/Write | Price accepted by the traveler on the channel site, excluding traveler's fees (eg: Airbnb). |
charge_damage_deposit_on_arrival | Boolean    | Read/Write | Defines if charge damage deposit will be charged on arrival. | Can be `true` or `false` for Pro subscriptions, only `false` allowed when `damage_deposit_collection_method` is `"smily_damage_deposit_with_swikly"` |
children                | Integer | Read/Write | Booking's number of children. |
commission               | [Decimal](/reference/enums#formats) | Read/Write | Booking's commission fee. | Requires `final_price` to be present
currency                | String  | Read/Write      | Booking's currency code, list of codes described in [enums section](/reference/enums#currencies). | Must be blank or included in [currencies list](/reference/enums#currencies)
damage_deposit          | [Decimal](/reference/enums#formats) | Read/Write | Booking's damage deposit. | greater than or equal to: 0
damage_deposit_collection_method | [String](/reference/enums#formats) | Read/Write | Booking's damage deposit collection method. | Can be: `"with_smily"` (default), `"external"`, `"smily_damage_deposit_with_swikly"` (for non-Pro subscriptions) |
damage_deposit_external_collection_method_name | [String](/reference/enums#formats) | Read/Write | Damage deposit collection method name (in case `damage_deposit_collection_method` is `"external"`). | Leave blank unless `damage_deposit_collection_method` is `"external"` |
discount                | String  | Read/Write      | Booking's discount. (in percents e.g. 10%) | must blank or an absolute value (e.g. 100) or percentage value (e.g. 10%)
door_key_code           | String  | Read/Write | Booking's rental door key code. |
downpayment             | [Decimal](/reference/enums#formats) | Read/Write | Booking's downpayment. | Requires `final_price` to be present
expected_checkin_time   | String  | Read/Write      | Expected guest's checkin time. | must be blank or represent a time value (e.g. 12, 12:30)
expected_checkout_time  | String  | Read/Write      | Expected guest's checkout time. | must be blank or represent a time value (e.g. 12, 12:30)
final_payback_to_owner  | [Decimal](/reference/enums#formats) | Read/Write | Final payback to rental owner. | Must be lower than `final_price`
final_price             | [Decimal](/reference/enums#formats) | Read/Write | Booking's final price. (after discount) |
final_rental_price      | [Decimal](/reference/enums#formats) | Read       | initial_rental_price reduced by discount (taxes and fees not included). |
initial_price           | [Decimal](/reference/enums#formats) | Read/Write | Booking's initial price. |
initial_rental_price    | [Decimal](/reference/enums#formats) | Read       | An alias for initial_price. |
payment_left_to_collect | [Decimal](/reference/enums#formats) | Read       | Booking's payment left to collect. |
locked                  | String  | Read/Write | Booking's locked status. |
notes                   | Text    | Read/Write      | Booking's notes. (1000 characters max) | maximum length: 6000
owned_by_app            | Boolean | Read       | Defines whether booking was created by current app. |
paid_amount             | [Decimal](/reference/enums#formats) | Read       | Booking's amount that have already been paid. |
payment_url             | String  | Read       | Url for booking's payment. |
reference               | String  | Read       | Booking's reference code. |
rental_payback_to_owner | [Decimal](/reference/enums#formats) | Read/Write | Amount of money to pay back to owner (only rental, excluding fees). | Must be blank or greater than or equal to: 0 and lower than `initial_price`
review_requests_count   | Integer | Read       | Booking's number of review requests. |
status                  | String  | Read       | Booking's status. |
unavailable             | Boolean | Read/Write | Booking's unavailable status, false by default. When set to true, marks the given period as unavailable. Commonly used for closed or maintenance periods. |
external_reference      | String  | Read/Write | Booking's reference from the source channel. |
cancelation_reason      | String  | Read/Write | Booking's cancelation reason (for writable part - it can be used in both update and cancelation endpoints) |
cancelation_message_to_guest      | String  | Read/Write | Booking's cancelation message to guest (for writable part - only in cancelation endpoint) |
cancelation_message_to_channel    | String  | Read/Write | Booking's cancelation message to guest (for writable part - only in cancelation endpoint) |
imported                | Boolean  | Read/Write | Whether this booking was imported from the external Channel or not |
reconciliation          | [Decimal](/reference/enums#formats)  | Read/Write | Booking's reconciliation |
authorized_amount       | [Decimal](/reference/enums#formats)  | Read | Booking's authorized amount |
paid_or_authorized_amount | [Decimal](/reference/enums#formats)  | Read | Booking's paid or authorized amount |
------------------------|---------|------------|------------|
balance_due_at          | [Time](/reference/enums#formats) | Read       | Booking's payment deadline. |
created_at              | [Time](/reference/enums#formats) | Read       | Booking's create time. |
updated_at              | [Time](/reference/enums#formats) | Read       | Booking's update time. |
start_at                | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's start time. |
end_at                  | [Time](/reference/enums#formats) | Read/Write | **Required**. Booking's end time. |
canceled_at             | [Time](/reference/enums#formats) | Read/Write | Booking's cancel time. |
tentative_expires_at    | [Time](/reference/enums#formats) | Read/Write | Booking's tentative expiry time, null by default. When set, it will mark the period as "on hold" until the given date. Once this date is passed, the period will automatically become available again. |
contract_updated_at     | [Time](/reference/enums#formats) | Read       | Booking's contract update time. |
booked_at               | [Time](/reference/enums#formats) | Write      | Exact timestamp when a booking was booked |
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
