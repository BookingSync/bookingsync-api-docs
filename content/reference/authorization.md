# Authorization

1. TOC
{:toc}

## OAuth

The BookingSync API uses [OAuth 2.0](http://oauth.net/2/) for authorization.

OAuth2 is a protocol that lets external apps request authorization to private
details in a user’s BookingSync account without getting their password.

All applications that want to use the API
[must be registered on the BookinSync website](/reference/requirements/).

Each registered application is assigned a unique Client ID and Client Secret.
It is important that the Client Secret is not shared with anyone and not
accessible by users.

## Testing the Authorization

For testing the authorization process in console or play around the API,
refer to [Testing BookingSync Authorization](/reference/testing_authorization/)

## Libraries

We recommend using an existing OAuth 2.0 library instead of implementing
the protocol by hand. There are many edge cases, and using a well-tested
library is the best way to cover them all.

You can find a list of client librairies at http://oauth.net/2/#client-libraries

For Ruby users, we also developed nice gems ourselves to ease the integration of our api:

### Ruby

* [omniauth](https://github.com/intridea/omniauth) with the
  [omniauth-bookingsync](https://github.com/bookingsync/omniauth-bookingsync)
  strategy provide an easy to use framework for integrating applications
  with the API.
* [bookingsync-api](https://github.com/BookingSync/bookingsync-api)
  is a complete library that provide convenient methods for accessing the API.
* [bookingsync-engine](https://github.com/BookingSync/bookingsync-engine)
  is a complete solution for Ruby on Rails applications that handles
  authorization and provides convenience methods for accessing the API.
  It includes [omniauth-bookingsync](https://github.com/bookingsync/omniauth-bookingsync)
  and [bookingsync-api](https://github.com/BookingSync/bookingsync-api)
* [synced](https://github.com/BookingSync/synced)
  makes it super simple to synchronize data from BookingSync to your Application.


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

* `bookings_write_owned`
* `bookings_read`
* `bookings_write`
* `clients_read`
* `clients_write`
* `inquiries_read`
* `inquiries_write`
* `payments_read`
* `payments_write`
* `rates_read`
* `rates_write`
* `rentals_read`
* `rentals_write`
* `reviews_write`

**Note**: To request authorization for multiple scopes, use a space separated list.
In URLs it would look like `&scope=bookings_read%20rentals_read` (`%20` represent a space within URLs)

## Authorization Code Flow

Application can also use the
[OAuth 2.0 Authorization Code flow](http://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-4.1)
to access the API.
This is to be used for **Server-Side applications**, with special care taken to *never* leak `client_secret`.

The explicit OAuth 2.0 flow consists of the following steps:

1. Send a user to `https://www.bookingsync.com/oauth/authorize`, with these query string parameters
  * client_id
  * redirect_uri - must be under an apps registered domain
  * response_type - must be `code`
  * scope - options ([details](#scopes))
  * state - optional
2. The user approves your app
3. The user is redirected to **redirect_uri**, with these query string parameters
  * code
  * state - optional, only returned if provided in the first step
4. POST (application/x-www-form-urlencoded) the following parameters to `https://www.bookingsync.com/oauth/token`
  * client_id
  * client_secret
  * code - from the previous step
  * grant_type - must use `authorization_code`
  * redirect_uri - must be the same as the provided in the first step

This request is responded to with either an error (HTTP status code 401) or an access token of the form `access_token=...&expires_in=1234`.

### Refreshing access token

API calls made with expired token will return an HTTP Status Code 401 (Unauthorized). To prevent this from happening, request a new `access_token` using the `refresh_token`, by performing the action below before the `access_token` expiration. You can find your token lifetime (in seconds), by checking the `expires_in` attribute in authorization response.

1. POST (application/x-www-form-urlencoded) the following parameters to `https://www.bookingsync.com/oauth/token`
  * client_id
  * client_secret
  * refresh_token - from above section, step 4 response
  * grant_type - must use `refresh_token`
  * redirect_uri - must be the same as the provided in the first step

This request is responded to with either an error (HTTP status code 401) or an access token of the form `access_token=...&expires_in=1234`.

## Implicit Flow

Application can also use the
[OAuth 2.0 Implicit flow](http://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-4.2)
to access the API.
This is recommended for **Client-Side applications**.

The implicit OAuth 2.0 flow consists of the following steps:

1. Open a new window at `https://www.bookingsync.com/oauth/authorize`, with these query string parameters
  * client_id
  * redirect_uri - must be under an apps registered domain
  * response_type - must be `token`
  * scope ([details](#scopes))
  * state - optional
2. The user approves your app
3. The user is redirected to **redirect_uri**, with these parameters in the hash
  * access_token
    * token_type
    * expires_in

Once you have authenticated a user once, regardless of flow, subsequent re-authorizations will occur without requiring user action. Naturally, should a user revoke an applications permissions then further action will be required to re-authorize.

## Client Credentials Flow

Application can also use the
[OAuth 2.0 Client Credentials flow](http://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-4.4)
to access the API.

Requests using a token obtained using the Client Credentials flow are limited
to using only the `public` scope, but can access resources of all BookingSync
Accounts that authorized the given Application.

This is useful for bulk access, for example in a rental listing application.
Instead of iterating over each authorized Account and fetching their rentals,
the application can use the Client Credentials flow and fetch all rentals
at once.

## Authorization Errors

When the token used to authorize the request is invalid, expired or revoke, the API will return a
401 response. When the token is valid, but doesn't have the scopes necessary to perform requested
action, the API will return a 403 response.
