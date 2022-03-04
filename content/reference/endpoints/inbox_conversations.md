# Inbox Conversations

1. TOC
{:toc}

## Overview

This resource represents Inbox Conversations - a thread within each [Inbox Messages](/reference/endpoints/inbox_messages/) can be created.

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
account              | Integer | Read       | Account's ID related to Conversation 
assignee (host)      | Integer | Read       | Assignee's ID related to Conversation (Host's ID who is responsible for handling this conversation)
source               | Integer | Read       | Source's ID related to Conversation 
bookings             | Array   | Read       | Bookings IDs related to Conversation
inquiries            | Array   | Read       | Inquiries IDs related to Conversation
messages             | Array   | Read       | Messages IDs related to Conversation
participants         | Array   | Read       | Participants ID related to Conversation
created_by_id        | Integer | Read       | ID of the resource that created the Conversation (User or Application - this is a polymorphic association)
created_by_type      | String  | Read       | Type of the resource that created the Conversation (User or Application - this is a polymorphic association)
---------------------|---------|------------|------------
id                   | Integer | Read       | Conversation's id.
default_channel      | String  | Read       | Conversation's default channel, list of Channels described in [enums section](/reference/enums#inbox-message-channels)
subject              | String  | Read       | Conversation's subject (for email-based Conversations).
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Conversation's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Conversation's update time.
closed_at            | [Time](/reference/enums#formats) | Read       | Time when Conversation was closed at.
deadline_response_at | [Time](/reference/enums#formats) | Read       | Conversation's deadline response time.
last_message_at      | [Time](/reference/enums#formats) | Read       | Conversation's last message time.
marked_as_spam_at    | [Time](/reference/enums#formats) | Read       | Time when Conversation was marked as spam.
read_at              | [Time](/reference/enums#formats) | Read       | Time when conversations was viewed
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inbox_write" markdown="1">
Name                 | Type    | Read/Write | Description | Constraints
---------------------|---------|------------|-------------|
account              | Integer | Read       | Account's ID related to Conversation | 
assignee (host)      | Integer | Read       | Assignee's ID related to Conversation (Host's ID who is responsible for handling this conversation) |
source               | Integer | Read       | Source's ID related to Conversation  |
bookings             | Array   | Read       | Bookings IDs related to Conversation |
inquiries            | Array   | Read       | Inquiries IDs related to Conversation |
messages             | Array   | Read       | Messages IDs related to Conversation |
participants         | Array   | Read       | Participants ID related to Conversation |
created_by_id        | Integer | Read       | ID of the resource that created the Conversation (User or Application - this is a polymorphic association) |
created_by_type      | String  | Read       | Type of the resource that created the Conversation (User or Application - this is a polymorphic association) |
---------------------|---------|------------|-------------|
id                   | Integer | Read       | Conversation's id. |
default_channel      | String  | Read/Write | Conversation's default channel,list of Channels described in [enums section](/reference/enums#inbox-message-channels) | Must be one of the Channels
subject              | String  | Read/Write  (create-only)| Conversation's subject (for email-based Conversations). |
closed               | Boolean | Write      | Conversation is closed if set to true. |
source_id            | Integer | Write (create-only)      | Source id related to the Conversation. |
assignee_id          | Integer | Write      | Assignee's ID related to Conversation (Host's ID who is responsible for handling this conversation) |
closed               | Boolean | Write      | An attribute for marking Conversation as closed (and will assign `closed_at` timestamp) |
marked_as_spam       | Boolean | Write      | An attribute for marking Conversation as spam (and will assign `marked_as_spam_at` timestamp) |
---------------------|---------|------------|------------|
created_at           | [Time](/reference/enums#formats) | Read       | Conversation's create time. |
updated_at           | [Time](/reference/enums#formats) | Read       | Conversation's update time. |
closed_at            | [Time](/reference/enums#formats) | Read       | Time when Converstation was closed at. |
deadline_response_at | [Time](/reference/enums#formats) | Read/Write (create-only) | Conversation's deadline response time. |
last_message_at      | [Time](/reference/enums#formats) | Read       | Conversation's last message time. |
marked_as_spam_at    | [Time](/reference/enums#formats) | Read       | Time when Conversation was marked as spam. |
read_at              | [Time](/reference/enums#formats) | Read       | Time when conversations was viewed |
{: class="table table-bordered"}
  </div>
</div>

## List Conversations

~~~
GET /inbox/conversations
~~~

<%= render 'json_response', endpoint: "conversations", scopes: %w(inbox_read-inbox_write) %>

## Get a single Conversation

Returns a single conversation identified by ID.

~~~
GET /inbox/conversations/:conversation_id
~~~

<%= render 'json_response', endpoint: "conversations", scopes: %w(inbox_read-inbox_write) %>

## Create a new Conversation

Creates a Conversation.

~~~~
POST /inbox/conversations
~~~~

<%= render 'json_response', endpoint: "conversations", request: "create",
  scopes: %w(inbox_write) %>

## Update a Conversation

Returns an updated conversation identified by ID.

~~~
PUT /inbox/conversations/:conversation_id
~~~

<div class="callout callout-info" markdown="1">
  <h4>Restrictions on updatable parameters</h4>
  Only `:assignee_id, :closed, :default_channel, :marked_as_spam` attributes are allowed.
</div>

<%= render 'json_response', endpoint: "conversations", request: "update",
  scopes: %w(inbox_write) %>

## Add Bookings to a Conversation

Returns an updated conversation identified by ID.

~~~
PUT /inbox/conversations/:conversation_id/connect_booking
~~~

<%= render 'json_response', endpoint: "conversations", request: "connect_booking",
  scopes: [
      { inbox_write: "connect-booking-inbox_write" },
    ] %>
    
## Remove Bookings from a Conversation

Returns an updated conversation identified by ID.

~~~
PUT /inbox/conversations/:conversation_id/disconnect_booking
~~~

<%= render 'json_response', endpoint: "conversations", request: "disconnect_booking",
  scopes: %w(inbox_write) %>
