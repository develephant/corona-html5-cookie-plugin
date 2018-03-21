--#############################################################################
--# Cookie Plugin Demo
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local cookie = require("cookie") --plugin

local cookie_txt

--#############################################################################
--# API
--#############################################################################
local function setCookie()
  local res = cookie.set("username", "develephant", 1)
  cookie_txt.text = res
end

local function getCookie()
  local res = cookie.get("username")
  if res == '' then
    cookie_txt.text = "no cookie set"
  else
    cookie_txt.text = res
  end
end

local function deleteCookie()
  local res = cookie.delete("username")
  cookie_txt.text = res
end

--#############################################################################
--# UI
--#############################################################################
local widget = require("widget")

--# Text
local title = display.newText({
  text = "Corona HTML5 Cookie Plugin",
  x = display.contentCenterX,
  y = 40,
  font = native.systemFont,
  fontSize = 18,
  align = "center"
})
title:setFillColor(249/255,124/255,0)

cookie_txt = display.newText({
  text = "Select Action",
  x = display.contentCenterX,
  y = 100,
  font = native.systemFont,
  fontSize = 16,
  align = "center"
})

--# Buttons
local xPos = display.contentCenterX

local setCookieBtn = widget.newButton({
  x = xPos,
  y = 160,
  label = "Set Cookie",
  onRelease = setCookie
})

local getCookieBtn = widget.newButton({
  x = xPos,
  y = 200,
  label = "Get Cookie",
  onRelease = getCookie
})

local deleteCookieBtn = widget.newButton({
  x = xPos,
  y = 240,
  label = "Delete Cookie",
  onRelease = deleteCookie
})
