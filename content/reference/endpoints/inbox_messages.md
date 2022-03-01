# Inbox Messages

1. TOC
{:toc}

## Overview

This resource represents Inbox Messages happening under the [Inbox Conversations](reference/endpoints/inbox_conversations/).

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
attachments          | Array   | Read       | Attachments IDs related to Message 
conversation         | Integer | Read       | Conversation's ID to which Message belongs to
sender               | Integer | Read       | Sender's ID (Inbox Participant) to which Message is related to
account              | Integer | Read       | Account's ID to which Message is related to
created_by_id        | Integer | Read       | ID of the resource that created the Message (User or Application - this is a polymorphic association) 
created_by_type      | String  | Read       | Type of the resource that created the Message (User or Application - this is a polymorphic association)
---------------------|---------|------------|------------
id                   | Integer | Read       | Message's ID.
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
Name                 | Type    | Read/Write | Description | Constraints
---------------------|---------|------------|------------
attachments          | Array   | Read       | Attachments IDs related to Message  |
conversation         | Integer | Read       | Conversation's ID to which Message belongs to |
sender               | Integer | Read       | Sender's ID (Inbox Participant) to which Message is related to |
account              | Integer | Read       | Account's ID (Inbox Participant) to which Message is related to |
created_by_id        | Integer | Read       | ID of the resource that created the Message (User or Application - this is a polymorphic association) | 
created_by_type      | String  | Read       | Type of the resource that created the Message (User or Application - this is a polymorphic association) |
---------------------|---------|------------|-------------|
id                   | Integer | Read       | Message's id. |
conversation_id      | String  | Write      | Message's Conversation ID. | **Required**
sender_id            | String  | Write      | Message's Sender ID (Inbox Participant). | **Required**
attachment_ids       | Array   | Write      | Message's Attachments IDs. |
channel              | String  | Read/Write | Message's channel, list of Channels described in [enums section](/reference/enums#inbox-message-channels) | Must be one of Channels if present
content              | String  | Read/Write | Message's content. | **Required**
origin               | String  | Read/Write | Message's origin, list of Origins described in [enums section](/reference/enums#inbox-message-origins) | **Required**, Must be one of Origins
visibility           | String  | Read/Write | Message's visibility, list of Visibilities described in [enums section](/reference/enums#inbox-message-visibilities) | **Required**, Must be one of Visibilities, `internal` cannot be used for Client Participants or when `channel` is present 
---------------------|---------|------------|------------|
created_at           | [Time](/reference/enums#formats) | Read       | Message's create time. |
updated_at           | [Time](/reference/enums#formats) | Read       | Message's update time. |
sent_at              | [Time](/reference/enums#formats) | Read/Write | Time when Message was sent at. | **Required**
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
  
