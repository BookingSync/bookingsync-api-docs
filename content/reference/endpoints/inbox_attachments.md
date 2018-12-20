# Inbox Attachments

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
Name              | Type    | Read/Write | Description
------------------|---------|------------|------------
id                | Integer | Read       | Attachment's id.
account_id        | Integer | Read       | Id of Account Attachment belongs to.
------------------|---------|------------|------------
url               | String  | Read       | Attachment's url address.
name              | String  | Read       | Attachment's name.
image_width       | Integer | Read       | Attachment's image width in pixels.
image_height      | Integer | Read       | Attachment's image height in pixels.
file_size         | Integer | Read       | Attachment's file size in bytes.
file_content_type | String  | Read       | Attachment's file content type.
------------------|---------|------------|------------
created_at        | [Time](/reference/enums#formats) | Read       | Attachment's create time.
updated_at        | [Time](/reference/enums#formats) | Read       | Attachment's update time.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inbox_write" markdown="1">
Name              | Type    | Read/Write | Description
------------------|---------|------------|------------
id                | Integer | Read       | Attachment's id.
account_id        | Integer | Read       | Id of Account Attachment belongs to.
------------------|---------|------------|------------
remote_file_url   | String  | Write      | Attachment's remote url address.
file              | String  | Write      | Attachment's Base64 encoded file.
url               | String  | Read       | Attachment's url address.
name              | String  | Read/Write | Attachment's name.
image_width       | Integer | Read       | Attachment's image width in pixels.
image_height      | Integer | Read       | Attachment's image height in pixels.
file_size         | Integer | Read       | Attachment's file size in bytes.
file_content_type | String  | Read       | Attachment's file content type.
------------------|---------|------------|------------
created_at        | [Time](/reference/enums#formats) | Read       | Attachment's create time.
updated_at        | [Time](/reference/enums#formats) | Read       | Attachment's update time.
{: class="table table-bordered"}
  </div>
</div>

## List Attachments

~~~
GET /inbox/attachments
~~~

<%= render 'json_response', endpoint: "attachments", scopes: %w(inbox_read-inbox_write) %>

## Create a new attachment

Creates an attachment.

~~~~
POST /inbox/attachments
~~~~

<%= render 'json_response', endpoint: "attachments", request: "create",
  scopes: %w(inbox_write) %>

## Update an attachment

Returns an updated attachment identified by ID.

~~~
PUT /inbox/attachments/:id
~~~

<%= render 'json_response', endpoint: "attachments", request: "update",
  scopes: %w(inbox_write) %>
