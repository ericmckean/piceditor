# Serving Piceditor #

There are two ways to serve piceditor:
  1. Static content only
  1. Server with API support

## Static Content Only ##

Static content only is useful because:
  * It is simple
  * It is easy to deploy

You will need much of the content in the website directory (although many of the images may not be needed)

## Server With API Support ##

The alternative is to ship piceditor with a server that supports api calls.

You might need API calls for:
  * Photo storage (history, etc)
  * User accounts (log in and register within flash)
  * Payment
  * Tracking
  * Etc.

Piceditor has a couple of different sections with stubbed out API call mechanisms. You can begin to implement this by filling out the API call details and adding support to your server.