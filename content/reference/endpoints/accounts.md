# Accounts

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
id               | Integer | Read                                 | Account's id.
-----------------|---------|------------|------------
business_name    | Integer | Read                                 | Account's business name.
-----------------|---------|------------|------------
status           | String  | Read                                 | Account's status, list of statuses described in [enums section](/reference/enums/#account-statuses).
-----------------|---------|------------|------------
created_at       | [Time](/reference/enums#formats)  | Read       | Account's create time.
-----------------|---------|------------|------------
updated_at       | [Time](/reference/enums#formats)  | Read       | Account's update time.
{: class="table table-bordered"}
  </div>
</div>

## List accounts

List all authorized accounts. Only the [Client Credentials Flow](/reference/authorization/#client-credentials-flow) currently allow you to retrieve multiple accounts at ones.

~~~
GET /accounts
~~~

<%= render 'json_response', endpoint: "accounts", scopes: %w(public) %>

## Get a single account

Returns a single authorized account identified by ID.

~~~
GET /accounts/:account_id
~~~

<%= render 'json_response', endpoint: "accounts", scopes: %w(public) %>
