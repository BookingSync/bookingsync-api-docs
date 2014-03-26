# Inquiries

1. TOC
{:toc}


## List inquiries

Required OAuth scope: `:inquiries_read` or `:inquiries_write`.

Returns a list of all inquiries for current account(s).

~~~
GET /inquiries
~~~

Response:

<%= json_response 'inquiries/index' %>

## Get a single inquiry

Required OAuth scope: `:inquiries_read` or `:inquiries_write`.

Returns a single inquiry identified by ID.

~~~
GET /inquiries/ID
~~~

Response:

<%= json_response 'inquiries/index' %>
