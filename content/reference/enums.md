# Enumerables

1. TOC
{:toc}

## Account statuses

Status           | Description
-----------------|------------
trial            | Account currently in trial period
paying           | Account active and paying
suspended        | Suspended account, it might get active again if payment made
{: class="table table-bordered"}

## Availability map statuses

Status           | Description
-----------------|------------
0                | Available
1                | Booked
2                | Tentative
3                | Unavailable
{: class="table table-bordered"}

## Change-over map statuses

Status           | Description
-----------------|------------
X                | No action possible
C                | Check-In and Check-Out
O                | Check-Out only
I                | Check-In only
{: class="table table-bordered"}

## Booking statuses

Status           | Description
-----------------|------------
Booked           | A regular reservation
Tentative        | Tentative, this is a hold for a certain length of time
Unavailable      | Unavailable period, often used to mark closed seasons or maintenance
Locked           | Booking is locked by an other application or user
Canceled         | This booking have been canceled
{: class="table table-bordered"}

## Currencies

Currency         | Code
-----------------|------------
إ.د              | AED
A$               | AUD
R$               | BRL
C$               | CAD
CHF              | CHF
Kč               | CZK
kr               | DKK
€                | EUR
£                | GBP
Ft               | HUF
Rp               | IDR
₹                | INR
¥                | JPY
RM               | MYR
NZ$              | NZD
zł               | PLN
₽                | RUB
฿                | THB
₴                | UAH
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

## Genders

Value  |
-------|
male   |
female |
{: class="table table-bordered"}

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

## LOS kinds

Name                               | Description
-----------------------------------|------------
rental_price_before_special_offers | Price for the rent only, before special offers discounts being applied.
rental_price                       | Price for the rent only, after all discounts applied.
final_price                        | Price including all required fees and taxes.
{: class="table table-bordered"}

## Fee kinds

Name                         | Description
-----------------------------|------------
other                        | Any other type of fee
air_conditioning             | AC
airport_shuttle              | Airport shuttle
bed_linen                    | Bed sheets and such
city_tax                     | City tax where it's a fixed amount
cleaning                     | Cleaning fee
club_card                    | Club card
conservation                 | Conservation
credit_card                  | Credit card
destination                  | Destination
electricity                  | Electricity
environment                  | Environment
final_cleaning               | Final cleaning
gas                          | Gas
heating                      | Heating
heritage_charge              | Heritage charge
housekeeping                 | Housekeeping
internet                     | Internet
kitchen_linen                | Kitchen towels and such
linen_package                | All linens
municipality                 | Municipality
oil                          | Oil
parking                      | Parking
public_transit_day_ticket    | Public transport day ticket
resort                       | Resort
sea_plane                    | Sea plane
service_charge               | Service charge
shuttle_boat                 | Shuttle boat
ski_pass                     | Ski pass
tourism                      | Tourism
towel_charge                 | Towel
transfer                     | Transfer
visa_support                 | Visa support
water_park                   | Water park
water_usage                  | Water usage
wood                         | Wood
wristband                    | Wristband
{: class="table table-bordered"}


## Fee rate kinds

Name                            | Description
--------------------------------|------------
fixed                           | Fixed price
fixed_per_person                | Fixed price per person
fixed_per_adult                 | Fixed price per adult
fixed_per_child                 | Fixed price per child
fixed_per_night                 | Fixed price per night
fixed_per_person_per_night      | Fixed price per person per night
fixed_per_adult_per_night       | Fixed price per adult per night
fixed_per_child_per_night       | Fixed price per child per night
percentage                      | Percentage of the rental price
percentage_per_person           | Percentage of the rental price per person
percentage_per_adult            | Percentage of the rental price per adult
percentage_per_child            | Percentage of the rental price per child
individual_percentage_per_adult | Percentage of the rental price per adult per night
{: class="table table-bordered"}

## Payment kinds

<div class="callout callout-warning" markdown="1">
  <h4>Warning</h4>
  Internal payment kinds are not allowed to be used outside of our PCI DSS compliant payment platform flow, for more details please refer to [secure payments by BookingSync](/guides/secure-payments-by-bookingsync/).

</div>

Name             | Description
-----------------|------------
bookingsync      | **Internal** payment made through BookingSync.
instant-booking  | **Internal** payment made during Instant Booking flow, through BookingSync.
cash             | Payment made by Cash.
cheque           | Payment made by Cheque.
credits          | Payment made using Credits. Credits are money you might have kept from your guest after a cancellation.
credit-card      | Payment made by Credit Card.
online           | Payment made Online, outside of BookingSync.
paypal           | Payment made with PayPal, outside of BookingSync.
travel-cheque    | Payment made by Travel Cheque.
wiretransfer     | Payment made by Wire Transfer.
{: class="table table-bordered"}

## Payment gateway names

Name             | Description
-----------------|------------
booking_pay      | BookingPay gateway.
ogone            | Ogone gateway.
stripe           | Stripe gateway.
bogus            | Bogus gateway.
{: class="table table-bordered"}


## Payment gateway cardtypes

Name             | Description
-----------------|------------
visa             | Visa
master           | MasterCard
discover         | Discover
american_express | American Express
diners_club      | Diner's Club
jcb              | JCB
maestro          | Maestro
bogus            | Bogus
{: class="table table-bordered"}

## Photo kinds

Name             | Description
-----------------|------------
bathroom         | Bathroom's photo.
bedroom          | Bedroom's photo.
floor_plan       | Floor plan
inside           | Inside's photo.
kitchen          | Kitchen's photo.
livingroom       | Livingroom's photo.
outside          | Outside's photo.
surroundings     | Surroundings's photo.
{: class="table table-bordered"}

## Rental Link kinds

Name                         | Description
-----------------------------|------------
mirror                       | Mirroring rental link
{: class="table table-bordered"}

## Rates types

Name             | Description
-----------------|------------
nightly          | The reference rate is nightly based.
weekly           | The reference rate is weekly based.
{: class="table table-bordered"}

## Rates Rules types

Name                              | Description                                   | Variables                                   | Requires fixed period (start_date/end_date)? | Percentage required? | Fixed amount required? 
----------------------------------|-----------------------------------------------|---------------------------------------------|----------------------------------------------|----------------------|--------------------------
additional_person_fixed_per_night | Rule applied for stay price                   | occupation_greater_than                     |                                              | false                | true
arrival_only                      | Rule applied on arrival.                      | days                                        |                                              | false                | false
charge_at_least                   | Rule applied for stay price.                  | length, unit                                |                                              | false                | false
charge_at_least_if_available      | Rule applied for stay price.                  | length, unit                                |                                              | false                | false
charge_at_least_full_period       | Rule applied for stay price.                  |                                             |  true                                        | false                | false
departure_only                    | Rule applied on departure.                    | days                                        |                                              | false                | false
early_booking                     | Rule applied on early booking.                | length, unit                                |                                              | true                 | false
full_period_only                  | Rule applied for full period.                 |                                             |  true                                        | false                | false
late_booking                      | Rule applied for late booking.                | length, unit                                |                                              | true                 | false
occupation_less_than              | Rule applied for stay period.                 | occupation_less_than                        |                                              | true                 | false
prevent_gap                       | Rule applied on arrival.                      | length, unit, until_length, until_unit      |                                              | false                | false
prevent_if_booked_ahead_of        | Rule applied if booked ahead.                 | length, unit                                |                                              | false                | false
prevent_if_booked_less_than       | Rule applied if booking is too short.         | length, unit                                |                                              | false                | false
stay_at_least                     | Rule applied for minimum stay.                | length, unit                                |                                              | true                 | false
stay_shorter_than                 | Rule applied for short bookings.              | length, unit                                |                                              | true                 | false
strict_minimum_price_per_night    | Rule applied for minimum price per night.     |                                             |                                              | true                 | false
weekend_night                     | Rule applied for weekend night.               | days                                        |                                              | true                 | false
{: class="table table-bordered"}


## Rates Rules variables


Name                              | Description
----------------------------------|------------
length                            | Number
unit                              | Array of enums: days, months, years
until_length                      | Number
until_unit                        | String, possible values: "days", "months", "years"
occupation_less_than              | Number
occupation_greater_than           | Number
days                              | Array of integers between 0 and 6 (Sunday is 0, Saturday 6)


{: class="table table-bordered"}

[Rules explanation](https://manual.bookingsync.com/hc/en-us/articles/360005324073-All-our-Rates-Rules)

## Rental types

<div class="callout callout-warning" markdown="1">
  <h4>New Rental types</h4>
  <p>From 3rd of June 2020 six new rental types will be available:</p>
  `mill`, `manor`, `bastide`, `longere`, `gite`, `mas`
</div>

Name                 | Description
---------------------|------------
apartment                   | Apartment
bastide                     | Bastide
boat                        | Boat
bungalow                    | Bungalow
bed-and-breakfast           | Bed & breakfast
cabin                       | Cabin
castle                      | Castle
cave                        | Cave
chalet                      | Chalet
condominium                 | Condominium
cottage                     | Cottage
dormitory                   | Dormitory
earth-house                 | Earth House
farmhouse                   | Farmhouse
gite                        | Gite
holiday-home                | Holiday Home
house                       | House
hut                         | Hut
igloo                       | Igloo
island                      | Island
lighthouse                  | Lighthouse
loft                        | Loft
longere                     | Longere
manor                       | Manor
mas                         | Mas
mill                        | Mill
plane                       | Plane
private-room                | Private room
private-room-in-apartment   | Private room in an apartment
private-room-in-house       | Private room in a house
recreational-vehicle        | Camper/RV
studio                      | Studio
tent                        | Tent
tipi                        | Tipi
townhouse                   | Townhouse
train                       | Train
treehouse                   | Treehouse
villa                       | Villa
yurt                        | Yurt
{: class="table table-bordered"}

## Rental residency categories

Name                | Description
--------------------|------------
primary_residence   | Primary residence.
secondary_residence | Secondary residence.
non_residential     | Non residential.
{: class="table table-bordered"}

## Rental management type

Name             | Description
-----------------|------------
professional     | Professional.
non_professional | Non professional.
{: class="table table-bordered"}

## Inbox Message Channels

Name             | Description
-----------------|------------
airbnb           | Airbnb
homeaway         | HomeAway
email            | Email
booking-com      | Bookiing.com
{: class="table table-bordered"}

## Inbox Message Origins

Name              | Origin
------------------|------------
bookingsync_inbox | BookingSync Inbox
airbnb_message    | Airbnb message
airbnb_email      | Airbnb email
booking-com       | Booking.com
homeaway          | HomeAway
tripadvisor       | TripAdvisor
email             | Email
messenger         | Messenger
whatsapp          | WhatsApp
inquiry           | Inquiry
sms               | SMS
{: class="table table-bordered"}

## Inbox Message visibilities

Name             | Description
-----------------|------------
internal         | Internal visibility
external         | External visibility
{: class="table table-bordered"}

## Rental Contact kinds

Name             | Description
-----------------|------------
owner            | Contact is an owner
manager          | Contact is a manager
{: class="table table-bordered"}

## Rental Contact roles

Name             | Description
-----------------|------------
general          | For general purposes
contract         | For contract
reservations     | For reservations information
invoices         | Regarding invoice
availability     | Regarding availability
site_content     | Regarding site content
parity           | For parity information
requests         | Handling requests
central_reservations | Regarding central reservations
{: class="table table-bordered"}

## Rental Certifications

Key                 | Allowed values
--------------------|------------
meubles_de_tourisme | 1_etoile 2_etoiles 3_etoiles 4_etoiles 5_etoiles
gites_de_france     | 1_epi 2_epis 3_epis 4_epis
clevacances         | 1_cle 2_cles 3_cles 4_cles
accueil_velo        | accueil_velo
{: class="table table-bordered"}

## Rental Rounding kinds

Name              | Description
------------------|------------
no-rounding       | No rounding
round-up          | Rounds to the integer that is just above
closest-exact     | Rounds to the closest tens (e.g. from 362 to 370)
closest-marketing | Rounds to the closest marketing number (i.e. ending with 9, e.g. from 362 to 369)
{: class="table table-bordered"}
