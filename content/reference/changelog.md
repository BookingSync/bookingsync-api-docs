# Changelog

  * [api improvement] Add `floor` to the `rentals` endpoint.

## 2016-03-19

  * [api improvement] Add `fees`, `taxes`, `bookings_fees`, `bookings_taxes`, `rentals_fees`, `rentals_taxes`, `fees_taxes`, `tax_rules` endpoints.
  * [api improvement] Add more currencies.
  * [api improvement] Add `checkin_details` and `checkout_details` to rentals. Requires `rentals_read` or `rentals_write` scope as this data should not be shared before the booking is confirmed.
  * [doc fix] Add missing associations in rentals responses.

## 2016-02-06

 * [api improvement] Allow to update the `rental_id` of a given `inquiry`

## 2016-02-05

  * [api improvement] Allow to search by instantly bookable rentals using the `bookable_online` query param.
  * [api improvement] Allow `inquiries_write` to edit `inquiries` unless they are owned by an other application.
  * [api improvement] Add `bathrooms` and `bedrooms` endpoints.

## 2016-01-31

  * [doc update] Add scope `payments_write_owned` to payments endpoint.

## 2016-01-28

  * [doc update] Add missing scope `payments_write_owned`.
  * [api improvement] Add `inquiries_write_owned`.
  * [api improvement] Add `sources` to `inquiries`.

## 2015-12-18

  * [doc update] Update bookings creation example. with `included` attribute in `bookings_taxes`.
  * [doc update] Update search response for `rentals` endpoint with `included` attribute for `taxes` in `price_details`.

## 2015-12-12

  * [doc update] Add reference to [tapioca-bookingsync](https://github.com/PaoloC68/tapioca-bookingsync), contributed by [Fetch My Guest](http://www.fetchmyguest.com/).

## 2015-12-10

  * [api improvement] Allow to create bookings with fees and taxes in a single request.

## 2015-12-04

  * [api fix] Rental search by destination returns rentals in descendants  destinations. Example: Searching for rentals in Europe will return rentals in France as well.

## 2015-10-27

  * [doc update] Update search response for `rentals` endpoint.

## 2015-09-25

  * [doc update] Update payments `create` action to be scoped under `bookings` endpoint.

## 2015-09-04

  * [api improvement] Add `details` to the `rentals_amenities` endpoint.

## 2015-07-23

  * [api improvement] Add `stories_count` to the `rentals` endpoint.

## 2015-07-11

  * [api improvement] Add new rental types: `bungalow`, `cabin`, `chalet`, `house`. Full list at [enums section](/reference/enums#rates-types)

## 2015-07-09

  * [api improvement] Add `rentals_tags` endpoint, add `rentals_tags` to `rentals` search params

## 2015-06-26

  * [doc fix] Fix FontAwesome dependency

## 2015-06-05
  * [library update] Add 2 PHP libraries: OAuth2 BookingSync PHP and update REST Request PHP for full compatibility with BookingSync API v3.

## 2015-05-08
  * [api improvement] Add `passport` to the `clients` endpoint.

## 2015-04-30
  * [doc update] Add libraries section with general info about oauth2 and bookingsync gems.

## 2015-04-20
  * [doc update] Add video to help getting started with the setup and authorization process.
  * [doc update] Special Offer discount is a `float` not `integer`.

## 2015-04-15
  * [api improvement] Allow to clone `rates_tables` via API V3.

## 2015-04-11
  * [api improvement] Add `email` to the `accounts` endpoint.

## 2015-04-06
  * [doc update] Add explanation about translated attributes as they need to be written differently than they read.
  * [doc update] Fix documentation error, `price_public_notes` is an `object`, not a `string`.

## 2015-03-26
  * [doc update] Link to deprecated API v1.

## 2015-03-18
  * [doc update] Update the list of availability map statuses.

## 2015-03-12
  * [api improvement] The API V3 is now marked as stable release <3.
  * [doc update] Update the list of accounts and bookings statuses to reflect all the possible options.

## 2015-03-11
  * [api improvement] Add `absolute_min_price` to `rentals` endpoint.
  * [api improvement] Add `published_only` option to `rentals` search section.

## 2015-02-25
  * [doc update] Update `Date` and `Time` parameters with links to formats section.

## 2015-02-20
  * [doc update] Update list of currencies with Danish krone (DKK).

## 2015-02-18
  * [api improvement][breaking change] Remove `normal_url` from `photos` endpoint. Use `large_url` instead.
  * [api improvement][breaking change] Update `clients` endpoint with new grouped attributes.

## 2015-02-11
  * [doc update] Redesign the developers center to be inline with BookingSync style.
  * [doc update] Update testing the authorization section with `refresh_token` information.
  * [doc update] Explain how to sideload associations.

## 2015-02-08
  * [doc update] Update requirements section with application setup.
  * [doc update] Improve documentation for testing the authorization.

## 2015-02-04
  * [doc update] Add `search` section to `rentals` endpoint.

## 2015-01-21
  * [doc update] Update `initial_price` and `final_price` descriptions.

## 2015-01-20
  * [api improvement] Update `seasons` endpoint - add names translations.

## 2015-01-08
  * [api improvement] Add more image sizes to `photos` endpoint.
  * [api improvement] Add `title` to `amenities` endpoint.

## 2015-01-06
  * [doc update] Add `accounts` endpoint.

## 2014-12-25
  * [doc update] Explain `availabilities` mapping parameters.

## 2014-12-24
  * [api improvement] Rename `bookings_public_write` scope to `bookings_write_owned`.

## 2014-11-28
  * [api improvement] Rename `title` field to `key` for `amenities`.
  * [doc update] Update `booked`, `unavailable`, `tentative_expires_at` fields description for `bookings`.
  * [doc update] Explain `bookings` status assignment on creation. Update example request.

## 2014-11-24
  * [doc update] Describe how to use the refresh token to get a new access token in the [Testing Authorization](/reference/testing_authorization) guide.

## 2014-11-21
  * [doc update] Remove parent `id` from example with nested `POST` requests.

## 2014-11-21
  * [api improvement] Remove `billing_addresses` endpoint with all its references. Add `address1`, `address2`, `city`, `country_code`, `state` and `zip` fields to `payments`.

## 2014-11-13
  * [api improvement] The API will now return a 403 response when the current token doesn't have
    the scopes necessary to perform requested action. Previously that would have been 401.

## 2014-11-06
  * [doc update] Add `paid_amount` to `bookings` when using `bookings_read` or `bookings_write` scope.
