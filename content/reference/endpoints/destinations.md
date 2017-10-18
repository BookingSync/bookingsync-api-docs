# Destinations

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|-------------------------
id                              | Integer  | Read       | Destination's id.
--------------------------------|----------|-------------------------
aliases                         | [Object](/reference/enums#formats)     | Read       | Destination's aliases, list of locales described in [enums section](/reference/enums#locales).
ancestor_ids                    | Array    | Read       | Array of destination's ancestor destinations ids.
counter                         | Integer  | Read       | Destination's use counter for rentals.
fullname                        | [Object](/reference/enums#formats)     | Read       | Destination's fullname, list of locales described in [enums section](/reference/enums#locales).
name                            | [Object](/reference/enums#formats)     | Read       | Destination's name, list of locales described in [enums section](/reference/enums#locales).
permalink                       | [Object](/reference/enums#formats)     | Read       | Destination's permalink, list of locales described in [enums section](/reference/enums#locales).
{: class="table table-bordered"}
  </div>
</div>

## List destinations

List all destinations for a given account(s).

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
