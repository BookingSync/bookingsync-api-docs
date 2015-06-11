# Fees

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Fee's id.
-----------------|---------|------------|------------
downpayment_percentage | [Decimal](/reference/enums#formats) | Read       | Fee's downpayment_percentage.
name             | [Object](/reference/enums#formats)   | Read       | Fee's name, list of locales described in [enums section](/reference/enums#locales).
rate             | [Decimal](/reference/enums#formats)  | Read       | Fee's rate.
rate_kind        | String  | Read       | Fee's rate kind, either <i>fixed</i> or <i>percentage</i>.
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats) | Read         | Fee's create time.
updated_at       | [Time](/reference/enums#formats) | Read         | Fee's update time.
{: class="table table-bordered"}
  </div>
</div>

## List fees

List all fees for given account(s).

~~~
GET /fees
~~~

<%= render 'json_response', endpoint: "fees", scopes: %w(public) %>

## Get a single fee

Returns a single fee identified by ID.

~~~
GET /fees/:fee_id
~~~

<%= render 'json_response', endpoint: "fees", scopes: %w(public) %>
