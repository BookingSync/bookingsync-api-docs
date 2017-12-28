# Rental Cancelation Policy Items

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name               | Type    | Read/Write | Description
-------------------|---------|------------|------------
id                 | Integer | Read       | Rental cancelation policy item's id.
-------------------|---------|------------|------------
eligible_days      | Integer | Read       | Number of days before the check-in from which the penalty applies.
penalty_percentage | [Decimal](/reference/enums#formats) | Read       | Percentage of penalty from the booking price.
-------------------|---------|------------|------------
created_at         | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's create time.
updated_at         | [Time](/reference/enums#formats) | Read         | Rental cancelation policy's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rental cancelation policy items

List all rental cancelation policy items for given account(s).

~~~
GET /rental_cancelation_policy_items
~~~

<%= render 'json_response', endpoint: "rental_cancelation_policy_items", scopes: %w(public) %>

## Get a single rental cancelation policy item

Returns a single rental cancelation policy item identified by ID.

~~~
GET /rental_cancelation_policy_items/:rental_cancelation_policy_item_id
~~~

<%= render 'json_response', endpoint: "rental_cancelation_policy_items", scopes: %w(public) %>
