# LuaJIT FFI bindings for FBInk

Licensed under the [AGPLv3](/LICENSE).

See [FBInk](https://github.com/NiLuJe/FBInk) ;).

## Usage

See the basic [example](/hello.lua), it's basically [LuaJIT](http://luajit.org/) + [ffi](http://luajit.org/ext_ffi.html) + [FBInk](https://github.com/NiLuJe/FBInk/blob/master/fbink.h) ;).
There's absolutely zero higher-level wrapping, so you can pretty much follow FBInk's C API.

With the idea being to help people avoid having to set up a [cross-compilation](https://github.com/koreader/koxtoolchain) [toolchain](http://trac.ak-team.com/trac/browser/niluje/Configs/trunk/Kindle/Misc/x-compile.sh), I've prepared LuaJIT builds for [Kindle](https://www.mobileread.com/forums/showpost.php?p=3777678&postcount=174) & [Kobo](https://www.mobileread.com/forums/showpost.php?p=3777677&postcount=76) ;).
On Kobo, it should automatically pickup my own FBInk builds, either from the [standalone package](https://www.mobileread.com/forums/showthread.php?t=299110) or from [KoboStuff](https://www.mobileread.com/forums/showthread.php?t=254214); while on Kindle, it'll pick up the one from the [Python package](https://www.mobileread.com/forums/showthread.php?t=225030) (but you can also get a shared lib from the [standalone package](https://www.mobileread.com/forums/showthread.php?t=299620) and put it in the right place, f.g., in a `lib` folder next to the `luajit` binary).
