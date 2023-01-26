# Inbox Participants

1. TOC
{:toc}

## Overview

This resource represents Inbox Participants that can send [Inbox Messages](/reference/endpoints/inbox_messages/) for a given [Inbox Conversation](/reference/endpoints/inbox_conversations/).

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
conversation         | Integer | Read       | Conversation's ID to which Participant belongs to
account              | Integer | Read       | Account's ID to which Participant is related to
member_id            | Integer | Read       | ID of the resource that created the Participant ([Client](/reference/endpoints/clients/) or [Host](/reference/endpoints/hosts/) - this is a polymorphic association)
member_type          | String  | Read       | Type of the resource that created the Participant ([Client](/reference/endpoints/clients/) or [Host](/reference/endpoints/hosts/) - this is a polymorphic association)
---------------------|---------|------------|------------
id                   | Integer | Read       | Participant's ID.
created_at           | [Time](/reference/enums#formats) | Read       | Participant's create time.
updated_at           | [Time](/reference/enums#formats) | Read       | Participant's update time.
last_message_sent_at | [Time](/reference/enums#formats) | Read       | Participant's last sent message time.
read_at              | [Time](/reference/enums#formats) | Read       | Time when Participant read last message.
{: class="table table-bordered"}
  </div>
  <div class="tab-pane" id="inbox_write" markdown="1">
Name                 | Type    | Read/Write | Description | Constraints
---------------------|---------|------------|------------|
conversation         | Integer | Read       | Conversation's ID to which Participant belongs to |
account              | Integer | Read       | Account's ID to which Participant is related to |
member_id            | Integer | Read       | ID of the resource that created the Participant ([Client](/reference/endpoints/clients/) or [Host](/reference/endpoints/hosts/) - this is a polymorphic association) |
member_type          | String  | Read       | Type of the resource that created the Participant ([Client](/reference/endpoints/clients/) or [Host](/reference/endpoints/hosts/) - this is a polymorphic association) |
---------------------|---------|------------|------------|
id                   | Integer | Read       | Participant's id. |
member_id            | Integer | Write (create-only)     | Participant's Member id. | **Required**
member_type          | Integer | Write (create-only)     | Participant's member type (`Client` or `Host`). | **Required**, must be [Client](/reference/endpoints/clients/) or [Host](/reference/endpoints/hosts/).
conversation_id      | Integer | Write (create-only)     | Participant's Conversation id. | **Required**
read                 | Boolean | Write      | An attribute for marking last message as read by Participant  (and will assign `read_at` timestamp) | Must be in the past
---------------------|---------|------------|------------|
created_at           | [Time](/reference/enums#formats) | Read   | Participant's create time. |
updated_at           | [Time](/reference/enums#formats) | Read | Participant's update time. |
last_message_sent_at | [Time](/reference/enums#formats) | Read | Participant's last sent message time. |
read_at              | [Time](/reference/enums#formats) | Read | Time when Participant read last message. |
{: class="table table-bordered"}
  </div>
</div>


## List Participants

~~~
GET /inbox/participants
~~~

<%= render '/json_response.html', endpoint: "participants", scopes: %w(inbox_read-inbox_write) %>

## Get a single Participant

Returns a single participant identified by ID.

~~~
GET /inbox/participants/:participant_id
~~~

<%= render '/json_response.html', endpoint: "participants", scopes: %w(inbox_read-inbox_write) %>

## Create a new Participant

Creates a Participant.

~~~~
POST /inbox/participants
~~~~

<%= render '/json_response.html', endpoint: "participants", request: "create",
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

<%= render '/json_response.html', endpoint: "participants", request: "update",
  scopes: %w(inbox_write) %>
