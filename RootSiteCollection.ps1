Import-Module SharePointPnPPowerShellOnline

### Add the URL of the URL of the root site collection for this Office 365 SharePoint environment
$url = "https://dfebfctest1.sharepoint.com"

### Having downloaded all the images and the XML file, add the path to the below.  The final character must be \
$path = "C:\Users\AlexPearce\OneDrive - BFC Networks\Desktop\Images for MS\final\"

### Connect to the SharePoint Site Collection
Connect-PnPOnline -Url $URL -UseWebLogin

### This will rename the site collection Communication Site to Remote Learning
Set-PnPWeb -Title "Remote Learning"

### The root site collection does not have a Site Assets.  This will now create one
### Create the Site Assets 
New-PNPList -Title SiteAssets -Template DocumentLibrary -Url SiteAssets -EnableVersioning -OnQuickLaunch: $false

### Uploading the 10 images required for the site.
Add-PNPFile -Path ($path + "educators1.png") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "educators2.jpg") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "home1.jpeg") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "it1.png") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "it2.jpg") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "parentstudent1.png") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "parentstudent2.png") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "parentstudent3.png") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "schoolleader1.png") -Folder "/SiteAssets" 
Add-PNPFile -Path ($path + "schoolleader2.jpg") -Folder "/SiteAssets" 


### Apply the template to the site.  You will get a warning to say the base template for the site is different
# to the one for the template but this will not prevent if from being implemented.
Apply-PnPProvisioningTemplate -Path ($path + "RemoteLearningTemplate.xml") 