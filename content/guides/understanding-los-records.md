# Understanding LOS Records

## What is LOS?

LOS stands for Length Of Stay and LOS Records are a simple but powerful way to define rates.
It is a precomputed cache of prices for consecutive days for a given day, best explained through examples.

## (1) Basic example
Let's take an LOS Record:

~~~
day: 2000-01-01
min_occupancy: 1
max_occupancy: 4
rates: 50,100,150,200,250,300,350,400,450,500,...
~~~

### Meaning

When the check-in date is 2000-01-01 and the number of guests is between 1 and 4 (inclusive), then the price is:

~~~
50 for 1 night
100 for 2 nights
150 for 3 nights
...
500 for 10 nights
~~~

---

## (2) Additional guest

~~~
day: 2000-01-01
min_occupancy: 1
max_occupancy: 4
rates: 50,100,150,200,250,300,350,400,450,500,...

day: 2000-01-01
min_occupancy: 5
max_occupancy: 5
rates: 60,120,180,240,300,360,420,480,540,600,...
~~~

### Meaning

We can see that the daily price increased by 10 from adding an extra guest.

---

## (3) No check-in

~~~
day: 2000-01-01
rates: 0,0,0,0,0,...,0
~~~

### Meaning

You can't check in on 2000 January 1.

---

## (4) Minimum stay

~~~
day: 2000-01-01
rates: 0,0,150,200,250,300,350,400,450,500,...
~~~

### Meaning

When checking in on 2000 January 1 you must stay for at least 3 nights.

---

## (5) Maximum stay

~~~
day: 2000-01-01
rates: 50,100,150,200,250,300,350,0,...,0
~~~

### Meaning

When checking in on 2000 January 1 you can't stay for more than 7 nights.

---

## (6) No check-out

~~~
day: 2000-01-01
rates: 50,100,0,0,250,300,350,400,450,500,...
~~~

### Meaning

When the check-in date is 2000 January 1 checking out on the 3rd or 4th night is not possible.
This is how it looks when gaps are prevented in the calendar, or a period must be rented fully.

[Check out Prevent Gap and Full Period Only rate rules in our manual](https://manual.bookingsync.com/hc/en-us/articles/360005324073-Rentals-Rate-rules).

## (7) Example to demonstrate flexibility

The power of LOS Records is that it considers all the possible inputs that can affect the price:

 - booking date
 - check-in date
 - check-out date
 - length of stay
 - number of guests

No matter how complex your rules are, it will be accurate. Say we have the following set of rules:

 1. booking must be made at least 2 days prior to check-in day
 2. minimum stay 3 nights
 3. charge at least 7 nights
 4. no check-in on every 2nd Sunday
 5. no check-out on the 17th night if check-in was on Wed or Sat (intentionally weird rule)

On the following tables, rows represent the length of stay and each column is an LOS record for the given check-in day.
These rules are not affected by occupancy so that is ommitted.

If today is Monday the 1st:

Because of rule 1, Mon Tue check-in is impossible - all zeroes.

Because of rule 2, staying for 1 or 2 nights is impossible - first two rows all zeroes.

Because of rule 3, staying for 3 to 7 nights is the same price - 700.

Because of rule 4, the second Sunday is all zeroes - no check-in.

Because of rule 5, you can see zero when length of stay is 17 and the day is Wed or Sat.

<p><img src="/images/understanding-los/complex-example-1-1.png" alt="complex example 1-1" style="width:100%"></p>

If today is Tuesday the 2nd:

Monday's record is in the past, it's obsolete.

Because of rule 1, today (Tue) and tomorrow (Wed) check-in becomes not possible.

<p><img src="/images/understanding-los/complex-example-1-2.png" alt="complex example 1-2" style="width:100%"></p>
