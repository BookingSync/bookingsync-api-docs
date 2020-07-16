# Inbox Messages

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
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Message's id.
---------------------|---------|------------|------------
channel              | String  | Read       | Message's channel, list of Channels described in [enums section](/reference/enums#inbox-message-channels)
content              | Text    | Read       | Message's content.
origin               | String  | Read       | Message's origin, list of Origins described in [enums section](/reference/enums#inbox-message-origins)
visibility           | String  | Read       | Message's visibility, list of Visibilities described in [enums section](/reference/enums#inbox-message-visibilities)
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Message's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Message's update time.
sent_at              | [Time](/reference/enums#formats) | Read       | Time when Message was sent at.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inbox_write" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Message's id.
conversation_id      | String  | Write      | Message's conversation id.
sender_id            | String  | Write      | Message's sender id.
attachment_ids       | Array   | Write      | Message's attachments ids.
---------------------|---------|------------|------------
channel              | String  | Read/Write | Message's channel, list of Channels described in [enums section](/reference/enums#inbox-message-channels)
content              | String  | Read/Write | Message's content.
origin               | String  | Read/Write | Message's origin, list of Origins described in [enums section](/reference/enums#inbox-message-origins)
visibility           | String  | Read/Write | Message's visibility, list of Visibilities described in [enums section](/reference/enums#inbox-message-visibilities)
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Message's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Message's update time.
sent_at              | [Time](/reference/enums#formats) | Read/Write | Time when Message was sent at.
{: class="table table-bordered"}
  </div>
</div>

## List Messages

~~~
GET /inbox/messages
~~~

<%= render 'json_response', endpoint: "messages", scopes: %w(inbox_read-inbox_write) %>

## Get a single Message

Returns a single message identified by ID.

~~~
GET /inbox/messages/:message_id
~~~

<%= render 'json_response', endpoint: "messages", scopes: %w(inbox_read-inbox_write) %>

## Create a new Message

Returns a created message identified by ID.

~~~~
POST /inbox/messages
~~~~

<%= render 'json_response', endpoint: "messages", request: "create",
  scopes: %w(inbox_write) %>

## Update a Message

Returns an updated message identified by ID.

~~~
PUT /inbox/messages/:message_id
~~~

<%= render 'json_response', endpoint: "messages", request: "update",
  scopes: %w(inbox_write) %>
  
## Add Attachment to a Message

Returns an updated message identified by ID.

~~~
PUT inbox/messages/:id/add_attachment
~~~

<%= render 'json_response', endpoint: "messages", request: "add_attachment",
scopes: [
    { inbox_write: "add_attachment-inbox_write" },
  ] %>
  
