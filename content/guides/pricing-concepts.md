# Pricing concepts

1. TOC
{:toc}

## Preface

Creating bookings/reservations is a very core of the vacation rental industry, so it's important to be flexible enough to provide multiple strategies for our partners in which they can calculate the price for the of the bookings and also manage rates of the rentals. Here is a brief overview of the pricing concepts and strategies that could be employed by your application.

## Your application creates bookings

In that case, you need to calculate the price based on BookingSync data. Depending on the synchronous (live quote request) or asynchronous (cached rates) nature of your application's flow, there are few ways to do it:

### 1. Live Quote request (recommended for synchronous flow)

Live Quote is the best way to get the exact price for given rental for specified dates as it operates on the data that is always up-to-date, not a cached one, and also offers a precise breakdown of the way how the price has been calculated. To take advantage of this feature, you just need to send a request to [`/rentals/search` endpoint](http://developers.bookingsync.com/reference/endpoints/rentals/#search-rentals) with the following params:

* `rental_id` (required) - BookingSync id of the rental you want to create the booking for
* `start_at` (required) - the start date of the booking
* `end_at` (required) - the end date of the booking
* `adults` (required) - the number of adults for the booking
* `children` (optional) - the number of children for the booking

If the rental is available for the provided dates, you will get a non-empty response body looking like this:

~~~json
{
  "rentals": [
    {
      "id": 1,
      "currency": "EUR",
      "damage_deposit": 35.5,
      "final_price": 858.33,
      "initial_price": 700.0,
      "price_details": {
        "taxes": [
          {
            "name": {
              "en": "VAT"
            },
            "percentage": "10.0",
            "amount": "58.33",
            "taxable_type": "Rental",
            "taxable_id": 2,
            "tax_id": 1,
            "included": false
          }
        ],
        "fees": [
          {
            "name": {
              "en": "some fee"
            },
            "required": true,
            "price": "100.0",
            "quantity": 1,
            "id": 10,
            "rentals_fee_id": 12
          }
        ]
      },
      "price_to_pay_now": 858.33,
      "taxes": [
        {
          "name": {
            "en": "VAT"
          },
          "percentage": "10.0",
          "amount": "58.33"
        }
      ],
      "updated_at": "2014-01-21T11:46:15Z",
      "links": {
        "rentals_fees": "http://www.bookingsync.com/api/v3/rentals_fees/{rentals.rentals_fees}"
      }
    }
  ]
}
~~~

If the response contains any `taxes` or `price_details`, you MUST include them in the request body when [creating a booking](http://developers.bookingsync.com/reference/endpoints/bookings/#create-a-new-booking).

Keep in mind that `taxes` outside `price_details` are just grouped summed taxes of the same kind that should be used only for presentation purposes.

The response will contain three top-level attributes that are related to the price:

* `initial_price` - the initial price (without taxes and fees). If you don't apply any discounts, this will be equal to the price for only the rental.
* `final_price` - the sum of initial price, required fees and excluded taxes.
* `price_to_pay_now` - if you capture credit card payments in your application, this is the price that you should charge which is calculated based on the payment schedule (rental's balance due date - before that date you should charge the price based on the downpayment, after that the full price (`final_price`)). If you use Live Quote, you don't have to worry how this attribute is calculated.

### 2. Distributed calculation cache - LOS records (recommended for asynchronous flow)

Sometimes you can't perform a live quote before creating a booking, but still need the best approximation of the price. In that case, you can take advantage of [LOS records](http://developers.bookingsync.com/reference/endpoints/los_records/), which are a distributed cache of the prices for the next consecutive 30 days in reference to a given `day` when the booking is created. Most likely this day will be today's date if you use LOS records for price calculation before creating a booking.

The way LOS records' `rates` work is the following: each consecutive rate is the price for the given length of stay (hence Length Of Stay Records). For a one-day stay, the price will be equal to the first rate, for a two-day stay, the price will be equal to the second rate and so forth.

There are three `kind`s of LOS records, but two of them are particularly important:

* `rental_price` - the LOS records will contain the rates for booking's `initial_price` (check Live Quote docs for reference).
* `final_price ` - the LOS records will contain the rates for booking's `final_price`, which means it covers excluded taxes and required fees as well (check Live Quote docs for reference).

### 3. Rates and rates rules (not recommended).

Besides LOS records, there is one more form of a distributed calculations cache - [rates](http://developers.bookingsync.com/reference/endpoints/rates/). They are in some sense similar to LOS records, but the rates are divided into the periods without a reference to the specific day for which they were calculated. That means that not all [rates rules](http://developers.bookingsync.com/reference/endpoints/rates_rules/) could have been applied when generating them (like `late_booking` or `early_booking`). If you **really** have to use rates, you should apply rates rules that make sense on top of them when calculating the price for a given booking, but even then the price most likely will not be the same as from LOS records or Live Quote.

### 4. Nightly rates maps, seasons, periods and rates rules (not recommended and not supposed to be used for exact price).

It is **absolutely** not recommended to use directly any of those to calculate the price of the booking; nevertheless, it might give you some insight how things work on a lower-level.

Seasons and periods are resources which modify rentals' base rate for given dates range. That way, you can get the exact "raw" nightly rate for the rental for a given day (which means without any rates rules applied). [Nightly rates map](http://developers.bookingsync.com/reference/endpoints/nightly_rate_maps/) is the equivalent resource to combined seasons and periods; the format is just more compact and much easier to manage outside the BookingSync, via a third-party application.

[`Rates`](http://developers.bookingsync.com/reference/endpoints/rates/) are calculated based on the seasons/periods/nightly rates maps, so those resources should not be used for any calculation, they should be considered as an implementation detail.

Internally, seasons and periods (which are manageable from BookingSync UI) are mapped to nightly rates maps, unless nightly rates maps are managed externally. In that case, nightly rates maps will be mapped to seasons/periods.

## Your application manages rentals' rates

In that case, you need to create [nightly rates maps](http://developers.bookingsync.com/reference/endpoints/nightly_rate_maps/) which will contain the "raw" rates, without any rates rules applied. Keep in mind that property managers can apply rates rules on top of those nightly rates.

If your application manages rates using nightly rates maps, property managers won't be able to create any seasons and periods in BookingSync. However, the nightly rates will be mapped to seasons and periods for internal usage.
