# updated_since flow

1. TOC
{:toc}

## Preface

In most cases, you will need to fetch the data recurringly from BookingSync API to efficiently use it in your application. The problem is that some API endpoints may return large amounts of data which gets modified quite often. Obviously, fetching thousands of records every time you need to synchronize data is not an option. That's why we introduced `updated_since` flow - to let API consumers fetch the data that has been changed since the provided date of the last synchronization.

## Prerequisites

To take advantage of this feature, you need to fetch all the records from BookingSync API and persist them locally along with the timestamp of the synchronization time. Since the time on the API consumer might be different than the time on the API server, we recommend using `x-updated-since-request-synced-at` response header which will contain the timestamp that you can persist as the date of the latest synchronization - that way you will avoid the case of missing some update due to the slight time differences between consumer and server.

## How to use it

Just provide `updated_since` query param when fetching the records with the value equal to the time of the latest synchronization.

Also, when `updated_since` value is provided, the response will contain `meta` object with `deleted_ids` array containing the list of soft-deleted records since the given time. Thanks to that, you can safely remove all the records on your side with those ids.
