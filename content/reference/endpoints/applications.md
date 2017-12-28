# Applications

1. TOC
{:toc}

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#applications_read" role="tab" data-toggle="pill">applications_read</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="applications_read" markdown="1">
Name             | Type    | Read/Write | Description
-----------------|---------|------------|------------
id               | Integer | Read       | Application's id.
-----------------|---------|------------|------------
name             | String  | Read       | Application's name.
{: class="table table-bordered"}
  </div>
</div>

<div class="callout callout-info" markdown="1">
  <h4>Flow restriction</h4>
  <p>This endpoint cannot be accessed with <a href="/reference/authorization/#client-credentials-flow">Client Credentials Flow</a>.</p>
</div>

## List applications

List all installed applications for a given account.

~~~
GET /applications
~~~

<%= render 'json_response', endpoint: "applications", scopes: %w(applications_read) %>

## Get a single application

Returns a single application identified by ID.

~~~
GET /applications/:application_id
~~~

<%= render 'json_response', endpoint: "applications", scopes: %w(applications_read) %>
