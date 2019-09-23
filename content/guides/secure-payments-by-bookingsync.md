# Secure Payments By BookingSync

1. TOC
{:toc}

## Preface

If you have an integration with BookingSync and you create bookings on your side according to the instant booking flow (i.e. a booking gets confirmed only when the credit card payment is executed successfully) and you don't have PCI DSS compliant payment platform for collecting credit card payments, you can use our Secure Payments By BookingSync flow for this purpose.

## Requirements

To handle integration with Secure Payments By BookingSync you need to have an application with `payments_write` or `payments_write_owned` scope. We recommend using `payments_write_owned` for this purpose to make sure the payment is not editable by anyone else - only by your application.

Also, the rental for which the booking will be created requires to be instantly bookable and it requires to have a payment gateway assigned (which will be used for executing the credit card payment) which supports rental's currency.

For client-to-server integration you need to be at least PCI-DSS 3.1 + SAQ-A compliant and for server-to-server integration you need to be SAQ-D compliant.

## Instant Booking Flow

The primary idea behind Instant Booking Flow is to require successful credit card payment to confirm the booking.

Here are the steps that we recommend to follow for this flow:

* Create a tentative booking
* Create a tentative instant booking payment
* Send credit card data and payment id to our PCI DSS compliant payment platform for executing the payment, which will confirm both booking and payment if the payment is successfully executed

Let's focus on each point separately.

## Creating A Tentative Booking

Instant Booking flow requires payment to confirm the booking, so we recommend creating a tentative booking and leaving the confirmation to our PCI DSS compliant platform. The confirmation process should take up to few minutes, so we recommend to set tentative expire date to 5 or 10 minutes from now. To create a tentative booking you need to provide 2 params (besides the requires one):

* tentative_expires_at - to set the expiry date
* booked - set it to `false`

You can find more about the bookings' attributes and how to create them in the [bookings endpoint documentation](/reference/endpoints/bookings/).

## Creating A Tentative Payment

Another step would be creating a tentative payment (i.e. not confirmed payment) of `instant-booking` kind for the given booking. This payment will get confirmed once the successful credit card payment is executed. Here the essential attributes you need to provide for such payment:

* amount_in_cents - amount in cents for the payment that will be charged
* currency -  currency of the payment (must be the same as booking's currency)
* kind - use `instant-booking`

We also recommend including more details like `fullname`, `email`, `zip` and other address related field.

You can find more about the payments' attributes and how to create them in the [payments endpoint documentation](/reference/endpoints/payments/).

## Executing Payment

Once you have created a payment, you need to execute the payment using its id and the credit card data.

The URL of our PCI DSS compliant payment platform for executing credit card payments is the following: `https://secure.bookingsync.com/api/bookingsync/instant_bookings`.

To execute the payment you need to provide the following attributes:

* tentative_payment_id - **required** - id of the tentative payment
* card_number - **required** - credit card's number
* cardholder_name - **required** - name of the cardholder
* expires_at_month - **required** - expiry month of the credit card
* expires_at_year - **required** - expiry year of the credit card
* security_code - **required** - verification value (CVV) of the credit card
* address1 - **required** - adress1 line for the billing info
* address2 - adress2 line for the billing info
* zip - **required** - zip for the billing info
* city - **required** - city for the billing info
* state - state for the billing info
* country_code - **required** - country code for the billing info
* gateway_id - **required** - id of used payment gateway
* gateway_name - **required** - name of used payment gateway
* gateway_type - **required** - type of used payment gateway

Here's an example of the expected payload:

~~~json
{
  "card_number": 4111111111111111,
  "cardholder_name": "John Doe",
  "expires_at_month": "12",
  "expires_at_year": "2020",
  "security_code": 123,
  "address1": "some address 1 / 10",
  "zip": "12312",
  "city": "San Francisco",
  "state": "California",
  "country_code": "US",
  "gateway_id": "123",
  "gateway_name": "payment_gateway_name",
  "gateway_type": "PaymentGateway"
}
~~~


There are 3 possible responses:

1. Successful - with status code `200` and no response body - it means that the payment has been successfully authorized and has been enqueued to be captured asynchronously. Once the credit card payment is captured, it will be confirmed on the BookingSync side - the payment will be updated with `transaction_id` and `paid_at` values and the related booking will be confirmed - marked as booked.

2. Partial Success - with status code `202` and response body dependent on Payment Gateway. This status means that payment requires authentication.

BookingPay Gateway

~~~json
{
  "enrollmentId": "sample_enrollment_id_123",
  "acsURL": "https://test-threedsecure.centralpay.net/acs",
  "paReq": "paReq",
  "gateway_name": "booking_pay",
  "uuid": "lapw8u3k-9583-38l3-m5d9-51c0af5df8cb",
  "order_id": "BS-123"
}
~~~

Ogone Gateway

~~~json
{
  "gateway_name": "ogone",
  "HTML_ANSWER": "html_answer_that_is_Base64_encoded_form",
  "uuid": "lapw8u3k-9583-38l3-m5d9-51c0af5df8cb"
}
~~~

Stripe Gateway

~~~json
{
  "gateway_name": "stripe",
  "uuid": "0fc0476e-1267-49e7-a1f4-43c0df5dc8fd",
  "next_action": {
    "redirect_to_url": {
      "return_url": "https://bookingsync.com?order_id=BS-123-1562441767",
      "url": "https://hooks.stripe.com/..."
    },
    "type": "redirect_to_url"
  }
}
~~~

<div class="callout callout-info">
  <h4>Successful authentication after 202 status</h4>
  <p>After successful authentication a traveller will be redirected to BookingSync success page. There is no possibility to customize this redirection.</p>
</div>

{:start="3"}
3. Failure - with status code `422` and validation errors inside response body. Here's an example of possible validation errors:

~~~json
{
  "tentative_payment_id": ["can't be blank"]
}
~~~

The essential validation includes presence validation of the required attributes, credit card data and ability to authorize the payment.

All credit card errors are handled inside `credit_card` attribute, here's an example:

~~~json
{
  "credit_card": ["number - is not a valid credit card number"]
}
~~~

To indicate problems with authorizing the payment we use `payment` attribute, here's an example:

~~~json
{
  "payment": ["authorization declined"]
}
~~~

There are 3 edgecases that shouldn't happen too often, but are possible:

* API connection problem - if the payment platform cannot establish a connection with BookingSync API, the error will be returned for `api` attribute.
* Data problem - if the payment gateway was not set for the rental, the error will be returned for `data` attribute.
* Other errors - if there is any different error, it will be returned for `server` attribute.

## Testing Payment Execution

For testing the payment flow we recommend switching to Bogus gateway, which will prevent from executing a real payment and using one of the following credit card numbers:

* `4111 1111 1111 1111` - to Simulate an Approved Transaction
* `4111 1111 1111 1112` - to Simulate a Declined Transaction
* `4111 1111 1111 1113` - To Simulate a Gateway Failure
