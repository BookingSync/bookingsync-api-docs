# Clients

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#clients_read" role="tab" data-toggle="pill">clients_read</a></li>
  <li><a href="#clients_write" role="tab" data-toggle="pill">clients_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="clients_read" markdown="1">
Group     | Name             | Type    | Read/Write | Description
----------|------------------|---------|------------|------------
          | id               | Integer | Read       | Client's id.
----------|------------------|---------|------------|------------
          | company          | String  | Read       | Client's company name.
          | fullname         | String  | Read       | Client's fullname.
          | firstname        | String  | Read       | Client's first name.
          | lastname         | String  | Read       | Client's last name.
          | notes            | Text    | Read       | Client's notes.
          | passport         | String  | Read       | Client's passport id.
          | preferred_locale | String  | Read       | Client's contact language preference.
          | vat_number       | String  | Read       | Client's company vat number.
----------|------------------|---------|------------|------------
          | created_at       | [Time](/reference/enums#formats) | Read       | Client's create time.
          | updated_at       | [Time](/reference/enums#formats) | Read       | Client's update time.
          | forget_me_at     | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr).
          | processing_restricted_at | [Time](/reference/enums#formats) | Read       | Refer to [GDPR guide](/guides/gdpr)
----------|------------------|---------|------------|------------
addresses |                  | Array   | Read       | Array of client's addresses.
          | address1         | String  | Read       | Client's first address.
          | address2         | String  | Read       | Client's second address.
          | city             | String  | Read       | Client's city.
          | country_code     | String  | Read       | Client's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
          | label            | String  | Read       | Address label.
          | state            | String  | Read       | Client's state.
          | zip              | String  | Read       | Client's zip.
----------|------------------|---------|------------|------------
emails    |                  | Array   | Read       | Array of client's emails.
          | email            | String  | Read       | Client's email.
          | label            | String  | Read       | Email label.
----------|------------------|---------|------------|------------
phones    |                  | Array   | Read       | Array of client's phone numbers.
          | label            | String  | Read       | Phone label.
          | number           | String  | Read       | Client's number.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="clients_write" markdown="1">
Group     | Name             | Type    | Read/Write | Description
----------|------------------|---------|------------|------------
          | id               | Integer | Read       | Client's id.
----------|------------------|---------|------------|------------
          | company          | String  | Read/Write | Client's company name.
          | fullname         | String  | Read/Write | **Required**. Client's fullname. (150 characters max)
          | firstname        | String  | Read/Write | Client's first name. (150 characters max)
          | lastname         | String  | Read/Write | Client's last name. (150 characters max)
          | notes            | Text    | Read/Write | Client's notes. (5000 characters max)
          | passport         | String  | Read/Write | Client's passport id. (50 characters max)
          | preferred_locale | String  | Read/Write | Client's contact language preference.
          | vat_number       | String  | Read/Write | Client's company vat number.
----------|------------------|---------|------------|------------
          | created_at       | [Time](/reference/enums#formats) | Read       | Client's create time.
          | updated_at       | [Time](/reference/enums#formats) | Read       | Client's update time.
----------|------------------|---------|------------|------------
addresses |                  | Array   | Read/Write | Array of client's addresses.
          | address1         | String  | Read/Write | Client's first address.
          | address2         | String  | Read/Write | Client's second address.
          | city             | String  | Read/Write | Client's city.
          | country_code     | String  | Read/Write | Client's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
          | label            | String  | Read/Write | Address label.
          | state            | String  | Read/Write | Client's state.
          | zip              | String  | Read/Write | Client's zip.
----------|------------------|---------|------------|------------
emails    |                  | Array   | Read/Write | Array of client's emails.
          | email            | String  | Read/Write | Client's email.
          | label            | String  | Read/Write | Email label.
----------|------------------|---------|------------|------------
phones    |                  | Array   | Read/Write | Array of client's phone numbers.
          | label            | String  | Read/Write | Phone label.
          | number           | String  | Read/Write | Client's number.
{: class="table table-bordered"}
  </div>
</div>

<div class="callout callout-info" markdown="1">
  <h4>Grouped attributes</h4>
  First set of attributes in array group will always be used as default `address`, `email` or `phone`.
</div>

## List clients

List all clients for a given account.

~~~
GET /clients
~~~

<%= render 'json_response', endpoint: "clients", scopes: %w(clients_read-clients_write) %>

## Get a single client

Returns a single client identified by ID.

~~~
GET /clients/:client_id
~~~

<%= render 'json_response', endpoint: "clients", scopes: %w(clients_read-clients_write) %>

## Create a new client

Returns a newly created client.

~~~~
POST /clients
~~~~

<%= render 'json_response', endpoint: "clients", request: "create",
  scopes: [{ clients_write: "clients_read-clients_write" }] %>

## Update a client

<div class="callout callout-warning" markdown="1">
  <h4>Grouped attributes</h4>
  Please note that updating grouped attributes requires the full array to be re-sent, to avoid data loss.<br>
  In below example all `phones` elements are present.
</div>

Returns an updated client identified by ID.

~~~
PUT /clients/:client_id
~~~

<%= render 'json_response', endpoint: "clients", request: "update",
  scopes: [{ clients_write: "clients_read-clients_write" }] %>
