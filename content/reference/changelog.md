# Changelog

## 2015-06-26

  * [doc fix] Fix FontAwesome dependency

## 2015-06-05
  * [library update] Add 2 PHP libraries: OAuth2 BookingSync PHP and and update REST Request PHP for full compatibility with BookingSync API v3

## 2015-05-08
  * [api improvement] Add `passport` to the `clients` endpoint.

## 2015-04-30
  * [doc update] Add libraries section with general info about oauth2 and bookingsync gems.

## 2015-04-20
  * [doc update] Add video to help getting started with the setup and authorization process.
  * [doc update] Special Offer discount is a `float` not `integer`

## 2015-04-15
  * [api improvement] Allow to clone `rates_tables` via API V3.

## 2015-04-11
  * [api improvement] Add `email` to the `accounts` endpoint.

## 2015-04-06
  * [doc update] Add explanation about translated attributes as they need to be written differently than they read.
  * [doc update] Fix documentation error, `price_public_notes` is an `object`, not a `string`.

## 2015-03-26
  * [doc update] Link to deprecated API v1

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
