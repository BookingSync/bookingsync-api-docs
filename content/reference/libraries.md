# Libraries

We recommend using an existing OAuth 2.0 library instead of implementing
the protocol by hand. There are many edge cases, and using a well-tested
library is the best way to cover them all.

You can find a list of client libraries at [oauth.net](http://oauth.net/2/#client-libraries).

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

### PHP

* [oauth2-bookingsync-php](https://github.com/BookingSync/oauth2-bookingsync-php) provide an easy to use framework for handling OAuth 2 authorization with BookingSync. This is based on top of the PHP League's [OAuth 2.0 Client](https://github.com/thephpleague/oauth2-client)
* [rest-request-php](https://github.com/BookingSync/rest-request-php) a library that provide convenient methods for accessing a REST API with OAuth 2 with Bearer tokens. It's an ideal fit for BookingSync JSON REST API v3.
