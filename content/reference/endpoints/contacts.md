# Contacts

1. TOC
{:toc}

## Overview

This resource represents the Contacts (people responsible for managing [Rentals](/reference/endpoints/rentals/)) that can be assigned to [Rentals](/reference/endpoints/rentals/) via [Rental Contacts](/reference/endpoints/rental_contacts/).

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rentals_write" role="tab" data-toggle="pill">rentals_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Group     | Name                 | Type    | Read/Write | Description
----------|----------------------|---------|------------|------------
          | account              | Integer | Read       | Account's ID related to the Client
----------|----------------------|---------|------------|------------
          | id                   | Integer | Read       | Contact's id.
          | email                | String  | Read       | Contact's email address.
          | website              | String  | Read       | Contact's website url.
          | private_notes        | String  | Read       | Contact's annotations.
          | gender               | String  | Read       | Contact's gender. List of possible values described in [enums section](/reference/enums#genders).
          | firstname            | String  | Read       | Contact's firstname
          | lastname             | String  | Read       | Contact's lastname
          | fullname             | String  | Read       | Contact's fullname
          | address1             | String  | Read       | Contact's address
          | address2             | String  | Read       | extension of Contact's address
          | city                 | String  | Read       | Contact's city
          | country_code         | String  | Read       | Contact's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
          | state                | String  | Read       | Contact's state
          | zip                  | String  | Read       | Contact's zip code
          | spoken_languages     | Array   | Read       | List of all available languages is described in [enums section](/reference/enums/#locales).
----------|----------------------|---------|------------|------------
phones    |                      | Array   | Read       | Array of contacts's phone numbers.
          | label                | String  | Read       | Phone label.
          | number               | String  | Read       | Client's number.
----------|----------------------|---------|------------|------------|
          | created_at               | [Time](/reference/enums#formats) | Read       | Contact's create time.
          | updated_at               | [Time](/reference/enums#formats) | Read       | Contact's update time.
          | canceled_at              | [Time](/reference/enums#formats) | Read       | Contact's cancel time.
          | forget_me_at             | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr)
          | processing_restricted_at | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr)
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rentals_write" markdown="1">
Group     | Name                 | Type    | Read/Write | Description | Constraints
----------|---------------------|---------|------------|------------|
          | account             | Integer | Read       | Account's ID related to the Client |
----------|---------------------|---------|------------|------------|
          | id                   | Integer | Read       | Contact's id. |
          | email                | String  | Read/Write | Contact's email address. | **Required**, must be in email format
          | website              | String  | Read/Write | Contact's website url. | Must be a URL
          | private_notes        | String  | Read/Write | Contact's annotations. |
          | gender               | String  | Read/Write | Contact's gender. List of possible values described in [enums section](/reference/enums#genders). | Must be one of `genders` enum
          | firstname            | String  | Read/Write | Contact's firstname | **Required**
          | lastname             | String  | Read/Write | Contact's lastname |  **Required**
          | fullname             | String  | Read       | Contact's fullname |
          | address1             | String  | Read/Write | Contact's address |  **Required**, Maximum length: 100, cannot contain non-printable characters
          | address2             | String  | Read/Write | extension of Contact's address | Maximum length: 100, cannot contain non-printable characters
          | city                 | String  | Read/Write | Contact's city | **Required**, Maximum length: 100
          | country_code         | String  | Read/Write | Contact's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements). | **Required**, Must be a country code enum
          | state                | String  | Read/Write | Contact's state | Maximum length: 100, cannot contain non-printable characters
          | zip                  | String  | Read/Write | Contact's zip code | **Required**,  Maximum length: 15, cannot contain non-printable characters
          | spoken_languages     | Array   | Read/Write | List of all available languages is described in [enums section](/reference/enums/#locales). | Each item must be one of available locales, at least one element is **required**
----------|----------------------|---------|------------|------------|
phones    |                      | Array   | Read/Write | Array of contacts's phone numbers. |
          | label                | String  | Read/Write | Phone label. | **Required**, must be in email format (if the element is present in `phones` array)
          | number               | String  | Read/Write | Contacts's number. | **Required**, must be in phone number format (if the element is present in `phones` array)
----------|----------|---------|------------|------------|
          | created_at           | [Time](/reference/enums#formats) | Read       | Contact's create time. |
          | updated_at           | [Time](/reference/enums#formats) | Read       | Contact's update time. |
          | canceled_at          | [Time](/reference/enums#formats) | Read       | Contact's cancel time. |
          | forget_me_at         | [Time](/reference/enums#formats) | Read       | Contact's forget time. |
          | processing_restricted_at | [Time](/reference/enums#formats) | Read       | Contact's processing restriction time. |
{: class="table table-bordered"}
  </div>
</div>

## List contacts

List all contacts for a given account(s).

~~~
GET /contacts
~~~

<%= render '/json_response.html', endpoint: "contacts", scopes: [{ public: "public-rentals_read" }] %>

## Get a single contact

Returns a single contact identified by ID.

~~~
GET /contacts/:contact_id
~~~

<%= render '/json_response.html', endpoint: "contacts", scopes: [{ public: "public-rentals_read" }] %>

## Create a new contact

Creates a contact

~~~
POST /contacts
~~~

<%= render '/json_response.html', endpoint: "contacts", request: "create",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Update a contact

Returns an updated contact identified by ID.

~~~
PUT /contact/:contact_id
~~~

<%= render '/json_response.html', endpoint: "contacts", request: "update",
  scopes: [{ rentals_write: "public-rentals_write" }] %>

## Destroy a contact

Required OAuth scope: `:rentals_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /contacts/:contact_id
~~~~~~
