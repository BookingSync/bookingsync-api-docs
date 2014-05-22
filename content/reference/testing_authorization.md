# Testing Authorization

1. TOC
{:toc}

For testing BookingSync API v3 you
[must register an application on the BookinSync website](/reference/requirements/).

While creating your test application to use in console,
make sure to use the following *redirect_uri*:

```
urn:ietf:wg:oauth:2.0:oob
```

## Console

### Create Authorization Code's Request URL

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID

```
https://www.bookingsync.com/oauth/authorize?client_id=CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
```

*Note*: To request authorization for [custom scopes](/reference/authorization#scopes),
add at the end of this URL, a space separated list like:
`&scope=bookings_read%20rentals_read` (`%20` represent a *space* within URLs)

### Authorize this app for a given BookingSync User

Visit the generated URL, and authorize access to your test
Application for a BookingSync user.

### Use the Authorization Code to get your Token

Use the schema below with by replacing:

* `RETURNED_CODE`: Displayed Authorization Code
* `CLIENT ID`: Application's Client ID
* `CLIENT_SECRET`: Application's Client Secret _(do not share, same as password)_

```
https://www.bookingsync.com/oauth/token?client_id=CLIENT_ID&client_secret=CLIENT_SECRET&code=RETURNED_CODE&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob
```

Make a POST request to this URL to get your Authentication Token.

Example with CURL:

```
curl -X POST -d "client_id=CLIENT_ID&client_secret=CLIENT_SECRET&code=RETURNED_CODE&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob" "https://www.bookingsync.com/oauth/token"
```

*Note*: Tokens (`access_token`) are only *valid for 2 hours*, you then need to use the
*Refresh Token* to regenerate and new *Token* or restart the flow you just used.
