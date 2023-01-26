# Tax Rules

1. TOC
{:toc}

## Overview

This resource represents Tax Rules which are applicable to [Rentals Taxes](/reference/endpoints/rentals_taxes/) or [Taxes](/reference/endpoints/taxes/).

This resource impacts the applicability of the parent resource. For example, if `comparator` is set to `>`, `value` is set to `10` and `compared_attribute` is `length_of_stay`, it means that the Tax will be applied only if the length of stay of the [Booking](/reference/endpoints/booking/) is great than 10 nights.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                   | Type    | Read/Write | Description
-----------------------|---------|------------|------------
account                | Integer | Read       | Account's ID related to the Tax Rule
-----------------------|---------|------------|------------
id                     | Integer | Read       | Tax Rule's ID.
comparator             | String  | Read       | Sign used to compare, possible values: `<` `<=` `==` `>=` `>`.
compared_attribute     | String  | Read       | Name of the attribute to compare. Possible values: `length_of_stay`
ruleable_id            | Integer | Read       | ID of the subject of the Tax Rule.
ruleable_type          | String  | Read       | Type of the subject of the Tax Rule, either `RentalsTax` or `Tax`.
value                  | String  | Read       | Value of the `compared_attribute`.
-----------------------|---------|------------|------------
created_at             | [Time](/reference/enums#formats) | Read       | Tax Rule's create time.
updated_at             | [Time](/reference/enums#formats) | Read       | Tax Rule's update time.
{: class="table table-bordered"}
  </div>
</div>

## List tax rules

List all tax rules for a given account(s).

~~~
GET /tax_rules
~~~

<%= render '/json_response.html', endpoint: "tax_rules", scopes: %w(public) %>

## Get a single tax rule

Returns a single tax rule identified by ID.

~~~
GET /tax_rules/:tax_rule_id
~~~

<%= render '/json_response.html', endpoint: "tax_rules", scopes: %w(public) %>
