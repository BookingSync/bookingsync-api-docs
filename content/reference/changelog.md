# Changelog

## Work in progress

We're still in the process of building the API. While the technical parts
(authorization, JSON support etc.) are mostly done, not all resources
are complete or even available.

## 2015-02-18
  * [api improvement][breaking change] Remove `normal_url` from `photos` endpoint. Use `large_url` instead.

## 2015-02-11
  * [doc update] Redesign the developers center to be inline with BookingSync style
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
