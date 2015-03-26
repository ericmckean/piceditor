# Feature Overview #

This document outlines the core editing features and some of the steps that may be necessary to get them working.

Piceditor supports the following core editing features:
  1. Effects
  1. Document Objects
  1. Collage
  1. Fancy Collage

## Effects ##

These are photo effects, basic edits, etc. These should work out of the box. Some effects may have incomplete algorithms. These are left as an exercise for the reader.

## Document Objects ##

There are various interactive elements users can add to their photo. These include:
  * Text
  * Stickers/Shapes
  * Textures
  * Layering (other photos)
  * Object Frames (e.g. daisies)

### Text ###
Text includes a basic "global" font which uses a system font. To support additional fonts:
  * Get appropriate licenses
  * Compile the font into a SWF
  * Make it available in fonts.xml

### Stickers/Shapes ###

These are clip-art like objects you can add to your photo. They include:
  * Geometric shapes (should work out of the box)
  * Run-time loaded SWFs

To create new run-time loaded SWFs:
  * Create the SWF
  * Create thumbnail previews for the SWF and place in appropriate places
  * Add your SWF to shapes.xml
  * Run buildXML.py - this may need to be tweaked to get it working. In theory, it should parse Shapes.xml and create the following:
    * thumbnail bundles (a single PNG with many thumbnails tiled)
    * Per-group XML documents, localized (as appropriate)

### Textures ###
These are a special version of shapes that overlay the entire document. You will need to source your textures and reference them correctly.

### Layering ###
Users can import their own images as objects using the piceditor basket. Current versions of this require server side support but this might be accomplished by writing a custom "bridge" which does one or both of:
  * Reads a list of images off of a server
  * Allows users to upload multiple images to the client without server support

### Object Frames ###
These are frames created using a set of stickers and metadata to describe the distribution.

## Collage ##
Users can create a collage of images. Similar to layering, support for uploading multiple images will need to be added. This can be done with back end photo service/api or a way to temporarily upload multiple images into the client.

Collages are limited to a grid of photos with a solid background.

## Fancy Collage ##
Users can create a collage using a template.

The template itself is a piceditor document with special "target" document objects representing the places users can insert their photos.