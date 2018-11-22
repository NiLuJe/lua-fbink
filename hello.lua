#!/usr/bin/env luajit
--[[
Barebones example of FBInk usage through LuaJIT's FFI module
--]]

local ffi = require("ffi")
local C = ffi.C
-- Load the prepared declarations (built from  FBInk/ffi/fbink_decl.c via https://github.com/koreader/ffi-cdecl)
local _ = require("ffi/fbink_h")
-- And load the actual FBInk library...
-- Either by specifying a filepath:
--local fbink = ffi.load("lib/libfbink.so.1.0.0")
-- Or by letting the dynamic loader figure it out ;).
local fbink = ffi.load("fbink")

-- Let's check which FBInk version we're using...
print("Loaded FBInk " .. ffi.string(fbink.fbink_version()))

-- And now we're good to go! Let's print "Hello World" in the center of the screen...
-- Setup the config...
local fbink_cfg = ffi.new("FBInkConfig[1]")
fbink_cfg[0].is_centered = true
fbink_cfg[0].is_halfway = true

-- Open the FB...
local fbfd = fbink.fbink_open()
if fbfd == -1 then
	print("Failed to open the framebuffer, aborting . . .")
	os.exit(-1)
end

-- Initialize FBInk...
if fbink.fbink_init(fbfd, fbink_cfg) < 0 then
	print("Failed to initialize FBInk, aborting . . .")
	os.exit(-1)
end

-- Do stuff!
if fbink.fbink_print(fbfd, "Hello World", fbink_cfg) < 0 then
	print("Failed to print that string!")
end

-- And now we can wind things down...
if fbink.fbink_close(fbfd) < 0 then
	print("Failed to close the framebuffer, aborting . . .")
	os.exit(-1)
end
