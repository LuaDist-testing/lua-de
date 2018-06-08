# About lua-de

## Description

lua-de is an implementation of the [differential evolution][1]
algorithm for Lua. Currently only the DE/rand/1/bin scheme is
implemented, but it is easy to change only the required functions to
suit one's needs.

lua-de is released under the MIT license.

## Performance

The code was optimized to run well on [LuaJIT][2], and should be on par
with a C implementation.

## Usage

See _examples/rastrigin.lua_ or _de.lua_ itself. The whole library is in _de.lua_.

## Source code and Contact

Repository on [bitbucket][3].
Contact me at lucashnegri@gmail.com.
Patches are more than welcome.

[1]: http://dx.doi.org/10.1023%2FA%3A1008202821328
[2]: http://luajit.org/
[3]: https://bitbucket.org/lucashnegri/lua-de
