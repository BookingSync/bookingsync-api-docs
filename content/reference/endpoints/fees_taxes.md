# Fees Taxes

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
id                     | Integer | Read       | Fees Tax's id.
-----------------------|---------|------------|------------
tax_included_in_rate   | Boolean | Read       | Tax amount already included in fee if set to true.
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

<%= render 'json_response', endpoint: "fees_taxes", scopes: %w(public) %>

## Get a single fees tax

Returns a single fees tax identified by ID.

~~~
GET /fees_taxes/:fees_tax_id
~~~

<%= render 'json_response', endpoint: "fees_taxes", scopes: %w(public) %>
