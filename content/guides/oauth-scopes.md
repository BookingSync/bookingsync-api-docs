# OAuth Scopes

1. TOC
{:toc}

## Explanation

For authorizing read and write access to most of the endpoints, BookingSync API requires proper OAuth scopes. There are three kinds of scopes: `read` scope, `write` scope and `write owned` scope.

The first two are self-explanatory: for reading, the read scope is required (however, write scope also gives the permission to read resources), for writing the write scope is necessary (the read scope won't be enough).

The last one, `write owned` is not that obvious. It is still similar to `write` scope in the sense that it allows write and read actions, but the behavior is slightly different. When creating a new record with owned scope, your application will acquire a lock on the record preventing it from being modified by any other application, besides the attributes that are always whitelisted for editing (check Additional Comments section for reference). For example, when you create a booking with `bookings_write_owned` scope, only your application will be able to modify its prices'. Another difference is for `read` actions - the response might be limited for some resources, and all sensitive data for given resource will be removed (check Additional Comments section for reference). Such behavior prevents applications from accessing the sensitive data when it is not necessary for them. It is **strongly** recommended to use `write owned` scopes by default (if applicable for given resource, not all of them have the owned scope) as `write` scopes with full access might discourage property managers from installing your application.

## Additional Comments

### Whitelisted attributes for update

In case of bookings, there are certain attributes that are always whitelisted for editing, even when the booking is locked:

* `expected_checkin_time`
* `expected_checkout_time`
* `rental_payback_to_owner`

It is also possible to add new bookings fees to the locked bookings. However, editing non-owned bookings fees is not permitted.

### Limited read access

In case of bookings and bookings taxes, `bookings_write_owned` impacts the response body when reading the bookings that are not owned by your application and the sensitive data won't be returned. For bookings, the response body will contain only the following attributes for non-owned records:

* `id`
* `start_at`
* `end_at`
* `status`
* `updated_at`
* `reference`

For bookings taxes, no attributes will be returned.
