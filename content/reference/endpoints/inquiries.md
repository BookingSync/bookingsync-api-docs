# Inquiries

1. TOC
{:toc}

## Overview

This resource represents Inquiries that can be later turned into [Bookings](/reference/endpoints/bookings/). They usually originate from the widgets where you can select dates and either create a Booking right away or send the Inquiry with some question.

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
rental           | Integer | Read       | Rental's ID related to the Inquiry
source           | Integer | Read       | Source's ID related to the Inquiry
booking          | Integer | Read       | Booking's ID related to the Inquiry
conversation     | Integer | Read       | Inbox Conversation's ID related to the Inquiry
account          | Integer | Read       | Account's ID related to the Inquiry
-----------------|---------|------------|------------
id               | Integer | Read       | Inquiry's ID.
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
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
rental           | Integer | Read       | Rental's ID related to the Inquiry |
source           | Integer | Read       | Source's ID related to the Inquiry |
booking          | Integer | Read       | Booking's ID related to the Inquiry |
conversation     | Integer | Read       | Inbox Conversation's ID related to the Inquiry |
account          | Integer | Read       | Account's ID related to the Inquiry |
-----------------|---------|------------|------------|
id               | Integer | Read       | Inquiry's ID. |
source_id        | Integer | Write      | Source ID related to the Inquiry. |
rental_id        | Integer | Write (update-only) | Rental ID related to the Inquiry |   
adults           | Integer | Read/Write | Inquiry's booking number of adults. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be greater than or equal to: 1
children         | Integer | Read/Write | Inquiry's booking number of children. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be greater than or equal to: 0
country_code     | String  | Read/Write | Inquiry's client country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements). | **Required** if `phone` present, must be one on country codes enum
email            | String  | Read/Write | Inquiry's client email. | **Required**, must be of email format
firstname        | String  | Read/Write | Inquiry's client firstname. | **Required**, Maximum length: 50
lastname         | String  | Read/Write | Inquiry's client lastname. | **Required**, Maximum length: 99
message          | String  | Read/Write | Inquiry's message. | Maximum length: 500
phone            | String  | Read/Write | Inquiry's client phone number. | Must be of a phone number format (regexp: `\A\+?[ -.0-9+EXText()]*\Z`)
locked           | String  | Read/Write (create-only) | Inquiry's locked status. |
accept_privacy_policy | Boolean | Write (create-only) | Confirm that the Privacy Policy has been accepted (check [Accounts](/reference/endpoints/accounts/ for more details)) |  
-----------------|---------|------------|------------|
created_at       | [Time](/reference/enums#formats) | Read       | Inquiry's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Inquiry's update time. |
start_at         | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking start time. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be in the future, must be before `end_at`
end_at           | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking end time. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be in the future, must be after `start_at`
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inquiries_write_owned" markdown="1">
Name             | Type    | Read/Write | Description | Constraints
-----------------|---------|------------|-------------|
rental           | Integer | Read       | Rental's ID related to the Inquiry |
source           | Integer | Read       | Source's ID related to the Inquiry |
booking          | Integer | Read       | Booking's ID related to the Inquiry |
conversation     | Integer | Read       | Inbox Conversation's ID related to the Inquiry |
account          | Integer | Read       | Account's ID related to the Inquiry |
-----------------|---------|------------|------------|
id               | Integer | Read       | Inquiry's ID. |
source_id        | Integer | Write      | Source ID related to the Inquiry. |
rental_id        | Integer | Write (update-only) | Rental ID related to the Inquiry |   
adults           | Integer | Read/Write | Inquiry's booking number of adults. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be greater than or equal to: 1
children         | Integer | Read/Write | Inquiry's booking number of children. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be greater than or equal to: 0
country_code     | String  | Read/Write | Inquiry's client country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements). | **Required** if `phone` present, must be one on country codes enum
email            | String  | Read/Write | Inquiry's client email. | **Required**, must be of email format
firstname        | String  | Read/Write | Inquiry's client firstname. | **Required**, Maximum length: 50
lastname         | String  | Read/Write | Inquiry's client lastname. | **Required**, Maximum length: 99
message          | String  | Read/Write | Inquiry's message. | Maximum length: 500
phone            | String  | Read/Write | Inquiry's client phone number. | Must be of a phone number format
locked           | String  | Read/Write | Inquiry's locked status. |
accept_privacy_policy | Boolean | Write (create-only) | Confirm that the Privacy Policy has been accepted (check [Accounts](/reference/endpoints/accounts/ for more details)) |
-----------------|---------|------------|------------|
created_at       | [Time](/reference/enums#formats) | Read       | Inquiry's create time. |
updated_at       | [Time](/reference/enums#formats) | Read       | Inquiry's update time. |
start_at         | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking start time. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be in the future, must be before `end_at`
end_at           | [Time](/reference/enums#formats) | Read/Write | Inquiry's booking end time. | Conditionally required (depending on the config on the Account-level, it's highly recommended to treat it as **required**), must be in the future, must be after `start_at`
{: class="table table-bordered"}
  </div>
</div>

## List inquiries


Based on the OAuth token scopes bookings listing will be limited to a
certain range.

Scope                     | Read Permissions
--------------------------|------------
`:inquiries_write_owned`  | Display only inquiries created by application making the request
`:inquiries_read`         | Display all inquiries
`:inquiries_write`        | Display all inquiries
{: class="table table-bordered"}

Returns a list of all inquiries for current account(s).

~~~
GET /inquiries
~~~

<%= render 'json_response', endpoint: "inquiries", scopes: %w(inquiries_read-inquiries_write-inquiries_write_owned) %>

## Get a single inquiry

Returns a single inquiry identified by ID.

~~~
GET /inquiries/:inquiry_id
~~~

<%= render 'json_response', endpoint: "inquiries", scopes: %w(inquiries_read-inquiries_write-inquiries_write_owned) %>

## Create a new inquiry

Creates an inquiry for given rental.

~~~~
POST /rentals/:rental_id/inquiries
~~~~

<%= render 'json_response', endpoint: "inquiries", request: "create",
  scopes: %w(inquiries_write-inquiries_write_owned) %>

## Update a inquiry

Returns an updated inquiry identified by ID.

~~~
PUT /inquiries/:id
~~~

<%= render 'json_response', endpoint: "inquiries", request: "update",
  scopes: %w(inquiries_write-inquiries_write_owned) %>
