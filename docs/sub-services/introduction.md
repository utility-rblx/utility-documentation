# Introduction to Sub-Services

A sub service is a service that uses that certain service you chose to get/use but used in a different way. Such as a Http sub service, the discord webhook one. It uses the Http module, but instead of it making you do the http stuff, it does it for you. Or, think of it this way...

Make. Life. Easier. By. Loading. Another. File. To. Do. All. My. Shit. For. Me. (Or for short: MLEBLAFTDAMSFM)

__Example of a `Sub Service` require__

```lua
local Utility = require(game:WaitForChild('ReplicatedStorage'):WaitForChild('Utility'))

local SubService = Utility:GetSubService(service <string>, sub_service <string>) -- You would input a service like normal, and input its subservice if it exists in that file.

SubService():CreateTheBestDocumentedModule() -- Something like this.
```