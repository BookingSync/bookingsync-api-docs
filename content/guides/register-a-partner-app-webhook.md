# Register a partner app webhook

1. TOC
{:toc}

## Preface

A great way to get notified when a new interesting event occurred is to register a webhook.

## Requirements

To use this scenario, you will need to have a registered partner application.

## Application setting page

First you need to go to your application setting page to be able to register the webhook.

Your application can be found in the [partner panel on BookingSync.com](https://www.bookingsync.com/en/partners/applications).

Once found, you need to click the "Manage" button.

## The "Webhooks" tab

You should see a "Webhooks" tab

<img src="/images/register-a-partner-app-webhook/webhooks-tab.png" alt="webhooks-tab" style="width:70%">

Once in the "Webhook" section, you simply have to click "New Webhook" to access the webhook subscription form.

## Webhook subscription form

<img src="/images/register-a-partner-app-webhook/webhooks-form.png" alt="webhooks-form" style="width:70%">

### Url

The first step is to specify a URL where the webhook will deliver the payload when an event occurs.

This endpoint should accept POST requests.

### Events

The final step is to select the events to which you want to be registered.
Once any of this events occur, a new payload will be delivered.

The available events are:

- account_destroyed
- account_updated
- amenity_created
- amenity_destroyed
- amenity_updated
- availability_updated
- booking_created
- booking_destroyed
- booking_updated
- client_created
- client_destroyed
- client_updated
- inquiry_created
- inquiry_destroyed
- inquiry_updated
- photo_created
- photo_destroyed
- photo_updated
- rental_created
- rental_destroyed
- rental_updated
- rentals_amenity_created
- rentals_amenity_destroyed
- rentals_amenity_updated

## Payload content

When a payload hits your url using the POST verb, it will contains the following information.

### Header

The request header will follow this pattern:

```
{
    content_type: "application/json",
    "X-Content-Signature" => content_signature,
    user_agent: "BookingSync Webhook Delivery"
}
```

where `content_signature` is a computed secret to ensure that the incoming request is genuinely
coming from BookingSync.

`content_signature` is the result of the SHA1 encoding of the body (base64 encoded) using your application secret as key.
Something similar to

```
OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new("sha1"), secret, Base64.encode64(body))
```

can be used to compute the signature in order to check the payload origin.

### Body

The body will be a JSON encoded object of the following pattern:

```
{
    account_id: account_id,
    event: event_name,
    resource: serialized_resource
}
```

Note that the `event` field is useful when you registered one route for multiple events.
