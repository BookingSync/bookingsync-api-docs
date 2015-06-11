# Rentals Taxes

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                   | Type    | Read/Write | Description
-----------------------|---------|------------|------------
id                     | Integer | Read       | Rentals Tax's id.
-----------------------|---------|------------|------------
tax_included_in_rate   | Boolean | Read       | Tax amount already included in rental price if set to true.
-----------------------|---------|------------|------------
created_at             | [Time](/reference/enums#formats) | Read       | Rentals Tax's create time.
updated_at             | [Time](/reference/enums#formats) | Read       | Rentals Tax's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rentals taxes

List all rentals taxes for given account(s).

~~~
GET /rentals_taxes
~~~

<%= render 'json_response', endpoint: "rentals_taxes", scopes: %w(public) %>

## Get a single rentals tax

Returns a single rentals tax identified by ID.

~~~
GET /rentals_taxes/:rentals_tax_id
~~~

<%= render 'json_response', endpoint: "rentals_taxes", scopes: %w(public) %>
