# Inbox Participants

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
id                   | Integer | Read       | Participant's id.
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Participant's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Participant's update time.
last_message_sent_at | [Time](/reference/enums#formats) | Read       | Participant's last sent message time.
read_at              | [Time](/reference/enums#formats) | Read       | Time when Participant read last message.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inbox_write" markdown="1">
Name                 | Type    | Read/Write | Description
---------------------|---------|------------|------------
id                   | Integer | Read       | Participant's id.
member_id            | Integer | Read/Write | Participant's Member id.
conversation_id      | Integer | Read/Write | Participant's Conversation id.
---------------------|---------|------------|------------
read                 | Boolean | Write      | Is related to Participant's read_at attribute.
member_type          | Integer | Read/Write | Participant's member type (`Client` or `Host`).
---------------------|---------|------------|------------
created_at           | [Time](/reference/enums#formats) | Read       | Participant's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Participant's update time.
last_message_sent_at | [Time](/reference/enums#formats) | Read       | Participant's last sent message time.
read_at              | [Time](/reference/enums#formats) | Read/Write | Time when Participant read last message.
{: class="table table-bordered"}
  </div>
</div>

## List Participants

~~~
GET /inbox/participants
~~~

<%= render 'json_response', endpoint: "participants", scopes: %w(inbox_read-inbox_write) %>

## Get a single Participant

Returns a single participant identified by ID.

~~~
GET /inbox/participants/:participant_id
~~~

<%= render 'json_response', endpoint: "participants", scopes: %w(inbox_read-inbox_write) %>

## Create a new Participant

Creates a Participant.

~~~~
POST /inbox/participants
~~~~

<%= render 'json_response', endpoint: "participants", request: "create",
  scopes: %w(inbox_write) %>

## Update a Participant

Returns an updated participant identified by ID.

~~~
PUT /inbox/participants/:participant_id
~~~

<div class="callout callout-info" markdown="1">
  <h4>Restrictions on updatable parameters</h4>
  Only `:read` attribute is allowed.
</div>

<%= render 'json_response', endpoint: "participants", request: "update",
  scopes: %w(inbox_write) %>
