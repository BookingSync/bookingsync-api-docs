# Requirements

1. TOC
{:toc}

## Registering Applications

Applications that want to use the API need to be registered in the
[partner panel on BookingSync.com](https://www.bookingsync.com/en/partners/applications).

If you are not a partner yet, it's [free to signup so join us :)](https://www.bookingsync.com/en/partners/signup)

* Click on `New Application` button.
* Fill in required details, `redirect_uri` being your apps OAuth callback URL and `admin_url` to your admin section.
* Choose if application should open in a new window (`standalone`), or remain `embedded` in BookingSync frame.
* Choose `Private` application, at least during your development and testing process.

**Note**: BookingSync traditional Users have to input `private access code` in their Apps section to start using your private application. That code is automatically generated for you and is visible in your applications manage section.

## Applications types

### Embedded
Embedded applications are rendered within an iframe on BookingSync.com.
**You application needs to allow on embedding in `iframe`.**

### Standalone
Standalone applications will be working outside of BookingSync website. It means that they will be opened in a new window outside of the BookingSync app.

While it's not the recommended approach, some applications can benefit from this.

## Published Applications

* All published applications are available by default for all accounts.

**Note**: When first accessing the application, you will be asked to authorize the permissions.

## Private Applications

* First obtain `private access code` from the application owner.
* Input the code in your Apps section.

**Note**: When first accessing the application, you will be asked to authorize the permissions. After the first authorization, you will be able to keep access to their account until they manually request to revoke your access.

