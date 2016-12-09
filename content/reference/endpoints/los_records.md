# Los Records

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Los Record's id.
---------------------|---------|------------|------------
kind                 | String  | Read       | Los Record's kind, either `initial` or `final`.
day                  | [Date](/reference/enums#formats) | Read       | Day for which Los Record is valid.
min_occupancy        | Integer | Read       | Minimum occupancy for which the Los Record is valid.
max_occupancy        | Integer | Read       | Maximum occupancy for which the Los Record is valid.
original_currency    | String  | Read       | Currency in which the rates are stored.<br>The list of codes can be found in the [enums section](/reference/enums#currencies). 
currency             | String  | Read       | Currency in which the rates are presented here.<br>The list of codes can be found in the [enums section](/reference/enums#currencies).
exchange_rate        | [Decimal](/reference/enums#formats) | Read       | The rate used to convert from the `original_currency` to `currency`.
rates                | Array   | Read       | Starting from a one day length of stay, array lists rates up to 30 days. Rate will equal `0.0`, if corresponding length is invalid with `minimum_stay` setting.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Los Record's create time.
{: class="table table-bordered"}
  </div>
</div>

<div class="callout callout-info">
  <h4>Definitions</h4>
  <strong>Initial los record</strong>: Los Record computed before any discount.<br>
  <strong>Final los record</strong>: Los Record after discounts have been applied.
</div>

### Query parameters

Query parameters allow filtering and customization.

Example:

~~~
GET /los_records?kinds=rental_price_before_special_offers,rental_price&exchange_currency_to=EUR
~~~

Name                 | Type    | Default | Description
---------------------|---------|---------|-------------
kinds                | String  |         | List of comma separated kinds. Returns only los records for this kind(s).<br>For possible values visit the [enums section](/reference/enums#los_kinds).
exchange_to_currency | String  |         | Code of the currency in which the rates are to be displayed.<br>The accepted codes can be found in the [enums section](/reference/enums#currencies).
updated_since        | [Time](/reference/enums#formats) |         | Only los records updated after given time.
{: class="table table-bordered"}

## List los records

List all los records for given account(s).

~~~
GET /los_records
~~~

<%= render 'json_response', endpoint: "los_records", scopes: %w(public) %>

## Search los records

Search parameters allow to filter los records by specified fields.

Example:

~~~
GET /los_records?rental_id=1
~~~

### Search Parameters

Name             | Type    | Default | Description
-----------------|---------|---------|-------------
rental_id        | String  |         | List of comma separated IDs. Returns only los records for this rental(s)
{: class="table table-bordered"}

## Get a single los record

Returns a single los record identified by ID.

~~~
GET /los_records/:los_record_id
~~~

<%= render 'json_response', endpoint: "los_records", scopes: %w(public) %>
