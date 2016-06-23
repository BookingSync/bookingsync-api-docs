# Read All Authorized Accounts At Once

1. TOC
{:toc}


## Preface

In some cases it can be very convenient to read information from all the accounts in a single query. This is possible for reading public information (behind the `public` scope) by using the [Client Credentials Flow](/reference/authorization/#client-credentials-flow).


## Requirements

As only public information are returned when using the [Client Credentials Flow](/reference/authorization/#client-credentials-flow) you will need to make sure that your test accounts have `published` rentals as only those ones are returned.

To test the examples of this guide, you will need to authorize at least 2 test accounts.


## Getting A Client Credential Token

Use the schema below with by replacing:

* `CLIENT ID`: Application's Client ID
* `CLIENT_SECRET`: Application's Client Secret _(do not share, same as password)_

~~~
https://www.bookingsync.com/oauth/token?client_id=CLIENT_ID&client_secret=CLIENT_SECRET&grant_type=client_credentials
~~~

Make a POST request to this URL to get your Authentication Token.

Example with CURL:

~~~
curl -X POST -d "client_id=CLIENT_ID&client_secret=CLIENT_SECRET&grant_type=client_credentials" "https://www.bookingsync.com/oauth/token"
~~~

Sample response:

~~~json
{
  "access_token": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
  "token_type": "bearer",
  "expires_in": 7200,
  "scope": "public",
  "created_at": 1466671142
}
~~~

**Note**: Tokens (`access_token`) are only **valid for 2 hours**, you then need to request a new one.

## Read All Published Rentals

Now that you have your `access_token`, you can read all the published rentals with the following request.

<div class="callout callout-info">
  <h4>Pagination</h4>

  <p>Do not forget that all <a href="/reference/#pagination">responses are paginated</a>.</p>
</div>

Example with CURL:

~~~
curl --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' https://www.bookingsync.com/api/v3/rentals
~~~
