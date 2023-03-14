# Me

1. TOC
{:toc}

## Overview

This endpoint represents information about the current application and the associated account, including information about the invoice recipient.

## Get information about current accounts application

~~~
GET /me
~~~

<%= render 'json_response', endpoint: "me", scopes: %w(public) %>
