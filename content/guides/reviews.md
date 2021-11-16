# Reviews

## Key concepts

- HostReview: Host reviews the guest. it may have one of two states:
  - draft - either empty shell, or review that was filled partially. It has little validation and can be modified any number of times. Identified by: `null` value of a `submitted_at` attribute
  - submitted - final version of a review, it can no longer be modified. Identified by: `non-null` value of a `submitted_at` attribute
- Review: Guest reviews the host.
- ReviewReply - response from reviewee to reviewer's comment.

## Restrictions

- Both `HostReview` and `Review` may have only **one** reply.
- Each `Booking` can have only one `HostReview`. `HostReview` must have the same source as the `Booking`.
- Each `Booking` can have multiple `Reviews` (one per `source`).
- `Review` left via BookingSync website (called `direct`) will be associated with a source named `Smily`.
- Accounts on old pricing plan have no access to new features. If that's the case you'll receive `403` response with `"Feature not available - insufficient account subscription plan"` message.
- Whenever booking has `shareable` attribute set to false - it meas it's not permitted to dislpay it on any publicly accessible page.

## Intgeration

### Application managing reviews coming from other sources

Possibilities depend on:

- Installed applications
- Account subscription

Some of OTAs support only Guest Reviews (Booking.com), while others allow both host and guest to leave the review (for example Airbnb).

#### 1. Applications supportig only guest reviews.

Once booking is finished, guest will be asked to leave review. Then the application will create the guest review on BookingSync. Depending on other installed applications and settings - guest may be asked as well to leave review directly on BookingSync, or any installed applications. That can result in a booking having multiple reviews, each having a different source.

Guest reviews can be retrieved using [reviews endpoint](/reference/endpoints/reviews/)

Once `Review` is created it's possible to reply to it by sending `POST` request to [review replies endpoint](/reference/endpoints/review_replies/). Note that currently, only one reply per review is allowed.

#### 2. Applications supportig reviews from both parties

Usually associated OTAs support double blind reviews - which means both parties cannot see each other review until either:
- both parties fill out their reviews
- one party will not finish their review in time (it expires)

To comply with this flow, once booking finishes OTA creates an empty shell for host to fill out. Application will then create sych hust review on BookingSync in a [draft mode](/reference/endpoints/host_reviews/#create-draft-host-review) (meaning modifications are allowed), with bare minimum of data filled out. Depending on integration it may have `expires_at` attibute filled out, indicating deadline for submission.

In order to submit host review, a request to [submit draft action](/reference/endpoints/host_reviews/#submit-draft-host-review) has to be made. In order to satisfy any application requirements, we require all attributes (including all criteria) to be filled out at. Once Host Review is submitted, it is no longer possible to modify it.

Then, submission is handled by application, and corresponding guest review will be created (if already left by guest).
