# Getting Started with PHP

1. TOC
{:toc}

## Preface

In this guide, we will learn how to use BookingSync API using PHP language and our dedicated [PHP lib](https://github.com/BookingSync/rest-request-php).

We will here run *get_rentals* example. This example use [oauth2 bookingsync php](https://github.com/BookingSync/oauth2-bookingsync-php). PHP 5.4 is required here.


## Requirements

1. Clone [this repository](https://github.com/BookingSync/rest-request-php) into your web server. e.g: `/var/www/`

2. Create a new Vhost

~~~
<VirtualHost *:80>
    ServerName bsa-rest-php.dev

    DocumentRoot /var/www/rest-request-php/examples/api-v3/
    <Directory /var/www/rest-request-php/examples/api-v3/>
        AllowOverride All
        Order Allow,Deny
        Allow from All
    </Directory>
</VirtualHost>
~~~

## Create the application

Applications that want to use the API need to be registered in the
[partner panel on BookingSync.com](https://www.bookingsync.com/en/partners/applications).

If you are not a partner yet, it's [free to signup so join us :)](https://www.bookingsync.com/en/partners/signup)

Click on `New Application` button

* Name: Choose a name for your application. e.g: `REST PHP`
* Admin url: Same as Redirect URI, opening the app from BookingSync admin dashboard will run the script.
* Redirect URI: We want to run `get_rentals` example, so: https://bsa-rest-php.dev/get_rentals.php

On the right side, select `Standalone` and `Private`


Once your application is created, copy the `Private App Access Code`. Then go to the `Admin panel > Apps` and paste this code inside `Instal a Private App`.

## Using BookingSync API

Open `examples > api-v3 > get_rentals.php` file.

We need to change l.15-17 to tell him how to use our BookingSync application previouly created.

Go to you `Partner Panel` and click on `manage` and copy/paste `Client ID` and `Client Secret` into this file. Same for `redirectUri`.

If you go now to `https://bsa-rest-php.dev/get_rentals.php` you should be able to see the result of this example.
