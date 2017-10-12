# API best practices

1. TOC
{:toc}

Here's the set of practices we recommend to follow to make integration with BookingSync API possibly smooth:

* Synchronize data often enough and persist the objects on your side if you perform a lot of queries. Using local projections of the data will be much better performance-wise and will provide better UX than synchronous calls to BookingSync API every time some piece of information is needed. It's especially important if you are close to the rate limit (1000 requests/hour).

* Fetch all the objects only during the initial synchronization. For all the consecutive synchronizations, use `updated_since` param to fetch only the records that have changed since the provided date and delete the ones that returned in `deleted_ids` array.

* Instead of querying API every few minutes, take advantage of webhooks and get notified when some record is created, updated or deleted. However, the order of the webhooks' delivery is not guaranteed (especially important when there are multiple updates in a short period), so we suggest to schedule a synchronization when the webhook is delivered, instead of trusting that the data from the last webhook represents the most recent projection of a given record. Nevertheless, if you use strategies similar to Event Sourcing and eventual consistency is good enough for your application, you can apply the events based on their timestamps and have the objects eventually consistent.

* Webhook delivery might fail for various reasons (e.g., network problems, application servers being not reachable), it is still recommended to periodically synchronize data, even if you subscribe to all possible events your application needs.

* When creating a new booking, always provide `channel_price` attribute with a price equal to the amount that was confirmed by the traveller so that it is clear what was the price when the booking got created in your application. Most likely it will be initially equal to `final_price`. However, it might diverge later as some new fees can be added to the booking (e.g. from BookingSync UI), which will modify `final_price`. Without `channel_price`, there would not be a reference to the original price.

* Using Ruby on Rails? Don't reinvent the wheel! Take advantage of multiple gems we use for our internal applications:

1. [**bookingsync-api**](https://github.com/BookingSync/bookingsync-api) - API client
2. [**synced**](https://github.com/BookingSync/synced) - extension to ActiveRecord to keep records in sync.
3. [**bookingsync-engine**](https://github.com/BookingSync/bookingsync-engine) - a basic building block for the applications using BookingSync API, which handles OAuth-related processes.
4. [**bookingsync_application**](https://github.com/BookingSync/bookingsync_application) - an engine on top of `bookingsync-engine`, which helps kickstart any applications using BookingSync API
5. [**bookingsync_portal**](https://github.com/BookingSync/bookingsync_portal) - an engine on top of `bookingsync_application`, which helps kickstart channel-like applications using BookingSync API.


