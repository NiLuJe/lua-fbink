# LuaJIT FFI bindings for FBInk

Licensed under the [AGPLv3](/LICENSE).

See [FBInk](https://github.com/NiLuJe/FBInk) ;).

# Usage

See the basic [example](/hello.lua), it's basically [LuaJIT](http://luajit.org/) + [ffi](http://luajit.org/ext_ffi.html) + [FBInk](https://github.com/NiLuJe/FBInk/blob/master/fbink.h) ;).
There's absolutely zero higher-level wrapping, so you can pretty much follow FBInk's C API.

With the idea being to help people avoid having to set up a [cross-compilation](https://github.com/koreader/koxtoolchain) [toolchain](http://trac.ak-team.com/trac/browser/niluje/Configs/trunk/Kindle/Misc/x-compile.sh), I've prepared LuaJIT builds for [Kindle](NYI) & [Kobo](NYI) ;).
