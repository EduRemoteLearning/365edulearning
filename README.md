# SharePoint Landing Page for Office 365 Remote Learning

This page has been put together to help you withe deployment of the SharePoint Landing Page for the Remote Learning Enviornment for Microsoft Partners.  This github repo will provide you with instructions, the pre-requirements for deploying the template, a powershell script and other useful information for you to be able to successfully deploy it.

# Pre-requirements

The template will be deployed via a powershell script.  You will need to install the Micrsoft Patterns and Practices PowerShell SharePoint Online module which is available here.

https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps

A set of requirements are needed for these modules, please ensure you have install all of these before running the script on a tenant.

# What you need to know

The script has been designed for you to run  against the root site collection of the new Offie 365 tenancy school.sharepoint.com.  You do not need to install a new one unless you wish to do so. 

You can add any additional content however the template comes as is.

# You will find in this repo:
-instructions on how to implement the template into the root site collection but also a newly created site collection if you want to have it somewhere else.
-image assets <-- please note these must be uploaded to the site before applying the template otherwise the template will not upload correctly and you will have manual fixes to resolve the issues of running the template twice on a site.
-an .xml file with the template for Apply-PnPProvisioningTemplate.  This is available in teh PnP powershell Cmdlets.
