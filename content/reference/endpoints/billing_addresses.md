# Billing Addresses

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active">
    <a href="#payments_read-payments_write" role="tab" data-toggle="pill">
      payments_read / payments_write
    </a>
  </li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="payments_read-payments_write" markdown="1">
### Parameters

Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Billing Address's id.
-----------------|---------|------------|------------
address1         | String  | Read       | Billing Address's first address.
address2         | String  | Read       | Billing Address's second address.
city             | String  | Read       | Billing Address's city.
country_code     | String  | Read       | Billing Address's country_code, list of codes is available at [wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements).
state            | String  | Read       | Billing Address's state.
zip              | String  | Read       | Billing Address's zip.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read       | Billing Address's create time.
updated_at       | [Time](/reference/enums#formats) | Read       | Billing Address's update time.
{: class="table table-bordered"}
  </div>
</div>

## List billing addresses

List all billing addresses for given account.

~~~
GET /billing_addresss
~~~

<%= render 'json_response', endpoint: "billing_addresses",
  scopes: %w(payments_read-payments_write) %>

## Get a single billing address

Returns a single billing address identified by ID.

~~~
GET /billing_addresses/:billing_address_id
~~~

<%= render 'json_response', endpoint: "billing_addresses",
  scopes: %w(payments_read-payments_write) %>
