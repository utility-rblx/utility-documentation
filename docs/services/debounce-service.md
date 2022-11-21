# Debounce Service

[TOC]

<div class='grid' style='grid-template-columns: 100%'>
  <div class='greenBox'>Both client and server side</div>
</div>

## Debounce
### __Constructors__
`new()` returns a `New Debounce` object.

|__Parameter(s)__|__Data__|
|||
|<b>callback<sub style='color: #1589F0'>function</sub></b>|The function that will be called.|
|<b>settings<sub style='color: #1589F0'>Variant</sub></b>|Settings of debounce object.|

__settings table format__
```lua
{
  Delay,
  Coroutine
}
```

### __Run__ <sub style='color: #1589F0'>void
Runs the function which was defined above. Will not run if debounce is active.

|__Parameter(s)__|__Data__|
|||
|<b>...<sub style='color: #1589F0'>Variant</sub></b>|Arguments that will be passed through the function.|

__Code Example__

__Delay__
```lua
local Debounce = Utility:GetService('Debounce')

local DebounceObject = Debounce.new(function()
  print('Hi, I can only be ran every 5 seconds')
end, { Delay = 5 })

while wait() do
  DebounceObject:Run()
end

-- Expected output:
-- Hi, I can only be ran every 5 seconds
-- *5 seconds later*
-- Hi, I can only be ran every 5 seconds
-- ...
```

__Coroutine__
```lua
local Debounce = Utility:GetService('Debounce')

local DebounceObject = Debounce.new(function()
  wait(5)
  print('Hi, I can only be ran every 5 seconds, but it doesn\'t yield for the funciton to finish.')
end, { Delay = 5, Coroutine = true })

while wait() do
  DebounceObject:Run()
end

-- Expected output:
-- *5 seconds later*
-- Hi, I can only be ran every 5 seconds, but it doesn't yield for the funciton to finish.
-- *5 seconds later*
-- Hi, I can only be ran every 5 seconds, but it doesn't yield for the funciton to finish.
-- ...
```

__Using Args__
```lua
local Debounce = Utility:GetService('Debounce')

local DebounceObject = Debounce.new(function(number)
  print( ('I love: %i'):format(number) )
end, { Delay = 5 })

DebounceObject:Run(8) --> Expected Output: I love: 8
```

### __Active__ <sub style='color: #1589F0'>boolean
This will return if the function is on a debounce cooldown.

__Code Example__
```lua
local Debounce = Utility:GetService('Debounce')

local DebounceObject = Debounce.new(function()
  print('Hi, I can only be ran every 5 seconds')
end, { Delay = 5 })

DebounceObject:Run()
print( DebounceObject:Active() ) --> Expected Output: true

task.wait(DebounceObject.Delay)

print( DebounceObject:Active() ) --> Expected Output: false
```

### __IgnoreDebounce__ <sub style='color: #1589F0'>void
This will bypass the debounce if statement, allowing you to run it.

__Code Example__
```lua
local Debounce = Utility:GetService('Debounce')

local DebounceObject = Debounce.new(function()
  print('Hi, I can only be ran every 5 seconds')
end, { Delay = 5 })

DebounceObject:Run() --> Expected Ouput: Hi, I can only be ran every 5 seconds
DebounceObject:Run() --> Expected Output: *nil, aka nonething*
DebounceObject:IgnoreDebounce() --> Expected Output: Hi, I can only be ran every 5 seconds
```

## Methods
### __wrap__ <sub style='color: #1589F0'>function
This would automatically create an debounce object and returning you function that you can just run.

|__Parameter(s)__|__Data__|
|||
|<b>callback<sub style='color: #1589F0'>function</sub></b>|The function that will be called.|
|<b>delay<sub style='color: #1589F0'>number</sub></b>|The length of the debounce in seconds.|

|__Return(s)__|__Definition__|
|||
|<b style='color: #1589F0'>function</b>|The wrapped debounce function.|

!!! Note inline
    This can be passed with args such as: `WrappedDebounceFunction(arg1, arg2, ..., argN-1)`

__Code Example__
```lua
local Debounce = Utility:GetService('Debounce')

local WrappedDebounceObject = Debounce.wrap(function()
  print('Hi, I can only be ran every 5 seconds')
end, 5)

WrappedDebounceObject() --> Expected Output: Hi, I can only be ran every 5 seconds
```