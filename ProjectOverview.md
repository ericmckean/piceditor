# Piceditor Project Overview #

Piceditor is composed of the following projects:
  * Picnik
  * Libraries
    * basicControlsLib
    * coreLib
    * thirdPartyLib
    * utilLib
  * Modules
    * ModAccount
    * ModBridges
    * ModCreate
    * ModDialog

## Picnik ##
The Picnik project is the main module of the project required to load all other modules.

## Libraries ##

Libraries are a way to group independent sections of code together. A library compiles into a .SWC file which is used by other projects at compile time.

Libraries are useful for keeping clean separations between sets of code but seem to offer little if any compilation performance benefits.

Piceditor uses the following libraries:
  * basicControlsLib
  * coreLib
  * thirdPartyLib
  * utilLib

#### basicControlsLib ####
Basic controls used by all of the modules. These include enhanced versions of various controls as well as custom controls. One major component is the auto-resizing controls which resize to fit their text labels. These are useful for creating labels that expand/shrink to fit available space and support localized content.

#### coreLib ####
The core library is a very small library that contains basic interfaces that might be used by other projects you may wish to create.

#### thirdPartyLib ####
This is a library of all third party code used by the project.

#### utilLib ####
This is a library of utility routines

## Modules ##

A module is a project that is compiled into a SWF that can be loaded at run time.

piceditor uses the following modules:
  * ModAccount
  * ModBridges
  * ModCreate
  * ModDialog

#### ModAccount ####
The ModAccount module contains UX elements relating to managing user subscriptions and payment.

#### ModBridges ####
The ModBridges module contains UX elements and business logic to provide users access to third party photo storage sites such as Flickr and Picasa Web Albums.

#### ModCreate ####
The ModCreate module contains UX elements relating to the following features:
  * Special effects
  * Shapes
  * Text
  * Collages
  * Fancy collages

#### ModDialog ####
The ModDialog module contains dialogs that users may encounter in the product. User account related dialogs account for a significant portion of this module.