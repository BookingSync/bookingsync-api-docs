# Accounts

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#preferences_general_settings_read" role="tab" data-toggle="pill">preferences_general_settings_read</a></li>
  <li><a href="#preferences_general_settings_write" role="tab" data-toggle="pill">preferences_general_settings_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                | Type    | Read/Write | Description
--------------------|---------|------------|------------
id                  | Integer | Read       | Preferences General Setting's id.
--------------------|---------|------------|------------
email            | String | Read       | Account's email
default_arrival_time                | [Object](/reference/enums#formats)| Read       | Default arrival time for bookings
default_arrival_end_time          | Integer | Read       | Default arrival end time for bookings
default_departure_time        | Integer | Read       | Default departure time for bookings
selected_locales            | Array[String] | Read/Write       | List of locales supported by the account
business_name            | String | Read       | Account's business name
website            | String | Read       | Account's website
phone            | String | Read       | Account's phone
mobile            | String | Read       | Account's mobile
fax            | String | Read       | Account's fax
address1            | String | Read       | Account's address1
address2            | String | Read       | Account's address2
city            | String | Read       | Account's city
state            | String | Read       | Account's state
zip            | String | Read       | Account's zip
country            | String | Read       | Account's country
country_code            | String | Read       | Account's country code
full_address            | String | Read       | Account's full address
default_communication_locale            | String | Read       | Account's default communicaton locale
rounding_percentage_up            | [Decimal](/reference/enums#formats) | Read       | Rounding percentage up setting used for rounding rental's price
rounding_percentage_down            | [Decimal](/reference/enums#formats) | Read       | Rounding percentage down setting used for rounding rental's price
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read        | Preferences General Setting's create time.
updated_at          | [Time](/reference/enums#formats) | Read        | Preferences General Setting's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="preferences_general_settings_write" markdown="1">
Name                | Type    | Read/Write | Description
--------------------|---------|------------|------------
id                  | Integer | Read       | Preferences General Setting's id.
--------------------|---------|------------|------------
email            | String | Read       | Account's email
default_arrival_time                | [Object](/reference/enums#formats)| Read       | Bathroom's name, list of locales described in [enums section](/reference/enums#locales).
default_arrival_end_time          | Integer | Read       | Default arrival end time for bookings
default_departure_time        | Integer | Read       | Default departure time for bookings
selected_locales            | Array[String] | Read/Write       | List of locales supported by the account
business_name            | String | Read       | Account's business name
website            | String | Read       | Account's website
phone            | String | Read       | Account's phone
mobile            | String | Read       | Account's mobile
fax            | String | Read       | Account's fax
address1            | String | Read       | Account's address1
address2            | String | Read       | Account's address2
city            | String | Read       | Account's city
state            | String | Read       | Account's state
zip            | String | Read       | Account's zip
country            | String | Read       | Account's country
country_code            | String | Read       | Account's country code
full_address            | String | Read       | Account's full address
default_communication_locale            | String | Read       | Account's default communicaton locale
rounding_percentage_up            | [Decimal](/reference/enums#formats) | Read       | Rounding percentage up setting used for rounding rental's price
rounding_percentage_down            | [Decimal](/reference/enums#formats) | Read       | Rounding percentage down setting used for rounding rental's price
--------------------|---------|------------|------------
created_at          | [Time](/reference/enums#formats) | Read        | Preferences General Setting's create time.
updated_at          | [Time](/reference/enums#formats) | Read        | Preferences General Setting's update time.
{: class="table table-bordered"}
  </div>
</div>

## List preferences general settings

List all preferences general settings for authorized accounts.

~~~
GET /preferences_general_settings
~~~

<%= render 'json_response', endpoint: "preferences_general_settings", scopes: %w(preferences_general_settings_read-preferences_general_settings_write) %>

## Get a preferences general setting

Returns a single preferences general setting identified by ID.

~~~
GET /preferences_general_settings/:preferences_general_setting_id
~~~

<%= render 'json_response', endpoint: "preferences_general_settings", scopes: %w(preferences_general_settings_read-preferences_general_settings_write) %>

## Update a preferences general setting

Returns an updated preferences general setting identified by ID.

~~~
PUT /preferences_general_settings/:preferences_general_setting_id
~~~

<%= render 'json_response', endpoint: "preferences_general_settings", request: "update",
  scopes: [{ preferences_general_settings_write: "preferences_general_settings_read-preferences_general_settings_write" }] %>
