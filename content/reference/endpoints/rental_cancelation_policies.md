# Rental Cancelation Policies

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Rental cancelation policy's id.
-----------------|---------|------------|------------
body_translations | [Object](/reference/enums#formats)     | Read       | Rental cancelation policy's body, list of locales described in [enums section](/reference/enums#locales).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rental cancelation policies

List all rental cancelation policies for given account(s).

~~~
GET /rental_cancelation_policies
~~~

<%= render 'json_response', endpoint: "rental_cancelation_policies", scopes: %w(public) %>

## Get a single rental cancelation policy

Returns a single rental cancelation policy identified by ID.

~~~
GET /rental_cancelation_policies/:rental_cancelation_policy_id
~~~

<%= render 'json_response', endpoint: "rental_cancelation_policies", scopes: %w(public) %>
