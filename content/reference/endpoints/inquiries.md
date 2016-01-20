# Inquiries

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#inquiries_read" role="tab" data-toggle="pill">inquiries_read</a></li>
  <li><a href="#inquiries_write" role="tab" data-toggle="pill">inquiries_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="inquiries_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Inquiry's id.
-----------------|---------|------------|------------
adults           | Integer | Read       | Inquiry's booking number of adults.
children         | Integer | Read       | Inquiry's booking number of children.
country_code     | String  | Read       | Inquiry's client country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
email            | String  | Read       | Inquiry's client email.
firstname        | String  | Read       | Inquiry's client firstname.
lastname         | String  | Read       | Inquiry's client lastname.
message          | Text    | Read       | Inquiry's message.
phone            | String  | Read       | Inquiry's client phone number.
locked           | String  | Read       | Inquiry's locked status.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Inquiry's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Inquiry's update time.
start_at         | [Time](/reference/enums#formats) | Read       | Inquiry's booking start time.
end_at           | [Time](/reference/enums#formats) | Read       | Inquiry's booking end time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inquiries_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Inquiry's id.
-----------------|---------|------------|------------
adults           | Integer | Read/Write | Inquiry's booking number of adults.
children         | Integer | Read/Write | Inquiry's booking number of children.
country_code     | String  | Read/Write | Inquiry's client country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
email            | String  | Read/Write | **Required**. Inquiry's client email.
firstname        | String  | Read/Write | **Required**. Inquiry's client firstname. (50 characters max)
lastname         | String  | Read/Write | **Required**. Inquiry's client lastname. (99 characters max)
message          | Text    | Read/Write | Inquiry's message. (500 characters max)
phone            | String  | Read/Write | Inquiry's client phone number.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Inquiry's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Inquiry's update time.
start_at         | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking start time.
end_at           | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking end time.
{: class="table table-bordered"}
  </div>
    <div class="tab-pane" id="inquiries_write_owned" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Inquiry's id.
-----------------|---------|------------|------------
adults           | Integer | Read/Write | Inquiry's booking number of adults.
children         | Integer | Read/Write | Inquiry's booking number of children.
country_code     | String  | Read/Write | Inquiry's client country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
email            | String  | Read/Write | **Required**. Inquiry's client email.
firstname        | String  | Read/Write | **Required**. Inquiry's client firstname. (50 characters max)
lastname         | String  | Read/Write | **Required**. Inquiry's client lastname. (99 characters max)
message          | Text    | Read/Write | Inquiry's message. (500 characters max)
phone            | String  | Read/Write | Inquiry's client phone number.
locked           | String  | Read/Write | Inquiry's locked status.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Inquiry's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Inquiry's update time.
start_at         | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking start time.
end_at           | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking end time.
{: class="table table-bordered"}
  </div>
</div>

## List inquiries

Returns a list of all inquiries for current account(s).

~~~
GET /inquiries
~~~

<%= render 'json_response', endpoint: "inquiries", scopes: %w(inquiries_read-inquiries_write) %>

## Get a single inquiry

Returns a single inquiry identified by ID.

~~~
GET /inquiries/:inquiry_id
~~~

<%= render 'json_response', endpoint: "inquiries", scopes: %w(inquiries_read-inquiries_write) %>

## Create a new inquiry

Creates an inquiry for given rental.

~~~~
POST /rentals/:rental_id/inquiries
~~~~

<%= render 'json_response', endpoint: "inquiries", request: "request",
  scopes: [{ inquiries_write: "inquiries_read-inquiries_write" }] %>
