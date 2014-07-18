# Inquiries

1. TOC
{:toc}


## List inquiries

Returns a list of all inquiries for current account(s).

~~~
GET /inquiries
~~~

<%= render 'json_response', endpoint: "inquiries",
  scopes: %w(inquiries_read-inquiries_write) %>

## Get a single inquiry

Returns a single inquiry identified by ID.

~~~
GET /inquiries/:inquiry_id
~~~

<%= render 'json_response', endpoint: "inquiries",
  scopes: %w(inquiries_read-inquiries_write) %>
