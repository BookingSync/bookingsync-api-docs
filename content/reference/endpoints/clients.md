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
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Client's id.
-----------------|---------|------------|------------
address1         | String  | Read       | Client's first address.
address2         | String  | Read       | Client's second address.
city             | String  | Read       | Client's city.
country_code     | String  | Read       | Client's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
email            | String  | Read       | Client's email.
fax              | String  | Read       | Client's fax.
fullname         | String  | Read       | Client's fullname.
mobile           | String  | Read       | Client's mobile.
notes            | Text    | Read       | Client's notes.
phone            | String  | Read       | Client's phone.
preferred_locale | String  | Read       | Client's contact language preference.
state            | String  | Read       | Client's state.
zip              | String  | Read       | Client's zip.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Client's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Client's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="clients_write" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Client's id.
-----------------|---------|------------|------------
address1         | String  | Read/Write | Client's first address.
address2         | String  | Read/Write | Client's second address.
city             | String  | Read/Write | Client's city.
country_code     | String  | Read/Write | Client's country code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
email            | String  | Read/Write | Client's email.
fax              | String  | Read/Write | Client's fax.
fullname         | String  | Read/Write | **Required**. Client's fullname. (150 characters max)
mobile           | String  | Read/Write | Client's mobile.
notes            | Text    | Read/Write | Client's notes. (1000 characters max)
phone            | String  | Read/Write | Client's phone.
preferred_locale | String  | Read/Write | Client's contact language preference.
state            | String  | Read/Write | Client's state.
zip              | String  | Read/Write | Client's zip.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Client's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Client's update time.
{: class="table table-bordered"}
  </div>
</div>

## List clients

List all clients for given account.

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

<%= render 'json_response', endpoint: "clients", request: "request",
  scopes: [{ clients_write: "clients_read-clients_write" }] %>

## Update a client

Returns an updated client identified by ID.

~~~
PUT /clients/:client_id
~~~

<%= render 'json_response', endpoint: "clients", request: "request",
  scopes: [{ clients_write: "clients_read-clients_write" }] %>
