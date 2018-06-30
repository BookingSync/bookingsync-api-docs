# Understanding LOS Records

## What is LOS?

LOS stands for Length Of Stay and LOS Records are a simple but powerful way to define rates.

It's best explained through examples.

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
