import ./types

{.push cdecl, header: "arrayfire.h".}

proc afwindow*(): Window
  {.constructor, importcpp: "af::Window(@)".}

proc afwindow*(title: cstring): Window
  {.constructor, importcpp: "af::Window(@)".}

proc afwindow*(width: cint; height: cint; title: cstring = "ArrayFire"): Window
  {.constructor, importcpp: "af::Window(@)".}

proc afwindow*(wnd: Window): Window
  {.constructor, importcpp: "af::Window(@)".}

proc destroyWindow*(this: var Window)
  {.importcpp: "#.~Window()".}

proc get*(this: Window): Window
  {.noSideEffect, importcpp: "get".}

proc setPos*(this: var Window; x: cuint; y: cuint)
  {.importcpp: "setPos".}

proc setTitle*(this: var Window; title: cstring)
  {.importcpp: "setTitle".}

proc setSize*(this: var Window; w: cuint; h: cuint)
  {.importcpp: "setSize".}

proc setColorMap*(this: var Window; cmap: ColorMap)
  {.importcpp: "setColorMap".}

proc image*(this: var Window; matin: AFArray; title: cstring = nil)
  {.importcpp: "image".}

proc plot*(this: var Window; matin: AFArray; title: cstring = nil)
  {.importcpp: "plot".}

proc plot*(this: var Window; x: AFArray; y: AFArray; z: AFArray; title: cstring = nil)
  {.importcpp: "plot".}

proc plot*(this: var Window; x: AFArray; y: AFArray; title: cstring = nil)
  {.importcpp: "plot".}

proc scatter*(this: var Window; matin: AFArray; marker: MarkerType; title: cstring = nil)
  {.importcpp: "scatter".}

proc scatter*(this: var Window; x: AFArray; y: AFArray; z: AFArray; marker: MarkerType; title: cstring)
  {.importcpp: "scatter".}

proc scatter*(this: var Window; x: AFArray; y: AFArray; marker: MarkerType; title: cstring = nil)
  {.importcpp: "scatter".}

proc hist*(this: var Window; x: AFArray; minval: cdouble; maxval: cdouble; title: cstring = nil)
  {.importcpp: "hist".}

proc surface*(this: var Window; s: AFArray; title: cstring = nil)
  {.importcpp: "surface".}

proc surface*(this: var Window; xVals: AFArray; yVals: AFArray; s: AFArray; title: cstring = nil)
  {.importcpp: "surface".}

proc vectorField*(this: var Window; points: AFArray; directions: AFArray; title: cstring = nil)
  {.importcpp: "vectorField".}

proc vectorField*(this: var Window; xPoints: AFArray; yPoints: AFArray; zPoints: AFArray; xDirs: AFArray; yDirs: AFArray; zDirs: AFArray; title: cstring = nil)
  {.importcpp: "vectorField".}

proc vectorField*(this: var Window; xPoints: AFArray; yPoints: AFArray; xDirs: AFArray; yDirs: AFArray; title: cstring = nil)
  {.importcpp: "vectorField".}

proc setAxesLimits*(this: var Window; x: AFArray; y: AFArray; exact: bool = false)
  {.importcpp: "setAxesLimits".}

proc setAxesLimits*(this: var Window; x: AFArray; y: AFArray; z: AFArray; exact: bool = false) {.importcpp: "setAxesLimits".}

proc setAxesLimits*(this: var Window; xmin: cfloat; xmax: cfloat; ymin: cfloat; ymax: cfloat; exact: bool = false) {.importcpp: "setAxesLimits".}

proc setAxesLimits*(this: var Window; xmin: cfloat; xmax: cfloat; ymin: cfloat; ymax: cfloat; zmin: cfloat; zmax: cfloat;
    exact: bool = false) {.importcpp: "setAxesLimits".}

proc setAxesTitles*(this: var Window; xtitle: cstring = "X-Axis"; ytitle: cstring = "Y-Axis"; ztitle: cstring = "Z-Axis") {.importcpp: "setAxesTitles".}

proc grid*(this: var Window; rows: cint; cols: cint) {.importcpp: "#.grid(@)".}

proc show*(this: var Window) {.importcpp: "show".}

proc close*(this: var Window): bool {.importcpp: "close".}

proc setVisibility*(this: var Window; isVisible: bool) {.importcpp: "setVisibility".}

proc `[]`*(this: var Window; r: cint; c: cint): var Window {.importcpp: "#(@)".}

proc loadImage*(filename: cstring; isColor: bool = false): AFArray {.importcpp: "af::loadImage(@)".}

proc saveImage*(filename: cstring; matin: AFArray) {.importcpp: "af::saveImage(@)".}

proc loadImageMem*(`ptr`: pointer): AFArray {.importcpp: "af::loadImageMem(@)".}

proc saveImageMem*(matin: AFArray; format: ImageFormat): pointer {.importcpp: "af::saveImageMem(@)".}

proc deleteImageMem*(`ptr`: pointer) {.importcpp: "af::deleteImageMem(@)".}

proc loadImageNative*(filename: cstring): AFArray {.importcpp: "af::loadImageNative(@)".}

proc saveImageNative*(filename: cstring; matin: AFArray) {.importcpp: "af::saveImageNative(@)".}

proc isImageIOAvailable*(): bool {.importcpp: "af::isImageIOAvailable(@)".}

{.pop.}
