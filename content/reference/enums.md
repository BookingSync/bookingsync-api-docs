# Enumerables

1. TOC
{:toc}

## Booking statuses

Status           | Description
-----------------|------------
0                | Available.
1                | Booked.
2                | Tentative.
3                | Unavailable.
{: class="table table-bordered"}

## Currencies

Currency         | Code
-----------------|------------
A$               | AUD
R$               | BRL
C$               | CAD
CHF              | CHF
€                | EUR
£                | GBP
NZ$              | NZD
$                | USD
{: class="table table-bordered"}

## Formats

Name             | Description
-----------------|------------
date             | [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601#Dates) compatible `%Y-%m-%d` `2014-08-21`
decimal          | Decimal value returned as a string. Big.js is recommended for Javascript users.
object           | A Javascript Object.
time             | [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601#UTC) compatible `%Y-%m-%dT%H:%M:%SZ` `2014-08-21T08:40:44Z`
{: class="table table-bordered"}

_Note_: Translation objects are having locales as string keys and translations as string values. `{"en": "Wonderful living room", "fr": "Merveilleux séjour"}`

## Locales

Code             | Name
-----------------|------------
bg               | Bulgarian
cs               | Czech
da               | Danish
de               | German
el               | Greek
en               | English
es               | Spanish
fi               | Finish
fr               | French
hu               | Hungarian
id               | Bahasa Indonesian
it               | Italian
ja               | Japanese
ko               | Korean
lt               | Lithuanian
lv               | Latvian
mk               | Macedonian
nb               | Norvegian
nl               | Dutch
pl               | Polish
pt               | Portuguese
ro               | Romanian
rs               | Serbian
ru               | Russian
sk               | Slovak
sv               | Swedish
uk               | Ukrainian
zh               | Simplified Chinese
zh-TW            | Traditional Chinese
{: class="table table-bordered"}

## Payment kinds

Name             | Description
-----------------|------------
cash             | Payment made by Cash.
cheque           | Payment made by Cheque.
credits          | Payment made using Credits. Credits are money you might have kept from your guest after a cancellation.
online           | Payment made Online, outside of BookingSync.
paypal           | Payment made with PayPal, outside of BookingSync.
travel-cheque    | Payment made by Travel Cheque.
wiretransfer     | Payment made by Wire Transfer.
{: class="table table-bordered"}


## Photo kinds

Name             | Description
-----------------|------------
bathroom         | Bathroom's photo.
bedroom          | Bedroom's photo.
inside           | Inside's photo.
kitchen          | Kitchen's photo.
livingroom       | Livingroom's photo.
outside          | Outside's photo.
surroundings     | Surroundings's photo.
{: class="table table-bordered"}

## Rates types

Name             | Description
-----------------|------------
nightly          | The reference rate is nightly based.
weekly           | The reference rate is weekly based.
{: class="table table-bordered"}

## Rates Rules types

Name                           | Description
-------------------------------|------------
arrival_only                   | Rule applied on arrival.
departure_only                 | Rule applied on departure.
early_booking                  | Rule applied on early booking.
full_period_only               | Rule applied for full period.
late_booking                   | Rule applied for late booking.
prevent_if_booked_ahead_of     | Rule applied if booked ahead.
stay_at_least                  | Rule applied for minimum stay.
strict_minimum_price_per_night | Rule applied for minimum price per night.
weekend_night                  | Rule applied for weekend night.
{: class="table table-bordered"}

## Rental types

Name             | Description
-----------------|------------
apartment        | Apartment
boat             | Boat
castle           | Castle
cottage          | Cottage
farmhouse        | Farmhouse
holiday-home     | Holiday Home
private-room     | Private room
studio           | Studio
villa            | Villa
{: class="table table-bordered"}
