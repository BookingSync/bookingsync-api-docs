# Hosts

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
<li class="disabled"><a>OAuth Scopes:</a></li>
<li class="active"><a href="#inbox_read" role="tab" data-toggle="pill">inbox_read</a></li>
<li><a href="#inbox_write" role="tab" data-toggle="pill">inbox_write</a></li>
</ul>
<div class="tab-content" markdown="1">
<div class="tab-pane active" id="inbox_read" markdown="1">
Name                     | Type    | Read/Write | Description
-------------------------|---------|------------|------------
id                       | Integer | Read       | Host's id.
-------------------------|---------|------------|------------
firstname                | String  | Read       | Host's first name.
lastname                 | String  | Read       | Host's last name.
email                    | String  | Read       | Host's email.
-------------------------|---------|------------|------------
created_at               | [Time](/reference/enums#formats) | Read       | Host's create time.
updated_at               | [Time](/reference/enums#formats) | Read       | Host's update time.
forget_me_at             | [Time](/reference/enums#formats) | Read       | Host's forget time.
processing_restricted_at | [Time](/reference/enums#formats) | Read       | Host's processing restriction time.
{: class="table table-bordered"}
</div>
<div class="tab-pane" id="inbox_write" markdown="1">
Name                     | Type    | Read/Write | Description
-------------------------|---------|------------|------------
id                       | Integer | Read       | Host's id.
user_id                  | Integer | Read/Write | Host's user id.
source_id                | Integer | Read/Write | Host's source id.
-------------------------|---------|------------|------------
firstname                | String  | Read/Write | Host's first name.
lastname                 | String  | Read/Write | Host's last name.
email                    | String  | Read/Write | Host's email.
-------------------------|---------|------------|------------
created_at               | [Time](/reference/enums#formats) | Read       | Host's create time.
updated_at               | [Time](/reference/enums#formats) | Read       | Host's update time.
forget_me_at             | [Time](/reference/enums#formats) | Read       | Host's forget time.
processing_restricted_at | [Time](/reference/enums#formats) | Read       | Host's processing restriction time.
{: class="table table-bordered"}
</div>
</div>

## List Hosts

~~~
GET /hosts
~~~

<%= render 'json_response', endpoint: "hosts", scopes: %w(inbox_read-inbox_write) %>

## Get a single Host

Returns a single host identified by ID.

~~~
GET /hosts/:host_id
~~~

<%= render 'json_response', endpoint: "hosts", scopes: %w(inbox_read-inbox_write) %>

## Create a new Host

Creates an host.

~~~~
POST /hosts
~~~~

<%= render 'json_response', endpoint: "hosts", request: "create", scopes: %w(inbox_write) %>

## Update a Host

Returns an updated host identified by ID.

~~~
PUT /hosts/:host_id
~~~

<%= render 'json_response', endpoint: "hosts", request: "update", scopes: %w(inbox_write) %>
