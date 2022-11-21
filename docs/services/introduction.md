# Introduction to Services

put something here lol

# Utility Module

[TOC]

<div class='grid' style='grid-template-columns: 100%'>
  <div class='greenBox'>Both client and server sided</div>
</div>

---
## Internal Functions
### __Checks__ <sub style='color: #1589F0'>Variant

!!! warning
    This isn't accessible by any script requiring this module.

|__Parameter(s)__|__Data__|
|||
|<b>file<sub style='color: #1589F0'>ModuleScript</sub>|The module you want to check.|

|__Returns(s)__|__Data__|
|||
|<b style='color: #1589F0'>Variant</b>|The functions the module contains.|

---
## Functions
### __GetServiceFile__ <sub style='color: #1589F0'>Instance
Gets you the service file.

|__Parameter(s)__|__Data__|
|||
|<b>service<sub style='color: #1589F0'>string</sub>|The service you are requesting.|

|__Returns(s)__|__Data__|
|||
|<b style='color: #1589F0'>Instance</b>|The service file.|

__Code Example__
```lua
local Utility = require( game:GetService('Utility') )

print( Utility:GetServiceFile('Http') ) --> 'Http' Instance
```

### __GetService__ <sub style='color: #1589F0'>Variant
Gets you the service module that you requested to get. Read the docs to understand what requirements is needed to use that certain file.

|__Parameter(s)__|__Data__|
|||
|<b>service<sub style='color: #1589F0'>string</sub>|The service you are requesting.|

|__Returns(s)__|__Data__|
|||
|<b style='color: #1589F0'>Variant</b>|The functions the service contains.|

__Code Example__
```lua
local Utility = require( game:GetService('Utility') )

local Http = Utility:GetService('Http')

print( Http:Encode({ amongus = 'imposter' }) ) --> "{ "amongus": "imposter" }"
```

### __GetSubService__ <sub style='color: #1589F0'>Variant
Gets you the sub-service module that you requested to get. Read the docs to understand what requirements is needed to use that certain file.

|__Parameter(s)__|__Data__|
|||
|<b>service<sub style='color: #1589F0'>string</sub>|The service you are looking in.|
|<b>sub_service<sub style='color: #1589F0'>string</sub>|The sub-service you are requesting.|

|__Returns(s)__|__Data__|
|||
|<b style='color: #1589F0'>Variant</b>|The functions the sub-service contains.|

__Code Example__
```lua
local Utility = require( game:GetService('Utility') )

local DiscordWebhooks = Utility:GetSubService('Http', 'DiscordWebhooks')

-- Do something wit the webhooks --
```