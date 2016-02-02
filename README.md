Silverstripe-Content-Blocks (previous: Silverstripe-Section-Module)
===========================

Split your page content into manageable sections/blocks of content, each with their own template.

## Create compelling and unique pages ##
This module gives you the option to create your content, in little blocks, instead of just one big content area.

When the module is installed, a "Blocks" tab will be added to all pages. The blocks tab holds a GridField, that allows you to create as many blocks of content as you would like.
Each block of content can have it's own template assigned. The module commes with a set of standard templates.

You can easily create your own block templates and even your own block DataObjects with unique fields. This makes it very easy for content editors to create pages with lots of variation, without having to know HTML, fiddle around with tables and so on.
Create your own block templates and/or extend the Block DataObject to create:
- Image lists (simple gallery)
- Employee listings
- Product listings
- and much more

### Version compatibility ###
Tested on Silverstripe 3.1.2

### Installation instructions ###

- Put this module under the root folder of site, named content-blocks.
- Add the following code to your app/templates/Layout/Page.ss where you want the content blocks to be rendered:
```
<div class="blocks"><% loop ActiveBlocks %>$Me<% end_loop %></div>
```

Or you can ask for a single Block to render via it's ID (replace 5 with your ID):
```
$OneBlock(5)
```

- install the following dependent module(s)
	- GridField Extensions
	https://github.com/ajshort/silverstripe-gridfieldextensions/
	
	- Better buttons for GridField by unclecheese
	https://github.com/unclecheese/silverstripe-gridfield-betterbuttons
	
Or use Composer:
Add these to your composer.json file
```
	"repositories": [
        {
            "type": "git",
            "url":  "git@github.com:andrewnick/Silverstripe-Content-Blocks.git"
        }
    ],
   	"require": {
		"andrewnick/silverstripe-content-blocks": "dev-master",
	},
```

- run sitename.com/dev/build?flush=all

- Please copy the files content-blocks/templates/BlockTemplates to app/templates/BlockTemplates.
- The module will copy content-blocks/css/sections.css to app/dist/css/block.css, should this fail, please copy the file manually.

### Usage and customization: ###
- add your own templates to app/templates/BLcokTemplates, they need to have the extension .ss and delete any unwanted templates (there is full example set of fixed width and fluid width templates included in the module)
- allways run dev/build?flush=1 after adding templates
- remember to ?flush=1 after modification of templates

### Screenshots

![Overview](docs/images/overview.png)
Overview in page editing

![modeladmin](docs/images/modeladmin.png)
View all blocks across pages in a ModelAdmin

![](docs/images/detail_main.png)
![](docs/images/detail_media.png)
![](docs/images/detail_template.png)
Detail views

### TODO: ###
- Option to add more content placeholders without coding - site config?
- Handle search
- Versioning

### IDEAS ###
- Save available templates in database (enum field) - create on dev/build or use template manifest
- Build in template generator
- Form blocks
- Better previews (C/P from design)
- Perhaps add foundation templates as a suggested composer requirement (and other CSS frameworks)
