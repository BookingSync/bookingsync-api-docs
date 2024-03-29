# Webhook subscriptions

1. TOC
{:toc}

## Preface

Periodically fetching data from API to keep all the objects in sync is not the most efficient solution. Ideally, data synchronization would be triggered by some specific event.

Thanks to webhook subscriptions, you can be notified when some event occurs. You just need to select which events you want to subscribe to.

## Requirements

None, if you are an API partner and you've already registered your application, there is nothing else you need to do.

## Webhooks: getting started

### Application setting page

First, go to [partner login page](https://www.bookingsync.com/en/partners/login).

Once you are logged in, locate the application where you want to subscribe to webhooks and click the "Manage" button.

### The "Webhooks" tab

You should see a "Webhooks" tab

<img src="/images/webhook-subscriptions/webhooks-tab.png" alt="webhooks-tab" style="width:70%" />

Now, go to the "Webhook" section and click "New Webhook" to access the webhook subscriptions form.

### Webhook subscription form

<img src="/images/webhook-subscriptions/webhooks-form.png" alt="webhooks-form" style="width:70%" />

### URL

The first step is to specify the URL where the webhooks will be delivered when the given event occurs.

This endpoint should accept POST requests.

### Events

The final step is to select the events to which you want to subscribe to.

Here's the list of supported events:

<div class="tab-content" markdown="1">
Event name                              |Required scopes
----------------------------------------|------------------------------------------------------------|
account_destroyed                       |                                                            |
account_updated                         |                                                            |
accounts_application_created            |applications_read                                           |
accounts_application_destroyed          |applications_read                                           |
accounts_application_updated            |applications_read                                           |
accounts_user_created                   |                                                            |
accounts_user_destroyed                 |                                                            |
accounts_user_updated                   |                                                            |
amenity_created                         |                                                            |
amenity_destroyed                       |                                                            |
amenity_updated                         |                                                            |
availability_updated                    |rentals_read, rentals_write                                 |
booking_comment_created                 |bookings_read, bookings_write, bookings_write_owned         |
booking_comment_destroyed               |bookings_read, bookings_write, bookings_write_owned         |
booking_comment_updated                 |bookings_read, bookings_write, bookings_write_owned         |
booking_created                         |                                                            |
booking_destroyed                       |                                                            |
booking_discount_code_created           |bookings_read, bookings_write                               |
booking_discount_code_destroyed         |bookings_read, bookings_write                               |
booking_discount_code_updated           |bookings_read, bookings_write                               |
booking_discount_code_usage_created     |bookings_read, bookings_write                               |
booking_discount_code_usage_destroyed   |bookings_read, bookings_write                               |
booking_discount_code_usage_updated     |bookings_read, bookings_write                               |
booking_updated                         |                                                            |
bookings_fee_created                    |bookings_read, bookings_write, bookings_write_owned         |
bookings_fee_destroyed                  |bookings_read, bookings_write, bookings_write_owned         |
bookings_fee_updated                    |bookings_read, bookings_write, bookings_write_owned         |
bookings_tags_item_created              |bookings_read, bookings_write, bookings_write_owned         |
bookings_tags_item_destroyed            |bookings_read, bookings_write, bookings_write_owned         |
client_created                          |clients_read, clients_write                                 |
client_destroyed                        |clients_read, clients_write                                 |
client_updated                          |clients_read, clients_write                                 |
fee_created                             |                                                            |
fee_destroyed                           |                                                            |
fee_updated                             |                                                            |
host_review_created                     |reviews_read, reviews_write                                 |
host_review_updated                     |reviews_read, reviews_write                                 |
inbox_conversation_created              |inbox_read, inbox_write                                     |
inbox_conversation_updated              |inbox_read, inbox_write                                     |
inbox_message_created                   |inbox_read, inbox_write                                     |
inbox_message_updated                   |inbox_read, inbox_write                                     |
inquiry_created                         |inquiries_read, inquiries_write, inquiries_write_owned      |
inquiry_destroyed                       |inquiries_read, inquiries_write, inquiries_write_owned      |
inquiry_updated                         |inquiries_read, inquiries_write, inquiries_write_owned      |
payment_created                         |payments_read, payments_write                               |
payment_destroyed                       |payments_read, payments_write                               |
payment_updated                         |payments_read, payments_write                               |
photo_created                           |                                                            |
photo_destroyed                         |                                                            |
photo_updated                           |                                                            |
rental_created                          |                                                            |
rental_destroyed                        |                                                            |
rental_exposure_exception_created       |                                                            |
rental_exposure_exception_destroyed     |                                                            |
rental_updated                          |                                                            |
rentals_amenity_created                 |                                                            |
rentals_amenity_destroyed               |                                                            |
rentals_amenity_updated                 |                                                            |
review_created                          |reviews_read, reviews_write                                 |
review_reply_created                    |reviews_read, reviews_write                                 |
review_updated                          |reviews_read, reviews_write                                 |
user_created                            |                                                            |
user_destroyed                          |                                                            |
user_updated                            |                                                            |
{: class="table table-bordered"}
</div>

## Payload content

The request body of the webhook request will contain the serialized object in the same format as API v3 serializes objects and deserializes from.

### Header

The request header follows the following pattern:

~~~json
{
  "content_type": "application/json",
  "X-Content-Signature": "SIGNATURE",
  "user_agent": "BookingSync Webhook Delivery"
}
~~~

where `SIGNATURE` is a signed value which could be used to ensure that the incoming request is genuinely coming from BookingSync, which is based on the encoded JSON payload and your application's secret.

In Ruby, the signature could be computed the following way:

~~~ruby
encoded_body = Base64.encode64(json_body) # assuming `json_body` comes from the request
OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new("sha1"), YOUR_APPLICATION_SECRET, encoded_body)
~~~

<div class="alert alert-warning" role="alert">
  Note that Ruby’s <code>Base64.encode64</code> inserts <code>\n</code> character every 60 chars and at the end of string. Please account for it if other programming languages or Base64 encoding implementations are used.
</div>

The request has valid origin only if the value of `X-Content-Signature` header is the same as the one computed in your application.

### Body

The body will be a JSON object:

~~~json
{
  "account_id": "ACCOUNT_ID",
  "event": "EVENT_NAME",
  "resource": "SERIALIZED_RESOURCE"
}
~~~

Here is one example:

~~~json
{
  "account_id": 1059638630,
  "event": "client_created",
  "resource": {
    "links": {
      "clients.account": "https://www.bookingsync.com/api/v3/accounts/{clients.account}"
    },
    "client": {
      "links": {
      "account": 1059638630
    },
    "id": 995923932,
    "addresses": [],
    "emails": [{"label": "default", "email": "client_5@example.com"}],
    "phones": [],
    "created_at": "2017-10-10T11:00:00Z",
    "updated_at": "2017-10-10T11:00:00Z",
    "fullname": "Robt Braun",
    "firstname": "",
    "lastname": "",
    "notes": null,
    "preferred_locale": null,
    "passport": null,
    "company": "",
    "vat_number": ""
  }
}
~~~
