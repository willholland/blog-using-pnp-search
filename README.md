# blog-using-pnp-search
Assets, data and code samples used to support the article *How to use the PnP Search Web Parts* on the Microsoft 365 PnP Blog.

## Setting up  your environment
In the **setup** folder of this repository, you'll find the `template.xml` file, which is a PnP site template.

This template includes everything you'll need to get going with the PnP Modern search web parts: Site Columns, Content Types, list and list items. It also includes the search settings used to facilitate sorting and filtering.

Use the `Invoke-PnPSiteTemplate` command to apply it to the site of your choice. Refer to the [documentation](https://pnp.github.io/powershell/cmdlets/Invoke-PnPSiteTemplate.html)) on how to use this command, if you're unfamiliar.

> **NOTE:** Due to the number of list items, applying this template will take some time.