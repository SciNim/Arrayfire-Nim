import std/[strutils, complex]

type
  AfComplex32* {.final, header : "arrayfire.h", importcpp: "af::cfloat".} = object
    real*: cfloat
    imag*: cfloat

  AfComplex64* {.final, header : "arrayfire.h", importcpp: "af::cdouble".} = object
    real*: cdouble
    imag*: cdouble


converter toComplex32*(c: AfComplex32) : Complex32 =
  result.re = c.real
  result.im = c.imag

converter toComplex64*(c: AfComplex64) : Complex64 =
  result.re = c.real
  result.im = c.imag

proc real*[T](c: Complex[T]) : T  =
  c.re

proc imag*[T](c: Complex[T]) : T  =
  c.imag


proc `$`*(c: AfComplex32) : string ="CF($1 + $2i)" % [$c.real,$c.imag]
proc `$`*(c: AfComplex64) : string ="CD($1 + $2i)" % [$c.real,$c.imag]

proc complex32*[R,I](r:R, i:I) : AfComplex32 = AfComplex32(real:cfloat(r),imag:cfloat(i))
proc complex64*[R,I](r:R, i:I) : AfComplex64 = AfComplex64(real:cdouble(r),imag:cdouble(i))

proc complex32*[R](r:R) : AfComplex32 =
  when R is AfComplex32:
    r
  elif R is AfComplex64:
    AfComplex32(r.real,r.imag)
  else:
    AfComplex32(real:cfloat(r), imag:cfloat(0))

proc complex64*[R](r:R) : AfComplex64 =
  when R is AfComplex64:
    r
  elif R is AfComplex32:
    AfComplex64(r.real,r.imag)
  else:
    AfComplex64(real:cdouble(r),imag:cdouble(0))


converter toFloat*[T: AfComplex32 | AfComplex64](c : T) : float = float(c.real)
converter toFloat32*[T: AfComplex32 | AfComplex64](c : T) : float32 = float32(c.real)
converter toFloat64*[T: AfComplex32 | AfComplex64](c : T) : float64 = float64(c.real)
converter toBool*[T: AfComplex32 | AfComplex64](c: T) : bool = bool(c.real == 0.0 and c.imag == 0.0)
converter toInt*[T: AfComplex32 | AfComplex64](c : T) : int = int(c.real)
converter toInt16*[T: AfComplex32 | AfComplex64](c : T) : int16 = int16(c.real)
converter toInt32*[T: AfComplex32 | AfComplex64](c : T) : int32 = int32(c.real)
converter toInt64*[T: AfComplex32 | AfComplex64](c : T) : int64 = int64(c.real)
converter toUInt*[T: AfComplex32 | AfComplex64](c : T) : uint = uint(c.real)
converter toUInt8*[T: AfComplex32 | AfComplex64](c : T) : uint8 = uint8(c.real)
converter toUInt16*[T: AfComplex32 | AfComplex64](c : T) : uint16 = uint16(c.real)
converter toUInt32*[T: AfComplex32 | AfComplex64](c : T) : uint32 = uint32(c.real)
converter toUInt64*[T: AfComplex32 | AfComplex64](c : T) : uint64 = uint64(c.real)

proc `+`*(lhs: AfComplex32; rhs: AfComplex32): AfComplex32 {.cdecl, importcpp: "(# + #)", header : "arrayfire.h".}
proc `+`*(lhs: AfComplex64; rhs: AfComplex64): AfComplex64 {.cdecl, importcpp: "(# + #)",
    header : "arrayfire.h".}
proc `-`*(lhs: AfComplex32; rhs: AfComplex32): AfComplex32 {.cdecl, importcpp: "(# - #)", header : "arrayfire.h".}
proc `-`*(lhs: AfComplex64; rhs: AfComplex64): AfComplex64 {.cdecl, importcpp: "(# - #)",
    header : "arrayfire.h".}
proc `*`*(lhs: AfComplex32; rhs: AfComplex32): AfComplex32 {.cdecl, importcpp: "(# * #)", header : "arrayfire.h".}
proc `*`*(lhs: AfComplex64; rhs: AfComplex64): AfComplex64 {.cdecl, importcpp: "(# * #)",
    header : "arrayfire.h".}
proc `/`*(lhs: AfComplex32; rhs: AfComplex32): AfComplex32 {.cdecl, importcpp: "(# / #)", header : "arrayfire.h".}
proc `/`*(lhs: AfComplex64; rhs: AfComplex64): AfComplex64 {.cdecl, importcpp: "(# / #)",
    header : "arrayfire.h".}
proc `+`*(lhs: AfComplex32; rhs: AfComplex64): AfComplex32 {.cdecl, importcpp: "(# + #)", header : "arrayfire.h".}
proc `/`*(lhs: AfComplex32; rhs: AfComplex64): AfComplex32 {.cdecl, importcpp: "(# / #)", header : "arrayfire.h".}

proc `==`*(lhs: AfComplex32; rhs: AfComplex32): bool {.cdecl, importcpp: "(# == #)", header : "arrayfire.h".}
proc `==`*(lhs: AfComplex64; rhs: AfComplex64): bool {.cdecl, importcpp: "(# == #)",header : "arrayfire.h".}
proc abs*(val: AfComplex32): cfloat {.cdecl, importcpp: "abs(@)", header : "arrayfire.h".}
proc abs*(val: AfComplex64): cdouble {.cdecl, importcpp: "abs(@)", header : "arrayfire.h".}
proc conj*(val: AfComplex32): cfloat {.cdecl, importcpp: "conj(@)", header : "arrayfire.h".}
proc conj*(val: AfComplex64): cdouble {.cdecl, importcpp: "conj(@)", header : "arrayfire.h".}

