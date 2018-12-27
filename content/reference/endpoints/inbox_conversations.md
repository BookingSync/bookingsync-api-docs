# Inbox Conversations

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
id                   | Integer | Read       | Conversation's id.
---------------------|---------|------------|------------
default_channel      | String  | Read       | Conversation's default channel.
subject              | String  | Read       | Conversation's subject.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Conversation's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Conversation's update time.
closed_at            | [Time](/reference/enums#formats) | Read       | Time when Converstation was closed at.
deadline_response_at | [Time](/reference/enums#formats) | Read       | Conversation's deadline response time.
last_message_at      | [Time](/reference/enums#formats) | Read       | Conversation's last message time.
marked_as_spam_at    | [Time](/reference/enums#formats) | Read       | Time when Conversation was marked as spam.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inbox_write" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Conversation's id.
---------------------|---------|------------|------------
default_channel      | String  | Read/Write | Conversation's default channel.
subject              | String  | Read/Write | Conversation's subject.
closed               | Boolean | Write      | Conversation's subject.
source_id            | Integer | Write      | Conversation's subject.
assignee_id          | Integer | Write      | Conversation's subject.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Conversation's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Conversation's update time.
closed_at            | [Time](/reference/enums#formats) | Read       | Time when Converstation was closed at.
deadline_response_at | [Time](/reference/enums#formats) | Read/Write | Conversation's deadline response time.
last_message_at      | [Time](/reference/enums#formats) | Read       | Conversation's last message time.
marked_as_spam_at    | [Time](/reference/enums#formats) | Read/Write | Time when Conversation was marked as spam.
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
