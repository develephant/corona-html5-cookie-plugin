# ![logo](logo.png) Corona HTML5 Cookie Plugin

A basic plugin for setting, getting, and deleting cookies inside your [Corona](https://coronalabs.com) HTML5 apps.

## Installation

 - Download the __Corona HTML5 Cookie Plugin__ repository.

 - Move __plugin/cookie.lua__ and __plugin/cookie_js.js__ to the ___root___ of your HTML5 project.

 - Require the plugin in your code where you need it.

```lua
local cookie = require("cookie")
```

## API

### set

Set the cookie data.

```lua
cookie.set(name, value[, expiryDays])
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|name|The name of the cookie.|_String_|__Y__|
|value|The value of the cookie.|_String_|__Y__|
|expiryDays|Days till expiration. Otherwise, lasts until deleted.|_Number_|__N__|

__Returns__

The _String_ 'set' on success.

__Example__

```lua
local result = cookie.set("username", "develephant", 1) -- expire in 1 day

print(result) --> set
```

### get

Get the cookie data.

```lua
cookie.get(name)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|name|The name of the cookie.|_String_|__Y__|

__Returns__

The cookie value as a _String_. If no cookie data exists, returns empty _String_.

__Example__

```lua
local username = cookie.get("username")

print(username) --> develephant
```

### delete

Delete the cookie data.

```lua
cookie.delete(name)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|name|The name of the cookie.|_String_|__Y__|

__Returns__

The _String_ 'deleted' on success.

__Example__

```lua
local result = cookie.delete("username")

print(result) --> deleted
```

## Demo

### Corona

In the __demo__ directory is a Corona project that you can build for HTML5 testing. The demo does have some debug output that prints to the browser console. The plugin in the __plugin__ directory does not output any debug info.

## Notes

 - Only tested on Google Chrome at this time.

 - In the demo, the loading bar is not shown because of the black background. Hopefully this will be a build setting option in the future.

 - Reload the browser after setting a cookie to see that it has saved the cookie.

 - You can also view the cookie data using the Google Chrome _Developer Tools_ window. Click the _Application_ tab, and then _Cookies_ (on the left side menu).

---

&copy;2018 C. Byerley ([develephant](https://develephant.com))