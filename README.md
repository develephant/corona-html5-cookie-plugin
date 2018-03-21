# ![logo](logo.png) Corona HTML5 Cookie Plugin

## Installation

 - Download the __Corona HTML5 Cookie Plugin__ repository.

 - Move __plugin/cookie.lua__ and __plugin/cookie_js.js__ to the ___root___ of your HTML5 project.

 - Require the plugin in your code where you need it.

```lua
local cookie = require("cookie")
```

## API

### set

### get

### delete

## Demos

### Corona

In the __demo__ directory is the Corona project that you can compile yourself for testing. The demo does have some debug output that prints to the browser console. The plugin in the __plugin__ directory does not output any debug info.

### HTML5

In the __html5__ directory is a compiled version of the demo project that you can push up to your server for testing.

## Notes

 - Only tested on Google Chrome at this time.

 - You can view the cookie data using the Google Chrome _Developer Tools_ window. Click the _Application_ tab, and then _Cookies_ (on the left side menu).

&copy;2018 C. Byerley ([develephant](https://develephant.com))