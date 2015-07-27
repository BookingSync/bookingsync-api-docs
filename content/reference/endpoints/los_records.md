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
day                  | [Date](/reference/enums#formats) | Read       | Day for which Los Record is valid.
kind                 | String  | Read       | Los Record's kind, either `initial` or `final`.
occupancy            | Integer | Read       | Occupancy for which Los Record is valid.
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
