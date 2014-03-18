# Authorization

1. TOC
{:toc}

## OAuth

The BookingSync API uses [OAuth 2.0](http://oauth.net/2/) for authorization.

OAuth2 is a protocol that lets external apps request authorization to private
details in a user’s GitHub account without getting their password.

All applications that want to use the API
[must be registered on the BookinSync website](/reference/requirements/).

Each registered application is assigned a unique Client ID and Client Secret.
It is important that the Client Secret is not shared with anyone and not
accessible by users.

## Libraries

We recommend using an existing OAuth 2.0 library instead of implementing
the protocol by hand. There are many edge cases, and using a well-tested
library is the best way to cover them all.

### Ruby

* [oauth2](https://github.com/intridea/oauth2) provides a basic abstraction
  for interacting with OAuth 2.0.
* [omniauth](https://github.com/intridea/omniauth) with the
  [omniauth-bookingsync](https://github.com/bookingsync/omniauth-bookingsync)
  strategy provide an easy to use framework for integrating applications
  with the API.
* [bookingsync-engine](https://github.com/BookingSync/bookingsync-engine)
  is a complete solution for Ruby on Rails applications that handles
  authorization and provides convenience methods for accessing the API.

### PHP

* [PHP-OAuth2](https://github.com/adoy/PHP-OAuth2)
* [PHPoAuthLib](https://github.com/Lusitanian/PHPoAuthLib)

### Python

* [rauth](https://github.com/litl/rauth)
* [sanction](https://github.com/demianbrecht/sanction)

## Embedded Application

When building applications that are meant to be embedded in the
BookingSync App Store, keep in mind that the authorization redirect
can't be done with a simple 301 redirect.

The BookingSync website serves the `X-Frame-Options: DENY` header, which
prevents it from being embedded in any iframe. Therefore, browsers won't be
able to show the authorization prompt within an iframe.

Instead, embedded applications must use javascript to redirect to the auth
screen:

~~~html
<script type='text/javascript'>
  window.top.location.href = 'https://www.bookingsync.com/oauth/authorize';
</script>
~~~

## Scopes

Scopes let the application request access to a subset of the API. Requested
scopes are displayed to the user with the authorization prompt.

By default, all requests include the `public` scope, which allows readonly
access to public information.

Additionally, the following scopes are available:

* `rentals_read`
* `clients_read`
* `bookings_read`
* `reviews_read`
* `payments_read`
* `inquiries_read`
* `rates_read`
* `rentals_write`
* `clients_write`
* `bookings_write`
* `reviews_write`
* `payments_write`
* `inquiries_write`
* `rates_write`
* `bookings_public_write`

## Client credentials flow

Application can also use the
[OAuth Client Credentials flow](http://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-1.3.4)
to access the API.

Requests using a token obtained using the Client Credentials flow are limited
to using only the `public` scope, but can access resources of all BookingSync
Accounts that authorized the given Application.

This is useful for bulk access, for example in a rental listing application.
Instead of iterating over each authorized Account and fetching their rentals,
the application can use the Client Credentials flow and fetch all rentals
at once.
