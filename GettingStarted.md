# Getting Started #

Building and running piceditor is relatively simple.

You will need:
  1. A computer (refer to [Operating System Notes](GettingStarted#Operating_System_Notes.md))
  1. At least 100MB of hard drive space

## Step 1: Get The Source Code ##



## Step 2: Download and Configure Flash Builder ##

#### Install Flash Builder ####
Download and install Flash Builder from [Adobe](http://www.adobe.com/products/flash-builder.html) (or the Linux command line alternatives)

#### Download the Flex 3.2 SDK ####
Download the [Flex 3.2 SDK](http://opensource.adobe.com/wiki/display/flexsdk/Download+Flex+3)

#### Install the Flex 3.2 SDK ####

Point Flash Builder at the Flex 3.2 SDK:
  * Open Flash Builder
  * From the Window menu, choose preferences
  * Browse for Flash Builder, Installed Flex SDKs
  * Click "Add..." and browse for your newly downloaded Flex 3.2 sdk.

#### Add Linked Resources ####

If your enlistment is at C:\src\picedit, you can follow these steps exactly. If not, please update the paths to your enlistment.

To create the linked resources:
  * Open Flash Builder
  * From the Window menu, choose preferences
  * Browse for General, Workspace, Linked Resources
  * Click "New..." and add the following resources:
    * DOCROOT: C:\src\piceditor
    * THIRD\_PARTY: C:\src\piceditor\third\_party
    * FLEX\_3\_2: The location of your Flex 3.2 SDK download

## Step 3: Import the Projects ##

To import the projects into Flash Builder:
  * Open Flash Builder
  * From the File menu choose Import...
  * Under General select Existing Projects into Workspace and hit Next >
  * Browse for C:\src\piceditor (update as needed) for your root directory.
  * Do not check Copy projects to Workspace
  * Uncheck ModGreeting, ShapePreviews, and FontToPng
  * Hit Finish

Fix projects so they build:
  * Edit basicControlsLib/controls/ResizingTextBase.as to point LeadingStyle.as to correct location in Flex3.2 sdk (or simply copy and paste from origin)
  * Do a clean build to refresh the project state
  * Address additional errors:
    * Picnik: right-click to recreate folder html-template

## Step 4: Configure Your Web Server ##

Everything should build in your ${DOCROOT}/website directory. To run piceditor, you will need to make this directory available on a web server.

I used Apache to do this:
  1. Create a host map from mywebsite.com to 127.0.0.1:
    * Edit \Windows\System32\drivers\etc\hosts or /etc/hosts
    * Add this line:
```
127.0.0.1	localcdn.mywebsite.com cdnlocal.mywebsite.com  local.mywebsite.com
```
  1. Install Apache (for Windows, in my case)
  1. Edit your Apache httpd.conf to point **.mywebsite.com to ${DOCROOT}/website. My edits look like this:
```
<VirtualHost *:80>
	DocumentRoot "C:/src/picnik_o/picnik_oss/website"
	ServerName www.mywebsite.com
	ServerAlias mywebsite.com *.mywebsite.com
	<Directory />
		Options FollowSymLinks
		AllowOverride None
		Order allow,deny
		Allow from all
	</Directory>
</VirtualHost> 
```**

Once your web server is configured, you should be able to browse to:

http://local.mywebsite.com/app/Picnik.html?debug=true/Picnik.html

This will bring up a very ugly version of an image editor.

Refer to the StylingGuide and IntegrationGuide for next steps.


## Notes ##

### Operating System Notes ###
The easiest way to build and develop piceditor is using Flash Builder which is supported on Windows and OS/X.

Building Flex applications on a Linux platform is a viable alternative but out of scope of this document.