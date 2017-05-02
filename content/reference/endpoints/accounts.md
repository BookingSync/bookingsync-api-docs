# Accounts

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Group      | Subgroup | Name             | Type    | Read/Write | Description
-----------|----------|------------------|---------|------------|------------
           |          | id               | Integer | Read                                 | Account's id.
-----------|----------|------------------|---------|------------|------------
           |          | address1         | String  | Read                                 | Company's address
           |          | address2         | String  | Read                                 | Extension of company's address.
           |          | business_name    | String  | Read                                 | Account's business name.
           |          | city             | String  | Read                                 | City in which company is located.
           |          | country_code     | String  | Read                                 | Code of a country in which caompany is based in.
           |          | default_locale   | String  | Read                                 | Account's default locale. List of all available locales is described in [enums section](/reference/enums/#locales).
           |          | email            | String  | Read                                 | Account's email.
           |          | selected_locales | Array   | Read                                 | Array of all locales selected for this Account. List of all available locales is described in [enums section](/reference/enums/#locales).
           |          | state            | String  | Read                                 | State in which company is located.
           |          | status           | String  | Read                                 | Account's status, list of statuses described in [enums section](/reference/enums/#account-statuses).
           |          | website          | String  |                                      | Company's website
           |          | zip              | String  | Read                                 | Zip code.
-----------|----------|------------------|---------|------------|------------
           |          | created_at       | [Time](/reference/enums#formats)  | Read       | Account's create time.
           |          | updated_at       | [Time](/reference/enums#formats)  | Read       | Account's update time.
-----------|----------|------------------|---------|------------|------------
phones     |          |                  | Object  | Read                                 | Set of company's phone numbers.
           |          | phone            | String  | Read                                 | Company's phone number.
           |          | mobile           | String  | Read                                 | Company's mobile phone number.
           |          | fax              | String  | Read                                 | Company's fax number.
-----------|----------|------------------|---------|------------|------------
prefrences |          |                  | Object  | Read                                 | Set of account's preferences.
           | bookings |                  | Object  | Read                                 | Set of booking's preferences.
           |          | default_arrival_time         | Integer | Read                     | Default checkin hour.
           |          | default_departure_time       | Integer | Read                     | Default checkout hour.
           |          | default_communication_locale | String  | Read                     | Default language locale for communication with customer. List of all available locales is described in [enums section](/reference/enums/#locales).
{: class="table table-bordered"}
  </div>
</div>

## List accounts

List all authorized accounts.

<div class="callout callout-info">
  <h4>Limitations</h4>

  <p>Only the <a href="/reference/authorization/#client-credentials-flow">Client Credentials Flow</a> currently allow you to retrieve multiple accounts at ones. Using an other authorization flow, this endpoint will only return a single authorized account.</p>
</div>

~~~
GET /accounts
~~~

<%= render 'json_response', endpoint: "accounts", scopes: %w(public) %>

## Get a single account

Returns a single authorized account identified by ID.

~~~
GET /accounts/:account_id
~~~

<%= render 'json_response', endpoint: "accounts", scopes: %w(public) %>
