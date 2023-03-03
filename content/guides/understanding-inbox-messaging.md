# Understanding Inbox Messaging

---

1. TOC
{:toc}

---

## Preface

BookingSync provides the ability to integrate with the Inbox on multiple different channels/platforms we support. This guide will present
how to implement this integration.


## Purpose

The purpose of this feature is to provide a seamless integration between internal messaging systems in certain Channels and the BookingSync platform, for property managers to be able to communicate with guests in a centralized location.


## Entities

- **Inbox Conversation**: Represents a thread/conversation and is scoped under a creator, an Account, and a Booking. An Inbox Conversation is usually owned and managed by it's creator.
This guide is mostly concerned with Inbox Conversations that are created and managed by a Channel.
<br>
- **Inbox Participant**: Represents a participant in the thread and is scoped under an Inbox Conversation. There are two types of participants
  - Client: Represents a Traveller, managed by the creator entirely.
  - Host: Represents a User in the Inbox Conversation's Account, managed by the Channel and the Account. All Users should be able to view the Inbox Conversations of their corresponding Accounts. However, Only Host Inbox Participants could send messages and be notified about new messages in the Inbox Conversation.
<br>
- **Inbox Message**: Represents a message in the thread/conversation and is scoped under Inbox Participant.


## Flow

When a Booking is created on the following channels: (Booking.com, Airbnb), a corresponding Inbox Conversation is automatically created on our system, which is synchronized with the Channel's internal messaging systems.

When an Inbox Conversation is created via a Channel, at least one Client Inbox Participant will be added to the conversation automatically. A Host Inbox Participant may or may not be created via the Channel automatically. Refer to [Managing Inbox Participants](#managing-inbox-participants).


## Fetching an Inbox Conversation

There are multiple ways to fetch an existing Inbox Conversation.

1. Using the [Inbox Conversations endpoints](/reference/endpoints/inbox_conversations), you could get all the Inbox Conversations related to your account.
2. Using the [Bookings endpoints](/reference/endpoints/application) `conversations` field, you could then query the [Inbox Conversations endpoints](/reference/endpoints/inbox_conversations) with the provided ids to get Inbox Conversations related to a certain Booking.

To discern which Channel this Inbox Conversation is associated with, you can check `created_by_id` and `created_by_type` attributes of the Inbox Conversation. `created_by_type` should be `Doorkeeper::Application` and `created_by_id` should refer to the Application id. Applications can be identified in [Applications endpoint](/reference/endpoints/applications).

It is important to take into account that Inbox Conversations may not be created right away with the Booking, as there could be a delay. It can be beneficial to subscribe to `inbox_conversation_created` webhooks (Refer to [Webhook subscriptions guide](/guides/webhook-subscriptions)) and/or have periodic polling (Refer to [updated_since flow](/guides/updated-since-flow)) on the Booking to be notified when the associated Inbox Conversation is created.

---

<span style="color:red">
***WARNING:*** Please refrain from creating a new Inbox Conversation as it will not be synchronized to the Channel's messaging system.
</span>

---

## Managing Inbox Participants

After fetching the Inbox Conversation, you could query [Inbox Participants endpoints](/reference/endpoints/inbox_participants) to see the available Inbox Participants and which conversations are they assigned.

You could also use the [Inbox Conversations endpoints](/reference/endpoints/inbox_conversations) with `include=participants` query to directly inject the associated participants while fetching the Inbox Conversation.

To add a new Host Inbox Participant, please use the [*Create a new Participant* endpoint](/reference/endpoints/inbox_participants#create-a-new-participant).

---

***Note:*** Channels may or may not add a Host Inbox Participant to the created Inbox Conversation. You may have to manage which User has a corresponding Host Inbox Participant in a certain Inbox Conversation.

---

***Note:*** Please refrain from creating Client Inbox Participants on Channel created conversations, as they are entities managed by the Channel and the Channel only.

---

## Managing Inbox Messages

Please refer to the [Inbox Message endpoints](/reference/endpoints/inbox_messages)

