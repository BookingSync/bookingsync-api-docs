# Me

1. TOC
{:toc}

## Overview

This endpoint represents information about the current application and the associated account, including information about the invoice recipient.

### Parameters
<ul class="nav nav-pills" role="tablist">
  <li class="disabled"><a>OAuth Scopes:</a></li>
  <li class="active"><a href="#public" role="tab" data-toggle="pill">public</a></li>
</ul>
<div class="tab-content" markdown="1">
  <div class="tab-pane active" id="public" markdown="1">
Name                            | Type     | Read/Write | Description
--------------------------------|----------|------------|------------
account                         | Integer  | Read       | ID of an Account for which application is now authorized.
partnership_invoice_recipient   | String   | Read       | Describes who should be invoiced for a partnership service. List of options described in [enums section](/reference/enums/#partnership-invoice-recipients).
{: class="table table-bordered"}
  </div>
</div>

## Get information about current accounts application

~~~
GET /me
~~~

<%= render 'json_response', endpoint: "me", scopes: %w(public) %>
