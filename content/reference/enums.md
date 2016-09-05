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

## Amenities

Key                   | Description |
--------------------------|-----------|
air_conditioning | Air Conditioning |
balcony | Balcony |
bar_private | Bar Private |
bbq | BBQ |
bowling_private | Private Bowling |
bike | Bike |
blender | Blender |
boat | Boat |
boat_dock | Boat Dock |
books | Books |
books_-_kids | Books Kids |
bottled_water | Bottled Water |
breakfast_included | Breakfast Included |
canoe | Canoe |
car_included | Car Included |
cd_player | CD Player |
ceiling_fans | Ceiling Fans |
cellar | Cellar |
central_heating | Central Heating |
child's_swing | Child's Swing |
cinema | Cinema |
clothes_dryer | Clothes Dryer |
coffee_maker | Coffee Maker |
computer_available | Computer Available |
concierge | Concierge |
daily_maid_service | Daily Maid Service |
dishwasher | Dishwasher |
dvd_player | Dvd Player |
elevator | Elevator |
essentials | Essentials |
filtered_water | Filtered Water |
fireplace | Fireplace |
firewood | Firewood |
fitness_equipment | Fitness Equipment |
freezer | Freezer |
fridge | Fridge |
full_equipped_kitchen | Full Equipped Kitchen |
golf | Golf |
helipad | Helipad |
game_room | Game Room |
games_-_all_ages | Games For All Ages |
games_-_kids | Kids' Games |
garage | Garage |
garden | Garden |
gated_community | Gated Community |
gym | Gym |
hair_dryer | Hair Dryer |
handicap_accessible | Handicap Accessible |
heated_pool | Heated Pool |
heating | Heating |
hoover | Hoover |
ice_maker | Ice Maker |
internet | Internet |
iron | Iron |
jacuzzi | Jacuzzi |
jacuzzi_bath | Jacuzzi Bath |
kettle | Kettle |
kids_friendly | Kids Friendly |
kids_pool | Kids Pool |
long_term_rentals_available | Long Term Rentals Available |
massage_on_request | Massage On Request |
microwave | Microwave |
mosquito_net | Mosquito Net |
music_library | Music Library |
not_suitable_for_children | Not Suitable For Children |
outdoor_furniture | Outdoor Furniture |
oven | Oven |
parking_included | Parking Included |
pets_considered | Pets Considered |
ping_pong | Ping Pong |
pool_private | Pool Private |
pool_shared | Pool Shared |
pool_table | Pool Table |
private_car_park | Private Car Park |
private_chef | Private Chef |
radio | Radio |
safe | Safe |
sauna | Sauna |
sea_view | Sea View |
satellite_or_cable | Satellite Or Cable |
security_system | Security System |
shared_car_park | Shared Car Park |
ski_in | Ski In |
ski_out | Ski Out |
ski_room | Ski Room |
smoking_forbidden | Smoking Forbidden |
solarium | Solarium |
staff | Staff |
stereo_system | Stereo System |
tennis_court | Tennis Court |
telephone | Telephone |
terrace | Terrace |
toaster | Toaster |
toys | Toys |
tv | Tv |
ventilator | Ventilator |
video_library | Video Library |
video_player | Video Player |
videogames | Videogames |
videogame_console | Videogame Console |
washing_machine | Washing Machine |
water_cooler | Water Cooler |
wedding | Wedding |

## Availability map statuses

Status           | Description
-----------------|------------
0                | Available
1                | Booked
2                | Tentative
3                | Unavailable
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


## Fee kinds

Name                         | Description
-----------------------------|------------
cleaning                     | Cleaning fee
other                        | Any other type of fee
{: class="table table-bordered"}


## Fee rate kinds

Name                         | Description
-----------------------------|------------
fixed                        | Fixed price
percentage                   | Percentage of the rental price
{: class="table table-bordered"}


## Payment kinds

Name             | Description
-----------------|------------
bookingsync      | Payment made through BookingSync.
cash             | Payment made by Cash.
cheque           | Payment made by Cheque.
credits          | Payment made using Credits. Credits are money you might have kept from your guest after a cancellation.
credit-card      | Payment made by Credit Card.
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
floor_plan       | Floor plan
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
bungalow         | Bungalow
cabin            | Cabin
castle           | Castle
chalet           | Chalet
cottage          | Cottage
farmhouse        | Farmhouse
holiday-home     | Holiday Home
house            | House
private-room     | Private room
studio           | Studio
villa            | Villa
{: class="table table-bordered"}
