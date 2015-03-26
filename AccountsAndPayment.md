# User Accounts and Payment #

Piceditor includes stubbed out support for user accounts and payment. This document provides a high level overview of the current functionality.

## User Accounts ##

Piceditor uses the API to talk to the server about accounts. When piceditor is loaded, is looks for credentials and sends these to an API call to get back a unique user. The stubbed out version of the API always returns a new user.

User credentials may be passed in or stored in cookies or flash static objects and kept around as long as desired.

Piceditor assumes that all users have an account. Users who have not logged in get a temporary guest user account.

Piceditor provides UX for user account registration, sign in, and forgot password.

## Payment ##

Piceditor provides UX for collecting payment information. You will need to provide your own back end to support this.

Piceditor supports a subscription model. Users sign up with a credit card and have auto-renew turned on by default. Users can later change their settings (see ModAccount) to change or remove the card on file (and turn off auto-renew).