# Fees Taxes

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
  <li><a href="#rates_write" role="tab" data-toggle="pill">rates_write</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                   | Type    | Read/Write | Description
-----------------------|---------|------------|------------
id                     | Integer | Read       | Fees Tax's id.
-----------------------|---------|------------|------------
tax_included_in_rate   | Boolean | Read       | Tax amount already included in fee if set to true.
-----------------------|---------|------------|------------
created_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's create time.
updated_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="rates_write" markdown="1">
Name                   | Type    | Read/Write | Description
-----------------------|---------|------------|------------
id                     | Integer | Read       | Fees Tax's id.
-----------------------|---------|------------|------------
tax_included_in_rate   | Boolean | Read/Write | Tax amount already included in fee if set to true.
tax_id                 | Integer | Write      | Tax's id.
-----------------------|---------|------------|------------
created_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's create time.
updated_at             | [Time](/reference/enums#formats) | Read       | Fees Tax's update time.
{: class="table table-bordered"}
  </div>
</div>

## List fees taxes

List all fees taxes for given account(s).

~~~
GET /fees_taxes
~~~

<%= render 'json_response', endpoint: "fees_taxes",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Get a single fees tax

Returns a single fees tax identified by ID.

~~~
GET /fees_taxes/:fees_tax_id
~~~

<%= render 'json_response', endpoint: "fees_taxes",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Create a new fees tax

Returns a newly created fees tax.

~~~
POST /fees/:fee_id/fees_taxes
~~~

<%= render 'json_response', endpoint: "fees_taxes", request: "create",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Update a fees tax

Returns an updated fees tax identified by ID.

~~~
PUT /fees_taxes/:fees_tax_id
~~~

<%= render 'json_response', endpoint: "fees_taxes", request: "update",
  scopes: [{ rates_write: "public-rates_write" }] %>

## Delete fees tax

Required OAuth scope: `:rates_write`

Returns empty response with '204 No Content' status code on success.

~~~~~~
DELETE /fees_taxes/:fees_tax_id
~~~~~~
