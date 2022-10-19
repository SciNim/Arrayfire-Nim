# Package

version       = "0.1.0"
author        = "Regis Caillaud"
description   = "ArrayFire wrapper"
license       = "BSD-3"
backend       = "cpp"


# Dependencies

requires "nim >= 1.6.0"
switch("mm", "orc")

# sudo apt install libforge-dev arrayfire-headers arrayfire-cpu3-dev arrayfire-doc
