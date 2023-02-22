# Understanding Inbox Messaging

---

1. TOC
{:toc}

---

## Preface

BookingSync provides the ability to integrate with the Inbox on multiple of the different channels/platforms we support. This guide will present
how to implement this integration.


## Purpose

The purpose of this feature is to provide a seamless integration between internal messaging systems in certain Channels and the BookingSync platform, in order for adminstrators to be able to handle incoming inquiries in a centralized location.


## Entities

- **Inbox Conversation**: Represents a thread/conversation and is scoped under a Channel, an Account, and a Booking.
<br>
- **Inbox Participant**: Represents a participant in the thread and is scoped under an Inbox Conversation. There are two types of participants
  - Client: Represents a Traveller, managed by the Channel entirely.
  - Host: Represents a User in the Inbox Conversation's Account, managed by the Channel and the Account. All Users should be able to view the Inbox Conversations of their corresponding Account. However, Only Host Inbox Participants could send messages and be notified about new messages in the Inbox Conversation.
<br>
- **Inbox Message**: Represents a message in the thread/conversation and is scoped and an Inbox Participant.


## Flow

When a Booking is created on the following channels: (Booking.com, Airbnb), a corresponding Inbox Conversation is created on our system, which is synchronised with the Channel internal messaging systems.

When an Inbox Conversation is created via a Channel, at least one Client Inbox Participant will be added to the conversation automatically. A Host Inbox Participant may or may no be created via the Channel automatically.


## Fetching an Inbox Conversation

There are multiple ways to fetch an existing Inbox Conversation.

1. Using the [Inbox Conversations endpoints](/reference/endpoints/inbox_conversations), you could get all the Inbox Conversations related to your account.
2. Using the [Bookings endpoints](/reference/endpoints/application) `conversations` field, which you could then query the [Inbox Conversations endpoints](/reference/endpoints/inbox_conversations) with the provided ids to get Inbox Conversations related to a certain Booking.

In order to discern which Channel this Inbox Conversation is associated with, you can check `created_by_id` and `created_by_type` attributes of the Inbox Conversation. `created_by_type` should be `Doorkeeper::Application` and `created_by_id` should refer to the Application id. Applications can be identified in [Applications endpoint](/reference/endpoints/applications).

It is important to take into account that Inbox Conversations may not be created right away with the Booking, as there could be a delay. It can be beneficial to subscribe to `inbox_conversation_created` webhooks (Refer to [Webhook subscriptions guide](/guides/webhook-subscriptions)) and/or have periodic polling on the Booking to be notified when the associated Inbox Conversation is created.

---

***Note:*** Please refrain from creating a new Inbox Conversation as it will not be synchronised to the Channel's messaging system.

---

## Managing Inbox Participants

After fetching the Inbox Conversation, you could query [Inbox Participants endpoints](/reference/endpoints/inbox_participants) to see the available Inbox Participants and which conversations are they assigned.

You could also use the [Inbox Conversations endpoints](/reference/endpoints/inbox_conversations) with `include=participants` query to directly inject the associated participants while fetching the Inbox Conversation.

In order to add a new Host Inbox Participant, please use the [*Create a new Participant* endpoint](/reference/endpoints/inbox_participants#create-a-new-participant).

---

***Note:*** Channels may or may not add a Host Inbox Participant to the created Inbox Conversation. You may have to manage which User has a corresponding Host Inbox Participant in a certain Inbox Conversation.

---

***Note:*** Please refrain from creating Client Inbox Participant, as they are entities managed by the Channel and the Channel only.

---

## Managing Inbox Messages

Please refer to the [Inbox Message endpoints](/reference/endpoints/inbox_messages)

