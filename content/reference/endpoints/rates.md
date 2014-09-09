# Rates

1. TOC
{:toc}

<ul class="nav nav-pills pull-right" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>

<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
### Parameters

Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Rate's id.
---------------------|---------|------------|------------
currency             | String  | Read       | Rate's currency code, list of codes described in [enums section](/reference/enums#currencies).
initial_nightly_rate | [Decimal](/reference/enums#formats) | Read       | Rate's [initial](#initial-price) nightly rate.
initial_weekly_rate  | [Decimal](/reference/enums#formats) | Read       | Rate's [initial](#initial-price) weekly rate.
initial_monthly_rate | [Decimal](/reference/enums#formats) | Read       | Rate's [initial](#initial-price) monthly rate.
final_nightly_rate   | [Decimal](/reference/enums#formats) | Read       | Rate's [final](#final-price) nightly rate.
final_weekly_rate    | [Decimal](/reference/enums#formats) | Read       | Rate's [final](#final-price) weekly rate.
final_monthly_rate   | [Decimal](/reference/enums#formats) | Read       | Rate's [final](#final-price) monthly rate.
minimum_stay         | Integer | Read       | Rate's minimum stay in days.
---------------------|---------|------------|------------
start_date           | [Date](/reference/enums#formats) | Read       | Rate's start date.
end_date             | [Date](/reference/enums#formats) | Read       | Rate's end date.
created_at           | [Time](/reference/enums#formats) | Read       | Rate's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Rate's update time.
{: class="table table-bordered"}
  </div>
</div>

<div class="callout callout-info">
  <dl class="dl-horizontal">
    <dt id="initial-price">Initial price</dt>
    <dd>Price computed before any discount.</dd>
    <dt id="final-price">Final price</dt>
    <dd>Price after discounts have been applied.</dd>
  </dl>
</div>

## List rates

List all rates for given account(s).

~~~
GET /rates
~~~

<%= render 'json_response', endpoint: "rates", scopes: %w(public) %>

## Search rates

Search parameters allow to filter rates by specified fields.

Example:

~~~
GET /rates?rental_id=1
~~~

### Search Parameters

Name             | Type    | Default | Description
-----------------|---------|---------|-------------
rental_id        | String  |         | List of comma separated IDs. Returns only bookings for this rental(s)
{: class="table table-bordered"}

## Get a single rate

Returns a single rate identified by ID.

~~~
GET /rates/:rate_id
~~~

<%= render 'json_response', endpoint: "rates", scopes: %w(public) %>
