# Create a Booking with a Source

1. TOC
{:toc}


## Preface

For a Property Manager and Owner, having the source of a booking, where it originate from, is a really valuable information. To do so, [BookingSync API](/) allows you to link a [booking](/reference/endpoints/bookings) with a given [source](/reference/endpoints/sources).


## Requirements

To use this scenario, you will need to have the `bookings_write` or `bookings_write_owned` scope.


## Find a source by name

To assign a source when creating a booking, you first need to find it's ID.

Sources are managed per BookingSync account, so you need to use the [List Source](/reference/endpoints/sources/#list-sources/) endpoint to see, if your desired source is already present.

~~~
GET /sources
~~~

<%= render '/json_response.html', guide: "create-a-booking-with-a-source",
  resource_name: "sources", response: "list_sources" %>


## Create source if not existing

If the source you are looking for could not be found, you should [create a new source](/reference/endpoints/sources/#create-a-new-source/).

~~~~
POST /sources
~~~~

<%= render '/json_response.html', guide: "create-a-booking-with-a-source",
  resource_name: "sources", request: "create_source", response: "create_source" %>


## Create a booking with a source

Now that you have the source ID that you want to use, you can [create your booking](/reference/endpoints/bookings/#create-a-new-booking/) with the `source_id` parameter.

~~~~
POST /rentals/:rental_id/bookings
~~~~

<%= render '/json_response.html', guide: "create-a-booking-with-a-source",
  resource_name: "bookings", request: "create_booking_with_source", response: "create_booking_with_source" %>
