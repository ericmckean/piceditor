# Integration Guide #

If you have an existing site with photos, you can use piceditor to give your users an easy way to edit their photos.

Integration Tasks:
  1. Remove unwanted components
  1. Apply your own style
  1. Import and export images

## Remove Unwanted Components ##

You will likely want to remove the following piceditor components:
  * User accounts
  * Payment
  * Session storage
  * Bridges
  * Collage and Fancy Collage (optional)

## Apply your own style ##

See the StyleGuide for more information

## Import and Export Images ##

Getting images into piceditor should be relatively simple. Pass the import url to piceditor as one of the flash parameters. Look for this and load it by piceditor. Note that you may need a crossdomain.xml file if you use different domains for your site, photo storage, and/or the piceditor swf.

Exporting completed images from piceditor is easiest to do by modifying the current save flow. This code compresses your image as a JPG and then uses FileReference to save locally. Replace the FileReference with a post to your server.