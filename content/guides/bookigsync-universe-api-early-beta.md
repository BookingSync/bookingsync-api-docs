# BookingSync Universe API [Early Beta]

1. TOC
{:toc}

## Preface

Since BookingSync ecosystem is much more than the central application which exposes API v3 (count in all the applications available in the store!), it would be certainly useful to have the API access to those apps as well. That's why we developed **BookingSync Universe API**  which allows you to use one token to access multiple applications, as long as it has the proper OAuth scopes!

## How It Works

Each application defines certain scopes that allow you to access API, in the same way as it works for API v3. For your application to take advantage of BookingSync Universe API, you merely need to request those scopes during the authorization process, and that's it! You can use the same OAuth scope to access both API v3 and APIs of the applications!

## Examples: Website App - Rentals' Custom Schema

Currently, Website app offers limited support for BookingSync Universe API in its `/rentals` and `/websites` endpoints.  The API is fully [JSONAPI 1.0 compliant](http://jsonapi.org), which is a different format than the one for API v3.

The API is accessible under the following domain: https://website.apps.bookingsync.com/api/admin/v1 and defines two sets of scopes:

1. Read/Write scopes for websites:

* __website__websites_read
* __website__websites_write

2. Read/Write scopes for rentals:

* __website__rentals_read
* __website__rentals_write

To manage the custom schema for rentals and websites, you will need first to define the schema on website level, under `rentals-custom-data-schema` attribute. It is supposed to be a simple JSON field (key-value store), with attribute names as keys and types as values. You can use the following types: `string`, `integer` and `big_decimal`.

Here is an example request how to define custom schema for rentals:

~~~
curl --header 'Authorization: Bearer YOUR_TOKEN' --header 'Content-Type: application/vnd.api+json' --request PUT --data '{ "data": { "id": 1, "type": "websites", "attributes": { "rentals-custom-data-schema": { "pool_size": "integer" } } } }' https://website.apps.bookingsync.com/api/admin/v1/websites/1
~~~

Now that the schema is defined, you can persist those attribute on rentals, which can be done under `custom-attributes` JSON field, which is a key-value store as well with attribute names as keys and their values as the values of the hash.

Here is an example request how to define store custom attributes on rentals:

~~~
curl --header 'Authorization: Bearer YOUR_TOKEN' --header 'Content-Type: application/vnd.api+json' --request PUT --data '{ "data": { "id": 1, "type": "rentals", "attributes": { "custom-attributes": { "pool_size": 1 } } } }' https://website.apps.bookingsync.com/api/admin/v1/rentals/1
~~~
