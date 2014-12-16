# Changelog

## Work in progress

We're still in the process of building the API. While the technical parts
(authorization, JSON support etc.) are mostly done, not all resources
are complete or even available.

## 2014-12-25
  * [improvement] Explain `availabilities` mapping parameters.

## 2014-12-24
  * [update] Rename `bookings_public_write` scope to `bookings_write_owned`.

## 2014-11-28
  * [update] Rename `title` field to `key` for `amenities`.
  * [update] Update `booked`, `unavailable`, `tentative_expires_at` fields description for `bookings`.
  * [improvement] Explain `bookings` status assignment on creation. Update example request.

## 2014-11-24
  * [update] Describe how to use the refresh token to get a new access token in the [Testing Authorization](/reference/testing_authorization) guide.

## 2014-11-21
  * [update] Remove parent `id` from example with nested `POST` requests.

## 2014-11-21
  * [update] Remove `billing_addresses` endpoint with all its references. Add `address1`, `address2`, `city`, `country_code`, `state` and `zip` fields to `payments`.

## 2014-11-13
  * [improvement] The API will now return a 403 response when the current token doesn't have
    the scopes necessary to perform requested action. Previously that would have been 401.

## 2014-11-06
  * [improvement] Add `paid_amount` to `bookings` when using `bookings_read` or `bookings_write` scope.
