# LOS Records

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
id                   | BigInteger | Read       | Uniq identifier.
---------------------|---------|------------|------------
kind                 | String  | Read       | LOS record's kind. For possible values visit the [enums section](/reference/enums#los-kinds).
day                  | [Date](/reference/enums#formats) | Read       | Day for which this LOS record is valid.
min_occupancy        | Integer | Read       | Minimum occupancy for which this LOS record is valid.
max_occupancy        | Integer | Read       | Maximum occupancy for which this LOS record is valid.
original_currency    | String  | Read       | Original currency that LOS record was generated with (useful when using `exchange_to_currency` query param as a reference currency).<br>The list of codes can be found in the [enums section](/reference/enums#currencies).
currency             | String  | Read       | Requested currency of the LOS records, by default same as `original_currency`.<br>The list of codes can be found in the [enums section](/reference/enums#currencies).
exchange_rate        | [Decimal](/reference/enums#formats) | Read       | The rate used to convert from `original_currency` to `currency`.
rates                | Array   | Read       | Starting from a one day length of stay, array lists rates up to 30 days. Rate will equal `0.0`, if corresponding length is invalid with `minimum_stay` setting.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | LOS record's creation time.
{: class="table table-bordered"}
  </div>
</div>

## List LOS records

List all LOS records for (a) given account(s).

~~~
GET /los_records
~~~

<%= render 'json_response', endpoint: "los_records", scopes: %w(public) %>

## Search LOS records

Search parameters allow to filter LOS records by specified fields.

Example:

~~~
GET /los_records?rental_id=1&kinds=rental_price_before_special_offers,rental_price&exchange_currency_to=EUR
~~~

### Search Parameters

Name                 | Type    | Default | Description
---------------------|---------|---------|-------------
exchange_to_currency | String  |         | Code of the currency in which the rates are to be returned.<br>The accepted codes can be found in the [enums section](/reference/enums#currencies).
kinds                | String  |         | List of comma separated kinds. Returns only LOS records for this kind(s).<br>For possible values visit the [enums section](/reference/enums#los-kinds).
rental_id            | String  |         | List of comma separated IDs. Returns only LOS records for this rental(s)
updated_since        | [Time](/reference/enums#formats) |         | Only LOS records updated after given time.
{: class="table table-bordered"}
