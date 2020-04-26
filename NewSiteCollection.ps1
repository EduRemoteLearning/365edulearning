### import modules
Import-Module SharePointPnPPowerShellOnline
Import-Module Microsoft.Online.SharePoint.PowerShell

### Add the URL of the URL of the root site collection for this Office 365 SharePoint environment
$url = "https://remotelearningdfe1.sharepoint.com/sites/remotelearning"

### this is required to connect to the SP Admin cmdlets to create new site collection
$SPAdminurl = "https://remotelearningdfe1-admin.sharepoint.com"

###  Who will be the first Site Collection Admin for the new Site Collection
$siteCollectionAdmin = "admin2@remotelearningdfe1.onmicrosoft.com"

### Having downloaded all the images and the XML file, add the path to the below.  The final character must be \
$path = "C:\Remotelearning\"


Connect-SPOService -Url $SPAdminurl 

New-SPOSite -Url $URL -Owner $siteCollectionAdmin -Title "Remote Learning" -Template STS#3 -StorageQuota 1000


### Connect to the SharePoint Site Collection
Connect-PnPOnline -Url $URL -UseWebLogin

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


### Apply the template to the site.
Apply-PnPProvisioningTemplate -Path ($path + "RemoteLearningTemplate.xml") 