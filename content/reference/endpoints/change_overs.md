# ChangeOvers

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
id               | Integer | Read       | ChangeOver's id.
-----------------|---------|------------|------------
map              | String  | Read       | ChangeOver's map of possible actions for a given day. There is a total of 1096 characters, each representing one day. List of statuses described in [enums section](/reference/enums#change_over-map-statuses).
-----------------|---------|------------|------------
start_date       | [Date](/reference/enums#formats) | Read       | ChangeOver's start date.
updated_at       | [Time](/reference/enums#formats) | Read       | ChangeOver's update time.
{: class="table table-bordered"}
  </div>
</div>

## List change_overs

List all change_overs for a given account.

~~~
GET /change_overs
~~~

<%= render 'json_response', endpoint: "change_overs", scopes: %w(public) %>

## Get a single change_over

Returns a single change_over identified by ID.

~~~
GET /change_overs/:change_over_id
~~~

<%= render 'json_response', endpoint: "change_overs", scopes: %w(public) %>
