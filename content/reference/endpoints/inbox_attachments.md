# Inbox Attachments

1. TOC
{:toc}

## Overview

This resource represents Inbox Attachments - the files (or images) that can be assigned to [Inbox Messages](/reference/endpoints/inbox_messages/).

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
account           | Integer | Read       | ID of Account the Attachment belongs to.
messages          | Array   | Read       | IDs of Messages the Attachment belongs to.
------------------|---------|------------|------------
id                | Integer | Read       | Attachment's id.
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
Name              | Type    | Read/Write | Description | Constraints
------------------|---------|------------|-------------| 
account           | Integer | Read       | ID of Account the Attachment belongs to. |
messages          | Array   | Read       | IDs of Messages the Attachment belongs to. |
------------------|---------|------------|------------|
id                | Integer | Read       | Attachment's id. |
remote_file_url   | String  | Write      | Attachment's remote url address. | Must be a valid URL - use either this attribute or `file`
file              | String  | Write      | Attachment's Base64 encoded file prepended with `data:image/png;base64,` (note comma separator between the type prefix and the Base64-encoded body) | Must be less than: 10 megabytes, use either this attribute or `remote_file_url`  
url               | String  | Read       | Attachment's url address. |
name              | String  | Read/Write | Attachment's name. |
image_width       | Integer | Read       | Attachment's image width in pixels. |
image_height      | Integer | Read       | Attachment's image height in pixels. | 
file_size         | Integer | Read       | Attachment's file size in bytes. |
file_content_type | String  | Read       | Attachment's file content type. |
------------------|---------|------------|------------|
created_at        | [Time](/reference/enums#formats) | Read       | Attachment's create time. |
updated_at        | [Time](/reference/enums#formats) | Read       | Attachment's update time. |
{: class="table table-bordered"}
  </div>
</div>

## List Attachments

~~~
GET /inbox/attachments
~~~

<%= render 'json_response', endpoint: "attachments", scopes: %w(inbox_read-inbox_write) %>

## Get a single Attachment

Returns a single attachment identified by ID.

~~~
GET /inbox/attachments/:attachment_id
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
