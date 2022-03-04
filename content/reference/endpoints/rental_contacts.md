# Rental contacts

1. TOC
{:toc}

## Overview

This resource represents Rental Contacts which is a relationship between [Contact person](/reference/endpoints/contacts/) and [Rentals](/reference/endpoints/rentals/).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_read" role="tab" data-toggle="pill">rentals_read</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
account                         | Integer  | Read       | Account's ID related to the Rental contact
contact                         | Integer  | Read       | Contacts's ID related to the Rental contact
rental                          | Integer  | Read       | Rental's ID related to the Rental contact
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental contact's ID.
kind                            | [String](/reference/enums#rental-contact-kinds) | Read | Rental contact's kind
roles                           | [Array of Strings](/reference/enums#rental-contact-roles) | Read | Rental contact's roles
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_read" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
account                         | Integer  | Read       | Account's ID related to the Rental contact
contact                         | Integer  | Read       | Contacts's ID related to the Rental contact
rental                          | Integer  | Read       | Rental's ID related to the Rental contact
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental contact's ID.
kind                            | [String](/reference/enums#rental-contact-kinds) | Read | Rental contact's kind
roles                           | [Array of Strings](/reference/enums#rental-contact-roles) | Read | Rental contact's roles
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                            | Type     | Read/Write | Description | Constraints
--------------------------------|----------|------------|-------------|
account                         | Integer  | Read       | Account's ID related to the Rental contact |
contact                         | Integer  | Read       | Contacts's ID related to the Rental contact |
rental                          | Integer  | Read       | Rental's ID related to the Rental contact |
--------------------------------|----------|------------|-------------|
id                              | Integer  | Read       | Rental contact's ID. |
contact_id                      | Integer  | Write      | Contact's ID. | **Required**
kind                            | [String](/reference/enums#rental-contact-kinds) | Read/Write | Rental contact's kind | **Required**, must be one of the Rental contact kinds, only one `owner` kind is allowed per Rental,  
roles                           | [Array of Strings](/reference/enums#rental-contact-roles) | Read/Write | Rental contact's roles | Must be one of the Rental contact kinds if present, only one `general` role is allowed per Rental, only one `invoices` role is allowed per Rental
--------------------------------|----------|------------|---------------|
created_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's create time. |
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's update time. |
{: class="table table-bordered"}
  </div>
</div>


## List rental contacts

List all rental contacts for a given account(s).

~~~
GET /rental_contacts
~~~

<%= render 'json_response', endpoint: "rental_contacts", scopes: %w(public rentals_read-rentals_write) %>

## Get a single rental contact

Returns a single rental contact identified by ID.

~~~
GET /rental_contacts/:rental_contact_id
~~~

<%= render 'json_response', endpoint: "rental_contacts", scopes: %w(public rentals_read-rentals_write) %>

## Create a new rental contact

Returns a newly created rental contact.

~~~~
POST /rentals/:rental_id/rental_contacts
~~~~

<%= render 'json_response', endpoint: "rental_contacts", request: "create",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

## Update a rental contact

Returns an updated rental contact identified by ID.

~~~
PUT /rental_contacts/:rental_contact_id
~~~

<%= render 'json_response', endpoint: "rental_contacts", request: "update",
  scopes: [{ rentals_write: "rentals_read-rentals_write" }] %>

## Destroy a rental contact

Required OAuth scope: `:rentals_write`

Returns an empty response with '204 No Content' status code on success.

~~~~~~
DELETE /rental_contacts/:rental_contact_id
~~~~~~
