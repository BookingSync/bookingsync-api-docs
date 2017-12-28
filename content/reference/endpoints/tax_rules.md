# Tax Rules

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
id                     | Integer | Read       | Tax Rule's id.
-----------------------|---------|------------|------------
comparator             | String  | Read       | Sign used to compare, possible values: `<` `<=` `==` `>=` `>`.
compared_attribute     | String  | Read       | Name of the attribute to compare.
ruleable_id            | Integer | Read       | Id of the owner of the Tax Rule.
ruleable_type          | String  | Read       | Type of the owner of the Tax Rule, either `RentalsTax` or `Tax`.
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

<%= render 'json_response', endpoint: "tax_rules", scopes: %w(public) %>

## Get a single tax rule

Returns a single tax rule identified by ID.

~~~
GET /tax_rules/:tax_rule_id
~~~

<%= render 'json_response', endpoint: "tax_rules", scopes: %w(public) %>
