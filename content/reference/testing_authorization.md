# Testing Authorization

1. TOC
{:toc}

## Preface

For testing BookingSync API v3 you
[must register an application on the BookinSync website](/reference/requirements/).


While creating your test application to use in console,
make sure to use the following **redirect_uri**:

~~~
urn:ietf:wg:oauth:2.0:oob
~~~

## Console

### Create Authorization Code's Request URL

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID

~~~
https://www.bookingsync.com/oauth/authorize?client_id=CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
~~~

**Note**: To request authorization for [custom scopes](/reference/authorization#scopes),
add at the end of this URL, a space separated list like:
`&scope=bookings_read%20rentals_read` (`%20` represent a **space** within URLs)

### Authorize this app for a given BookingSync User

Visit the generated URL, and authorize access to your test
Application for a BookingSync user.

### Use the Authorization Code to get your Access Token

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID
* `CLIENT_SECRET`: Application's Client Secret _(do not share, same as password)_
* `RETURNED_CODE`: Displayed Authorization Code

~~~
https://www.bookingsync.com/oauth/token?client_id=CLIENT_ID&client_secret=CLIENT_SECRET&code=RETURNED_CODE&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob
~~~

Make a POST request to this URL to get your Authentication Token.

Example with CURL:

~~~
curl -X POST -d "client_id=CLIENT_ID&client_secret=CLIENT_SECRET&code=RETURNED_CODE&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob" "https://www.bookingsync.com/oauth/token"
~~~

Sample response:

~~~json
{
  "access_token": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
  "token_type": "bearer",
  "expires_in": 7200,
  "refresh_token": "fedcba9876543210fedcba9876543210fedcba9876543210fedcba9876543210",
  "scope": "public"
}
~~~

**Note**: Tokens (`access_token`) are only **valid for 2 hours**, you then need to use the
**Refresh Token** to regenerate and new **Token** or restart the flow you just used.


### Using the Refresh Token to get a new Access Token

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID
* `CLIENT_SECRET`: Application's Client Secret _(do not share, same as password)_
* `REFRESH_TOKEN`: Refresh Token given when you got your Access Token in the previous step

~~~
https://www.bookingsync.com/oauth/token?client_id=CLIENT_ID&client_secret=CLIENT_SECRET&refresh_token=REFRESH_TOKEN&grant_type=refresh_token&redirect_uri=urn:ietf:wg:oauth:2.0:oob
~~~

Make a POST request to this URL to get your refreshed Authentication Token.

Example with CURL:

~~~
curl -X POST -d "client_id=CLIENT_ID&client_secret=CLIENT_SECRET&refresh_token=REFRESH_TOKEN&grant_type=refresh_token&redirect_uri=urn:ietf:wg:oauth:2.0:oob" "https://www.bookingsync.com/oauth/token"
~~~

Sample response:

~~~json
{
  "access_token": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
  "token_type": "bearer",
  "expires_in": 7200,
  "refresh_token": "fedcba9876543210fedcba9876543210fedcba9876543210fedcba9876543210",
  "scope": "public"
}
~~~
