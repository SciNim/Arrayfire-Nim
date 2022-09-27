import ./types

{.push cdecl, header: "arrayfire.h".}

proc `+=`*(this: var AFArray; val: AFArray) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: cdouble) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: cfloat) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: cint) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: cuint) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: bool) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: char) {.importcpp: "(# += #)".}

when sizeof(clong) != sizeof(cint):
  proc `+=`*(this: var AFArray; val: clong) {.importcpp: "(# += #)".}

when sizeof(culong) != sizeof(cuint):
  proc `+=`*(this: var AFArray; val: culong) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray; val: clonglong) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray; val: culonglong) {.importcpp: "(# += #)".}

proc `-=`*(this: var AFArray; val: AFArray) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: cdouble) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: cfloat) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: cint) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: cuint) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: bool) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: char) {.importcpp: "(# -= #)".}

when sizeof(clong) != sizeof(cint):
  proc `-=`*(this: var AFArray; val: clong) {.importcpp: "(# -= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `-=`*(this: var AFArray; val: culong) {.importcpp: "(# -= #)".}

proc `-=`*(this: var AFArray; val: clonglong) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray; val: culonglong) {.importcpp: "(# -= #)".}

proc `*=`*(this: var AFArray; val: AFArray) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: cdouble) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: cfloat) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: cint) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: cuint) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: bool) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: char) {.importcpp: "(# *= #)".}

when sizeof(clong) != sizeof(cint):
  proc `*=`*(this: var AFArray; val: clong) {.importcpp: "(# *= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `*=`*(this: var AFArray; val: culong) {.importcpp: "(# *= #)".}

proc `*=`*(this: var AFArray; val: clonglong) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray; val: culonglong) {.importcpp: "(# *= #)".}

proc `/=`*(this: var AFArray; val: AFArray) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: cdouble) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: cfloat) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: cint) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: cuint) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: bool) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: char) {.importcpp: "(# /= #)".}

when sizeof(clong) != sizeof(cint):
  proc `/=`*(this: var AFArray; val: clong) {.importcpp: "(# /= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `/=`*(this: var AFArray; val: culong) {.importcpp: "(# /= #)".}

proc `/=`*(this: var AFArray; val: clonglong) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray; val: culonglong) {.importcpp: "(# /= #)".}

proc `-`*(this: AFArray): AFArray {.noSideEffect, importcpp: "(- #)".}

proc `!`*(this: AFArray): AFArray {.noSideEffect, importcpp: "(! #)".}

proc nonzeros*(this: AFArray): cint {.noSideEffect, importcpp: "nonzeros".}

proc lock*(this: AFArray) {.noSideEffect, importcpp: "lock".}

proc unlock*(this: AFArray) {.noSideEffect, importcpp: "unlock".}

proc `+`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# + #)".}

when sizeof(clong) != sizeof(cint):
  proc `+`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# + #)".}

when sizeof(culong) != sizeof(cuint):
  proc `+`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# + #)".}

proc `+`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# + #)".}

when sizeof(clong) != sizeof(cint):
  proc `+`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# + #)".}

when sizeof(culong) != sizeof(cuint):
  proc `+`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# + #)".}

proc `+`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# + #)".}
proc `+`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# + #)".}

proc `-`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# - #)".}

when sizeof(clong) != sizeof(cint):
  proc `-`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# - #)".}

when sizeof(culong) != sizeof(cuint):
  proc `-`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# - #)".}

proc `-`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# - #)".}

when sizeof(clong) != sizeof(cint):
  proc `-`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# - #)".}

when sizeof(culong) != sizeof(cuint):
  proc `-`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# - #)".}

proc `-`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# - #)".}
proc `-`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# - #)".}

proc `*`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# * #)".}

when sizeof(clong) != sizeof(cint):
  proc `*`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
when sizeof(culong) != sizeof(cuint):
  proc `*`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# * #)".}

proc `*`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# * #)".}

when sizeof(clong) != sizeof(cint):
  proc `*`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# * #)".}
when sizeof(culong) != sizeof(cuint):
  proc `*`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# * #)".}

proc `*`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# * #)".}
proc `*`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# * #)".}

proc `/`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# / #)".}

when sizeof(clong) != sizeof(cint):
  proc `/`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
when sizeof(culong) != sizeof(cuint):
  proc `/`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# / #)".}

proc `/`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# / #)".}

when sizeof(clong) != sizeof(cint):
  proc `/`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# / #)".}
when sizeof(culong) != sizeof(cuint):
  proc `/`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# / #)".}

proc `/`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# / #)".}
proc `/`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# / #)".}

proc `==`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# == #)".}

when sizeof(clong) != sizeof(cint):
  proc `==`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
when sizeof(culong) != sizeof(cuint):
  proc `==`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# == #)".}

proc `==`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# == #)".}

when sizeof(clong) != sizeof(cint):
  proc `==`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# == #)".}
when sizeof(culong) != sizeof(cuint):
  proc `==`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# == #)".}

proc `==`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# == #)".}
proc `==`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# == #)".}

proc `<`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# < #)".}

when sizeof(clong) != sizeof(cint):
  proc `<`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# < #)".}

when sizeof(culong) != sizeof(cuint):
  proc `<`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# < #)".}

proc `<`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# < #)".}

when sizeof(clong) != sizeof(cint):
  proc `<`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# < #)".}

when sizeof(culong) != sizeof(cuint):
  proc `<`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# < #)".}

proc `<`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# < #)".}
proc `<`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# < #)".}

proc `<=`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}

when sizeof(clong) != sizeof(cint):
  proc `<=`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `<=`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}

proc `<=`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# <= #)".}

when sizeof(clong) != sizeof(cint):
  proc `<=`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# <= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `<=`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# <= #)".}

proc `<=`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# <= #)".}
proc `<=`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# <= #)".}

proc `&&`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# && #)".}

when sizeof(clong) != sizeof(cint):
  proc `&&`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# && #)".}

when sizeof(culong) != sizeof(cuint):
  proc `&&`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# && #)".}

proc `&&`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# && #)".}

when sizeof(clong) != sizeof(cint):
  proc `&&`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# && #)".}

when sizeof(culong) != sizeof(cuint):
  proc `&&`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# && #)".}

proc `&&`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# && #)".}
proc `&&`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# && #)".}

proc `||`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# || #)".}

when sizeof(clong) != sizeof(cint):
  proc `||`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# || #)".}

when sizeof(culong) != sizeof(cuint):
  proc `||`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# || #)".}

proc `||`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# || #)".}

when sizeof(clong) != sizeof(cint):
  proc `||`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# || #)".}

when sizeof(culong) != sizeof(cuint):
  proc `||`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# || #)".}

proc `||`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# || #)".}
proc `||`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# || #)".}

proc `%`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# % #)".}

when sizeof(clong) != sizeof(cint):
  proc `%`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
when sizeof(culong) != sizeof(cuint):
  proc `%`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# % #)".}

proc `%`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# % #)".}

proc `%`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# % #)".}

proc `%`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# % #)".}

when sizeof(clong) != sizeof(cint):
  proc `%`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# % #)".}

when sizeof(culong) != sizeof(cuint):
  proc `%`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# % #)".}

proc `%`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# % #)".}
proc `%`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# % #)".}

proc `&`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# & #)".}

when sizeof(clong) != sizeof(cint):
  proc `&`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# & #)".}

when sizeof(culong) != sizeof(cuint):
  proc `&`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# & #)".}

proc `&`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# & #)".}

when sizeof(clong) != sizeof(cint):
  proc `&`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# & #)".}

when sizeof(culong) != sizeof(cuint):
  proc `&`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# & #)".}

proc `&`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# & #)".}
proc `&`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# & #)".}

proc `|`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# | #)".}

when sizeof(clong) != sizeof(cint):
  proc `|`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# | #)".}

when sizeof(culong) != sizeof(cuint):
  proc `|`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# | #)".}

proc `|`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# | #)".}

when sizeof(clong) != sizeof(cint):
  proc `|`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# | #)".}

when sizeof(culong) != sizeof(cuint):
  proc `|`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# | #)".}

proc `|`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# | #)".}
proc `|`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# | #)".}

proc `^`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}

when sizeof(clong) != sizeof(cint):
  proc `^`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}

when sizeof(culong) != sizeof(cuint):
  proc `^`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}

proc `^`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# ^ #)".}

when sizeof(clong) != sizeof(cint):
  proc `^`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# ^ #)".}

when sizeof(culong) != sizeof(cuint):
  proc `^`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# ^ #)".}

proc `^`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# ^ #)".}
proc `^`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# ^ #)".}

proc `<<`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# << #)".}

when sizeof(clong) != sizeof(cint):
  proc `<<`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# << #)".}

when sizeof(culong) != sizeof(cuint):
  proc `<<`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# << #)".}

proc `<<`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# << #)".}

when sizeof(clong) != sizeof(cint):
  proc `<<`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# << #)".}

when sizeof(culong) != sizeof(cuint):
  proc `<<`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# << #)".}

proc `<<`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# << #)".}
proc `<<`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# << #)".}

proc `>>`*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: bool; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: cint; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: cuint; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: char; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}

when sizeof(clong) != sizeof(cint):
  proc `>>`*(lhs: clong; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}

when sizeof(culong) != sizeof(cuint):
  proc `>>`*(lhs: culong; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}

proc `>>`*(lhs: clonglong; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: culonglong; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: cdouble; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: cfloat; rhs: AFArray): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: bool): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: cint): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: cuint): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: char): AFArray {.importcpp: "(# >> #)".}

when sizeof(clong) != sizeof(cint):
  proc `>>`*(lhs: AFArray; rhs: clong): AFArray {.importcpp: "(# >> #)".}

when sizeof(culong) != sizeof(cuint):
  proc `>>`*(lhs: AFArray; rhs: culong): AFArray {.importcpp: "(# >> #)".}

proc `>>`*(lhs: AFArray; rhs: clonglong): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: culonglong): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: cdouble): AFArray {.importcpp: "(# >> #)".}
proc `>>`*(lhs: AFArray; rhs: cfloat): AFArray {.importcpp: "(# >> #)".}

proc assign*(this: var AFArray_View; a: AFArray) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: cdouble) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: cfloat) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: cint) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: cuint) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: bool) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: char) {.importcpp: "#.operator=(@)".}

when sizeof(clong) != sizeof(cint):
  proc assign*(this: var AFArray_View; a: clong) {.importcpp: "#.operator=(@)".}

when sizeof(culong) != sizeof(cuint):
  proc assign*(this: var AFArray_View; a: culong) {.importcpp: "#.operator=(@)".}

proc assign*(this: var AFArray_View; a: clonglong) {.importcpp: "#.operator=(@)".}
proc assign*(this: var AFArray_View; a: culonglong) {.importcpp: "#.operator=(@)".}


proc `+=`*(this: var AFArray_View; a: AFArray) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: cdouble) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: cfloat) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: cint) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: cuint) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: bool) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: char) {.importcpp: "(# += #)".}

when sizeof(clong) != sizeof(cint):
  proc `+=`*(this: var AFArray_View; a: clong) {.importcpp: "(# += #)".}

when sizeof(culong) != sizeof(cuint):
  proc `+=`*(this: var AFArray_View; a: culong) {.importcpp: "(# += #)".}

proc `+=`*(this: var AFArray_View; a: clonglong) {.importcpp: "(# += #)".}
proc `+=`*(this: var AFArray_View; a: culonglong) {.importcpp: "(# += #)".}

proc `-=`*(this: var AFArray_View; a: AFArray_View) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: cdouble) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: cfloat) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: cint) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: cuint) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: bool) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: char) {.importcpp: "(# -= #)".}

when sizeof(clong) != sizeof(cint):
  proc `-=`*(this: var AFArray_View; a: clong) {.importcpp: "(# -= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `-=`*(this: var AFArray_View; a: culong) {.importcpp: "(# -= #)".}

proc `-=`*(this: var AFArray_View; a: clonglong) {.importcpp: "(# -= #)".}
proc `-=`*(this: var AFArray_View; a: culonglong) {.importcpp: "(# -= #)".}

proc `*=`*(this: var AFArray_View; a: AFArray_View) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: cdouble) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: cfloat) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: cint) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: cuint) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: bool) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: char) {.importcpp: "(# *= #)".}

when sizeof(clong) != sizeof(cint):
  proc `*=`*(this: var AFArray_View; a: clong) {.importcpp: "(# *= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `*=`*(this: var AFArray_View; a: culong) {.importcpp: "(# *= #)".}

proc `*=`*(this: var AFArray_View; a: clonglong) {.importcpp: "(# *= #)".}
proc `*=`*(this: var AFArray_View; a: culonglong) {.importcpp: "(# *= #)".}

proc `/=`*(this: var AFArray_View; a: AFArray_View) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: cdouble) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: cfloat) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: cint) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: cuint) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: bool) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: char) {.importcpp: "(# /= #)".}

when sizeof(clong) != sizeof(cint):
  proc `/=`*(this: var AFArray_View; a: clong) {.importcpp: "(# /= #)".}

when sizeof(culong) != sizeof(cuint):
  proc `/=`*(this: var AFArray_View; a: culong) {.importcpp: "(# /= #)".}

proc `/=`*(this: var AFArray_View; a: clonglong) {.importcpp: "(# /= #)".}
proc `/=`*(this: var AFArray_View; a: culonglong) {.importcpp: "(# /= #)".}

proc get*(this: var AFArray_View): array {.importcpp: "get".}

proc get*(this: AFArray_View): array {.noSideEffect, importcpp: "get".}

