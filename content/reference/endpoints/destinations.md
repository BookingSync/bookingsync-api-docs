# Destinations

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name                            | Type     | Read/Write | Description
--------------------------------|----------|-------------------------
id                              | Integer  | Read       | Destination's id.
--------------------------------|----------|-------------------------
aliases_LOCALE                  | String   | Read       | Destination's aliases, list of locales described in [enums section](/reference/enums#locales).
counter                         | String   | Read       | Destination's use counter for rentals.
fullname_LOCALE                 | String   | Read       | Destination's fullname, list of locales described in [enums section](/reference/enums#locales).
name_LOCALE                     | String   | Read       | Destination's name, list of locales described in [enums section](/reference/enums#locales).
permalink_LOCALE                | String   | Read       | Destination's permalink, list of locales described in [enums section](/reference/enums#locales).
{: class="table table-bordered"}
  </div>
</div>

## List destinations

List all destinations for given account(s).

~~~
GET /destinations
~~~

<%= render 'json_response', endpoint: "destinations", scopes: %w(public) %>

## Get a single destination

Returns a single destination identified by ID.

~~~
GET /destinations/:destination_id
~~~

<%= render 'json_response', endpoint: "destinations", scopes: %w(public) %>
