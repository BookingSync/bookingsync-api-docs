# Rates Rules

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active">
    <a href="#rates_read-rates_write" role="tab" data-toggle="pill">
      rates_read / rates_write
    </a>
  </li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="rates_read-rates_write" markdown="1">
### Parameters

Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Rates Rule's id.
---------------------|---------|------------|------------
always_applied       | Boolean | Read       | Rates Rule's application status.
kind                 | String  | Read       | Rates Rule's kind. List of types described in [enums section](/reference/enums#rates-rules-types).
percentage           | Integer | Read       | Rates Rule's percentage discount.
period_name          | String  | Read       | Rates Rule's period name.
variables            | Text    | Read       | Rates Rule's variables used depending on kind type.
---------------------|---------|------------|------------
start_date           | [Date](/reference/formats#date--time) | Read       | Rates Rule's start date.
end_date             | [Date](/reference/formats#date--time) | Read       | Rates Rule's end date.
created_at           | [Time](/reference/formats#date--time) | Read       | Rates Rule's create time.
updated_at           | [Time](/reference/formats#date--time) | Read       | Rates Rule's update time.
{: class="table table-bordered"}
  </div>
</div>

## List rates rules

List all rates rules for given account.

~~~
GET /rates_rules
~~~

<%= render 'json_response', endpoint: "rates_rules", scopes: %w(rates_read-rates_write) %>

## Get a single rates rule

Returns a single rates rule identified by ID.

~~~
GET /rates_rules/:rates_rule_id
~~~

<%= render 'json_response', endpoint: "rates_rules", scopes: %w(rates_read-rates_write) %>
