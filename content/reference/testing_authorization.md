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

<div class="embed-responsive embed-responsive-4by3">
 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/lRkllEnbV3E" allowfullscreen></iframe>
</div>

### 1. Authorize your application

As a one time process, you will need to authorize your application by requesting the account owner to grant you access.

This process require user interaction but won't be required any more, so you can perfectly run background jobs later on.

This authorization can only be revoked if the account owner uninstall your application.

#### 1.a Create Authorization Code's Request URL

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID

~~~
https://www.bookingsync.com/oauth/authorize?client_id=CLIENT_ID&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code
~~~

**Note**: To request authorization for [custom scopes](/reference/authorization#scopes),
add at the end of this URL, a space separated list like:
`&scope=bookings_read%20rentals_read` (`%20` represent a **space** within URLs)

#### 1.b Authorize this app for a given BookingSync User

Visit the generated URL, and authorize access to your test
Application for a BookingSync user.

#### 1.c Use the Authorization Code to get your Access Token

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID
* `CLIENT_SECRET`: Application's Client Secret _(do not share, same as password)_
* `RETURNED_CODE`: Displayed Authorization Code

~~~
https://www.bookingsync.com/oauth/token?client_id=CLIENT_ID&client_secret=CLIENT_SECRET&code=RETURNED_CODE&grant_type=authorization_code&redirect_uri=urn:ietf:wg:oauth:2.0:oob
~~~

Make a POST request to this URL to get your Authentication Token.

Example with CURL:

~~~bash
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
**Refresh Token** to regenerate and new set of **Tokens** or restart the flow you just used.

### 2. Using the Refresh Token to get a new Access Token

Once your application is authorized, you only need this single step to get a valid `access_token` if the one you have is expired.

API calls made with expired `access_token` will return an HTTP Status Code 401 (Unauthorized).

To prevent this from happening, you can request a new `access_token` using the `refresh_token` as demonstrated below before the `access_token` expiration.
You can find your token lifetime (in seconds), by checking the `expires_in` attribute in authorization response.

<div class="callout callout-info" markdown="1">
  <h4>Refresh Token Behavior</h4>
  <p>A refresh token is valid as long as it's used (or your application is uninstalled), therefore <strong>you can also request a new set of tokens after expiration of your <code>access_token</code>.</strong></p>

  <p>A new <code>refresh_token</code> will be generated after each refresh, therefore make sure to save it.</p>

  <p>As the refresh token gives you lifelong access to an account, it must be stored securely.</p>
</div>

#### Refresh Token Process

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID
* `CLIENT_SECRET`: Application's Client Secret _(do not share, same as password)_
* `REFRESH_TOKEN`: Refresh Token given when you got your Access Token in the previous step

~~~
https://www.bookingsync.com/oauth/token?client_id=CLIENT_ID&client_secret=CLIENT_SECRET&refresh_token=REFRESH_TOKEN&grant_type=refresh_token&redirect_uri=urn:ietf:wg:oauth:2.0:oob
~~~

Make a POST request to this URL to get your refreshed Authentication Token.

Example with CURL:

~~~bash
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

