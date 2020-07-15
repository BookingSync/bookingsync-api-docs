# Understanding Midterm Pricing

## Assumptions

The length of stay of 31 days is considered by BookingSync as a threshold between short-term and midterm stay.
Since the midterm stay is no longer the subject of short-term rates rules, the price is calculated differently.

Here is a comparison of what's supported and what's not:

**Price factors**  | **Short-term** | **Midterm**
-------------------|----------------|------------
Rates rules (availability, price, occupancy) | Supported | Not supported
-------------------|----------------|------------
Seasonality | Supported (via Seasons + Periods or Nightly Rate Map) | Supported (via Midterm Rate Map)
-------------------|----------------|------------
Price increase per application | Supported | Supported
{: class="table table-bordered"}

Of course user can still opt out from midterm pricig (by chnaging Rental's `mid_term_pricing_active` [attribute](/reference/endpoints/rentals/) to `false`)

## What happens when midterm pricing is disabled?

Even though consulted with our users, we acknowledge the fact that for some reason this approach may not work for all of them, therefore they can opt-out of midterm pricing.

If this is the case, there are still ways to allow midterm bookings:

  * Live quote (via [rentals_search endpoint](/reference/endpoints/rentals/#search-rentals)) - includes all rates rules, yet cannot be cached and may affect integration performance and overall user experience
  * [Rates](/reference/endpoints/rates/) - it's a nightly price, independent of the length of stay. To protect users from losing money, it calculates the highest possible daily pricing. Because of that midterm pricing discounts (such as a discount for a stay over 30 days will not be applied here) will not be included here, which may lead to less attractive pricing

What will not work:

  * [LOS record](/reference/endpoints/los_records/) - Pricing is limited to 30 days only, therefore it's not possible to use it for longer stays.


## How to use midterm rate map?

A midterm rate map is a simple object that consists of two main attributes:

  * `start_date` The date of the first price from the map. It's refreshed every day at 00:25.
  * `map` Contains 1096 (~ 3 years) prices for consecutive days since start_date. Values are comma-separated, decimal values are supported with dot as decimal separator. If a value is `0`, it means that midterm pricing is not defined for that date, and therefore no 31+ days long stay covering this date is not possible.

To calculate a midterm price for a given stay of X days, find price corresponding to booking start date, and sum X consecutive values, making sure none of them is zero.

## Example

Let's consider the midterm rate mam with the following attributes:

~~~ruby
{
  "start_date": "2020-05-02",
  "map": "0,0,0,0,0,100,100,100,100,100,100,100,100,100,100,50,50,50,50,50,50,50,50,50,50,300,300,100,100,100,100,100,100,100,100,100,100,0,100,100,100,100,100,100,100,100,100,100,50,50,50,50,50,50,50,50,50,50,300,300,100,100,100,100,100,100,100,100,100,100",
  ...
}
~~~

It could be converted to:

  * <2020-05-02, 2020-05-07) - Booking not possible (5 nights)
  * <2020-05-07, 2020-05-17) - Nightly price is 100 (10 nights)
  * <2020-05-17, 2020-05-27) - Nightly price is 50 (10 nights)
  * <2020-05-27, 2020-05-29) - Nightly price is 300 (2 nights)
  * <2020-05-29, 2020-06-08) - Nightly price is 100 (10 nights)
  * <2020-06-08, 2020-06-09) - Booking not possible (1 night)
  * <2020-06-09, 2020-06-19) - Nightly price is 100 (10 nights)
  * <2020-06-19, 2020-06-29) - Nightly price is 50 (10 nights)
  * <2020-06-29, 2020-07-01) - Nightly price is 300 (2 nights)
  * <2020-07-01, 2020-07-11) - Nightly price is 100 (10 nights)
  * <2020-07-11, 2023-05-03) - Booking not possible (1026 nights)

Below there are few examples of expected results:

1. **Booking <2020-05-17, 2020-05-18>**

    Stay too short, midterm pricing shouldn't be applied.

2. **Booking <2020-05-07, 2020-06-08>**

    `10 * 100 + 10 * 50 + 2 * 300 + 10 * 100 = 3100`

3. **Booking <2020-05-07, 2020-06-09>**

    Impossible to book since there is no midterm price defined for 2020-06-08
