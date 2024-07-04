# ys-3dskit D template

Change this readme and the values in `xmake.lua` to configure the project.

Ensure you have [LDC](https://dlang.org/download.html) on your system.

## Building

```sh
# configure xmake and install packages, only necessary first time
# re-run this if you add new dependencies to the project
xmake f -p 3ds -m release -a arm --toolchain=devkitarm -y
# build!
xmake
```
