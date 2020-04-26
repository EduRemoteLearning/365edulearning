# SharePoint Landing Page for Office 365 Remote Learning

This page has been put together to help you with the deployment of the SharePoint Landing Page for the Remote Learning Enviornment for Microsoft Partners.  This github repo will provide you with instructions, the requirements for deploying the template, a powershell script and other useful information for you to be able to successfully deploy it.

# Requirements

The template will be deployed via a powershell script.  You will need to install the Microsoft Patterns and Practices PowerShell SharePoint Online module which is available here.

https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps

A set of requirements are needed for these modules, please ensure you have install all of these before running the script on a tenant.

# What you need to know

The script has been designed for you to run against the root site collection of the new Offie 365 tenancy school.sharepoint.com.  You do not need to install a new site collection unless you wish to do so. 

You can add any additional content however the template comes as is.

If you are creating a new site collection you will need the following module.
https://docs.microsoft.com/en-us/office365/enterprise/powershell/manage-sharepoint-online-with-office-365-powershell

# You will find in this repo:
- images for the remote learning site

- an xml file that is used to provision the content onto a sharepoint site using teh PNP powershell cmdleyts Apply-PnPProvisioningTemplate

- 2 PowerShell scripts - please ensure you read the comments in the script to understand what it is doing

  -: RootSiteCollection.  This will allow you to deploy to the root ".sharepoint.com"

  -: New Site Collection. This will deploy to the URL you state.  It will also create the site colleciton for you with the recommended site template.
  
 # Things to note:
 
 You must ensure all 10 images are uploaded before deploying the template
 
 You will get a warning when deploying to the root site collection that it is a different site template - this is fine and the template will still deploy.
