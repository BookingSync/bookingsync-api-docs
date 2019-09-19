# Rental contacts

1. TOC
{:toc}

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
id                              | Integer  | Read       | Rental contact's id.
contact_id                      | Integer  | Read       | Contact's id.
--------------------------------|----------|------------|--------------
kind                            | [String](/reference/enums#rental-contact-kinds) | Read | Rental contact's kind
roles                           | [Array of Strings](/reference/enums#rental-contact-roles) | Read | Rental contact's roles
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's update time.
canceled_at                     | [Time](/reference/enums#formats) | Read         | Rental contact's canceled time if canceled.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_read" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental contact's id.
contact_id                      | Integer  | Read       | Contact's id.
--------------------------------|----------|------------|--------------
kind                            | [String](/reference/enums#rental-contact-kinds) | Read | Rental contact's kind
roles                           | [Array of Strings](/reference/enums#rental-contact-roles) | Read | Rental contact's roles
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's update time.
canceled_at                     | [Time](/reference/enums#formats) | Read         | Rental contact's canceled time if canceled.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
id                              | Integer  | Read       | Rental contact's id.
contact_id                      | Integer  | Write      | Contact's id.
--------------------------------|----------|------------|--------------
kind                            | [String](/reference/enums#rental-contact-kinds) | Read/Write | Rental contact's kind
roles                           | [Array of Strings](/reference/enums#rental-contact-roles) | Read/Write | Rental contact's roles
--------------------------------|----------|------------|--------------
created_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's create time.
updated_at                      | [Time](/reference/enums#formats) | Read         | Rental contact's update time.
canceled_at                     | [Time](/reference/enums#formats) | Read         | Rental contact's canceled time if canceled.
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
