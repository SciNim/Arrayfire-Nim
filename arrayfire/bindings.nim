import ./bindings/types
import ./bindings/dims

import std/times
{.push header: "arrayfire.h".}

proc set*(this: var AFArray; tmp: AF_Array_Handle)
  {.cdecl, importcpp: "af::set".}

proc afa*(): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(handle: AF_Array_Handle): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(matin: AFArray): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(dim0: DimT; ty: Dtype = f32): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(dim0: DimT; dim1: DimT; ty: Dtype = f32): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(dim0: DimT; dim1: DimT; dim2: DimT; ty: Dtype = f32): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(dim0: DimT; dim1: DimT; dim2: DimT; dim3: DimT; ty: Dtype = f32): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(dims: Dim4; ty: Dtype = f32): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*[T](dim0: DimT; pointer: ptr T; src: Source = Source.afHost): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*[T](dim0: DimT; dim1: DimT; pointer: ptr T; src: Source = Source.afHost): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*[T](dim0: DimT; dim1: DimT; dim2: DimT; pointer: ptr T;
                src: Source = Source.afHost): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*[T](dim0: DimT; dim1: DimT; dim2: DimT; dim3: DimT; pointer: ptr T;
                src: Source = Source.afHost): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*[T](dims: Dim4; pointer: ptr T; src: Source = Source.afHost): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(input: AFArray; dims: Dim4): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc afa*(input: AFArray; dim0: DimT; dim1: DimT = 1; dim2: DimT = 1; dim3: DimT = 1): AFArray
  {.cdecl, constructor, importcpp: "af::array(@)".}

proc get*(this: var AFArray): AF_Array_Handle
  {.cdecl, importcpp: "get".}

proc get*(this: AFArray): AF_Array_Handle
  {.noSideEffect, cdecl, importcpp: "get".}

proc elements*(this: AFArray): DimT
  {.noSideEffect, cdecl, importcpp: "elements".}

proc host*[T](this: AFArray): ptr T
  {.noSideEffect, cdecl, importcpp: "host".}

proc host*(this: AFArray; `ptr`: pointer)
  {.noSideEffect, cdecl, importcpp: "host".}

proc write*[T](this: var AFArray; `ptr`: ptr T; bytes: csize_t; src: Source = Source.afHost)
  {.cdecl, importcpp: "write".}

proc `type`*(this: AFArray): Dtype
  {.noSideEffect, cdecl, importcpp: "type".}

proc dtype*(this: AFArray): Dtype
  {.noSideEffect, cdecl, importcpp: "type".}

proc af_dims*(this: AFArray; dim: cuint): DimT
  {.noSideEffect, cdecl, importcpp: "dims".}

proc numdims*(this: AFArray): cuint
  {.noSideEffect, cdecl, importcpp: "numdims".}

proc bytes*(this: AFArray): csize_t
  {.noSideEffect, cdecl, importcpp: "bytes".}

proc copy*(this: AFArray): AFArray
  {.noSideEffect, cdecl, importcpp: "copy".}

proc isempty*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isempty".}

proc isscalar*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isscalar".}

proc isvector*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isvector".}

proc isrow*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isrow".}

proc iscolumn*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "iscolumn".}

proc iscomplex*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "iscomplex".}

proc isreal*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isreal".}

proc isdouble*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isdouble".}

proc issingle*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "issingle".}

proc isrealfloating*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isrealfloating".}

proc isfloating*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isfloating".}

proc isinteger*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isinteger".}

proc isbool*(this: AFArray): bool
  {.noSideEffect, cdecl, importcpp: "isbool".}

proc eval*(this: AFArray)
  {.noSideEffect, cdecl, importcpp: "eval".}

proc scalar*[T](this: AFArray): T
  {.noSideEffect, cdecl, importcpp: "#.scalar<'*0>()".}

proc scalar_r*(this: AFArray): cdouble
  {.noSideEffect, cdecl, importcpp: "#.scalar<double>()".}

proc device*[T](this: AFArray): ptr T
  {.noSideEffect, cdecl, importcpp: "device".}

proc row*(this: var AFArray; index: cint): AFArray_View
  {.cdecl, importcpp: "row".}

proc row*(this: AFArray; index: cint): AFArray_View
  {.noSideEffect, cdecl, importcpp: "row".}

proc rows*(this: var AFArray; first: cint; last: cint): AFArray_View
  {.cdecl, importcpp: "rows".}

proc rows*(this: AFArray; first: cint; last: cint): AFArray_View
  {.noSideEffect, cdecl, importcpp: "rows".}

proc col*(this: var AFArray; index: cint):
  AFArray_View {.cdecl, importcpp: "col".}

proc col*(this: AFArray; index: cint): AFArray_View
  {.noSideEffect, cdecl, importcpp: "col".}

proc cols*(this: var AFArray; first: cint; last: cint): AFArray_View
  {.cdecl, importcpp: "cols".}

proc cols*(this: AFArray; first: cint; last: cint): AFArray_View
  {.noSideEffect, cdecl, importcpp: "cols".}

proc slice*(this: var AFArray; index: cint): AFArray_View
  {.cdecl, importcpp: "slice".}

proc slice*(this: AFArray; index: cint): AFArray_View
  {.noSideEffect, cdecl, importcpp: "slice".}

proc slices*(this: var AFArray; first: cint; last: cint): AFArray_View
  {.cdecl, importcpp: "slices".}

proc slices*(this: AFArray; first: cint; last: cint): AFArray_View
  {.noSideEffect, cdecl, importcpp: "slices".}

proc `as`*(this: AFArray; `type`: Dtype): AFArray
  {.noSideEffect, cdecl, importcpp: "as".}

proc destroy*(this: var AFArray)
  {.cdecl, importcpp: "#.~array()".}

proc T*(this: AFArray): AFArray
  {.noSideEffect, cdecl, importcpp: "T".}

proc H*(this: AFArray): AFArray
  {.noSideEffect, cdecl, importcpp: "H".}

proc min*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "min(@)".}

proc min*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "min(@)".}

proc min*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "min(@)".}

proc max*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "max(@)".}

proc max*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "max(@)".}

proc max*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "max(@)".}

proc clamp*(matin: AFArray; lo: AFArray; hi: AFArray): AFArray
  {.cdecl, importcpp: "clamp(@)".}

proc clamp*(matin: AFArray; lo: AFArray; hi: cdouble): AFArray
  {.cdecl, importcpp: "clamp(@)".}

proc clamp*(matin: AFArray; lo: cdouble; hi: AFArray): AFArray
  {.cdecl, importcpp: "clamp(@)".}

proc clamp*(matin: AFArray; lo: cdouble; hi: cdouble): AFArray
  {.cdecl, importcpp: "clamp(@)".}

proc rem*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "rem(@)".}

proc rem*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "rem(@)".}

proc rem*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "rem(@)".}

proc `mod`*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "mod(@)".}

proc `mod`*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "mod(@)".}

proc `mod`*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "mod(@)".}

proc pad*(matin: AFArray; beginPadding: Dim4; endPadding: Dim4; padFillType: BorderType): AFArray
  {.cdecl, importcpp: "pad(@)".}

proc abs*(matin: AFArray): AFArray {.cdecl, importcpp: "abs(@)".}

proc arg*(matin: AFArray): AFArray {.cdecl, importcpp: "arg(@)".}

proc sign*(matin: AFArray): AFArray {.cdecl, importcpp: "sign(@)".}

proc round*(matin: AFArray): AFArray {.cdecl, importcpp: "round(@)".}

proc trunc*(matin: AFArray): AFArray {.cdecl, importcpp: "trunc(@)".}

proc floor*(matin: AFArray): AFArray {.cdecl, importcpp: "floor(@)".}

proc ceil*(matin: AFArray): AFArray {.cdecl, importcpp: "ceil(@)".}

proc hypot*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "hypot(@)".}

proc hypot*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "hypot(@)".}

proc hypot*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "hypot(@)".}

proc sin*(matin: AFArray): AFArray {.cdecl, importcpp: "sin(@)".}

proc cos*(matin: AFArray): AFArray {.cdecl, importcpp: "cos(@)".}

proc tan*(matin: AFArray): AFArray {.cdecl, importcpp: "tan(@)".}

proc asin*(matin: AFArray): AFArray {.cdecl, importcpp: "asin(@)".}

proc acos*(matin: AFArray): AFArray {.cdecl, importcpp: "acos(@)".}

proc atan*(matin: AFArray): AFArray {.cdecl, importcpp: "atan(@)".}

proc atan2*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "atan2(@)".}

proc atan2*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "atan2(@)".}

proc atan2*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "atan2(@)".}

proc complex*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "complex(@)".}

proc complex*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "complex(@)".}

proc complex*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "complex(@)".}

proc complex*(matin: AFArray): AFArray {.cdecl, importcpp: "complex(@)".}

proc real*(matin: AFArray): AFArray {.cdecl, importcpp: "real(@)".}

proc imag*(matin: AFArray): AFArray {.cdecl, importcpp: "imag(@)".}

proc conjg*(matin: AFArray): AFArray {.cdecl, importcpp: "conjg(@)".}

proc sinh*(matin: AFArray): AFArray {.cdecl, importcpp: "sinh(@)".}

proc cosh*(matin: AFArray): AFArray {.cdecl, importcpp: "cosh(@)".}

proc tanh*(matin: AFArray): AFArray {.cdecl, importcpp: "tanh(@)".}

proc asinh*(matin: AFArray): AFArray {.cdecl, importcpp: "asinh(@)".}

proc acosh*(matin: AFArray): AFArray {.cdecl, importcpp: "acosh(@)".}

proc atanh*(matin: AFArray): AFArray {.cdecl, importcpp: "atanh(@)".}

proc root*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "root(@)".}

proc root*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "root(@)".}

proc root*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "root(@)".}

proc pow*(lhs: AFArray; rhs: AFArray): AFArray {.cdecl, importcpp: "pow(@)".}

proc pow*(lhs: AFArray; rhs: cdouble): AFArray {.cdecl, importcpp: "pow(@)".}

proc pow*(lhs: cdouble; rhs: AFArray): AFArray {.cdecl, importcpp: "pow(@)".}

proc pow2*(matin: AFArray): AFArray {.cdecl, importcpp: "pow2(@)".}

proc sigmoid*(matin: AFArray): AFArray {.cdecl, importcpp: "sigmoid(@)".}

proc exp*(matin: AFArray): AFArray {.cdecl, importcpp: "exp(@)".}

proc expm1*(matin: AFArray): AFArray {.cdecl, importcpp: "expm1(@)".}

proc erf*(matin: AFArray): AFArray {.cdecl, importcpp: "erf(@)".}

proc erfc*(matin: AFArray): AFArray {.cdecl, importcpp: "erfc(@)".}

proc log*(matin: AFArray): AFArray {.cdecl, importcpp: "log(@)".}

proc log1p*(matin: AFArray): AFArray {.cdecl, importcpp: "log1p(@)".}

proc log10*(matin: AFArray): AFArray {.cdecl, importcpp: "log10(@)".}

proc log2*(matin: AFArray): AFArray {.cdecl, importcpp: "log2(@)".}

proc sqrt*(matin: AFArray): AFArray {.cdecl, importcpp: "sqrt(@)".}

proc rsqrt*(matin: AFArray): AFArray {.cdecl, importcpp: "rsqrt(@)".}

proc cbrt*(matin: AFArray): AFArray {.cdecl, importcpp: "cbrt(@)".}

proc factorial*(matin: AFArray): AFArray {.cdecl, importcpp: "factorial(@)".}

proc tgamma*(matin: AFArray): AFArray {.cdecl, importcpp: "tgamma(@)".}

proc lgamma*(matin: AFArray): AFArray {.cdecl, importcpp: "lgamma(@)".}

proc iszero*(matin: AFArray): AFArray {.cdecl, importcpp: "iszero(@)".}

proc isInf*(matin: AFArray): AFArray {.cdecl, importcpp: "isInf(@)".}

proc isNaN*(matin: AFArray): AFArray {.cdecl, importcpp: "isNaN(@)".}

proc setBackend*(bknd: Backend)
  {.cdecl, importcpp: "af::setBackend(@)".}

proc getBackendCount*(): cuint
  {.cdecl, importcpp: "af::getBackendCount(@)".}

proc af_getAvailableBackends*(): cint
  {.cdecl, importcpp: "af::getAvailableBackends(@)".}

proc getBackendId*(matin: AFArray): Backend
  {.cdecl, importcpp: "af::getBackendId(@)".}

proc getActiveBackend*(): Backend
  {.cdecl, importcpp: "af::getActiveBackend(@)".}

proc getDeviceId*(matin: AFArray): cint
  {.cdecl, importcpp: "af::getDeviceId(@)".}

proc constant*[T](val: T; dims: Dim4; ty: Dtype): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; dims: Dim4): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT; ty: Dtype): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT; d1: DimT; ty: Dtype): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT; d1: DimT; d2: DimT; ty: Dtype): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT; d1: DimT; d2: DimT): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT; d1: DimT; d2: DimT; d3: DimT; ty: Dtype = f64): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc constant*[T](val: T; d0: DimT; d1: DimT; d2: DimT; d3: DimT): AFArray
  {.cdecl, importcpp: "af::constant(@)".}

proc identity*(dims: Dim4; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::identity(@)".}

proc identity*(d0: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::identity(@)".}

proc identity*(d0: DimT; d1: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::identity(@)".}

proc identity*(d0: DimT; d1: DimT; d2: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::identity(@)".}

proc identity*(d0: DimT; d1: DimT; d2: DimT; d3: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::identity(@)".}

proc range*(dims: Dim4; afp_seq_dim: cint = - 1; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::range(@)".}

proc range*(d0: DimT; d1: DimT = 1; d2: DimT = 1; d3: DimT = 1; afp_seq_dim: cint = - 1; ty: Dtype = f32): AFArray
    {.cdecl, importcpp: "af::range(@)".}

proc iota*(dims: Dim4; tileDims: Dim4; ty: Dtype): AFArray
  {.cdecl, importcpp: "iota(@)".}

proc diag*(matin: AFArray; num: cint = 0; extract: bool = true): AFArray
  {.cdecl, importcpp: "af::diag(@)".}

proc join*(dim: cint; first: AFArray; second: AFArray): AFArray
  {.cdecl, importcpp: "af::join(@)".}

proc join*(dim: cint; first: AFArray; second: AFArray; third: AFArray): AFArray
  {.cdecl, importcpp: "af::join(@)".}

proc join*(dim: cint; first: AFArray; second: AFArray; third: AFArray; fourth: AFArray): AFArray
  {.cdecl, importcpp: "af::join(@)".}

proc tile*(matin: AFArray; x: cuint; y: cuint = 1; z: cuint = 1; w: cuint = 1): AFArray
  {.cdecl, importcpp: "af::tile(@)".}

proc tile*(matin: AFArray; dims: Dim4): AFArray
  {.cdecl, importcpp: "af::tile(@)".}

proc reorder*(matin: AFArray; x: cuint; y: cuint = 1; z: cuint = 2; w: cuint = 3): AFArray
  {.cdecl, importcpp: "af::reorder(@)".}

proc shift*(matin: AFArray; x: cint; y: cint = 0; z: cint = 0; w: cint = 0): AFArray
  {.cdecl, importcpp: "af::shift(@)".}

proc moddims*(matin: AFArray; ndims: cuint; dims: ptr DimT): AFArray
  {.cdecl, importcpp: "af::moddims(@)".}

proc moddims*(matin: AFArray; dims: Dim4): AFArray
  {.cdecl, importcpp: "af::moddims(@)".}

proc moddims*(matin: AFArray; d0: DimT; d1: DimT = 1; d2: DimT = 1; d3: DimT = 1): AFArray
  {.cdecl, importcpp: "moddims(@)".}

proc flat*(matin: AFArray): AFArray
  {.cdecl, importcpp: "af::flat(@)".}

proc flip*(matin: AFArray; dim: cuint): AFArray
  {.cdecl, importcpp: "af::flip(@)".}

proc lower*(matin: AFArray; isUnitDiag: bool = false): AFArray
  {.cdecl, importcpp: "af::lower(@)".}

proc upper*(matin: AFArray; isUnitDiag: bool = false): AFArray
  {.cdecl, importcpp: "af::upper(@)".}

proc select*(cond: AFArray; a: AFArray; b: AFArray): AFArray
  {.cdecl, importcpp: "af::select(@)".}

proc select*(cond: AFArray; a: AFArray; b: cdouble): AFArray
  {.cdecl, importcpp: "af::select(@)".}

proc select*(cond: AFArray; a: cdouble; b: AFArray): AFArray
  {.cdecl, importcpp: "af::select(@)".}

proc replace*(a: var AFArray; cond: AFArray; b: AFArray)
  {.cdecl, importcpp: "af::replace(@)".}

proc replace*(a: var AFArray; cond: AFArray; b: cdouble)
  {.cdecl, importcpp: "af::replace(@)".}

proc info*()
  {.cdecl, importcpp: "af::info(@)".}

proc infoString*(verbose: bool = false): cstring
  {.cdecl, importcpp: "af::infoString(@)".}

proc deviceInfo*(dName: cstring; dPlatform: cstring; dToolkit: cstring; dCompute: cstring)
  {.cdecl, importcpp: "af::deviceInfo(@)".}

proc getDeviceCount*(): cint
  {.cdecl, importcpp: "af::getDeviceCount(@)".}

proc getDevice*(): cint
  {.cdecl, importcpp: "af::getDevice(@)".}

proc isDoubleAvailable*(device: cint): bool
  {.cdecl, importcpp: "af::isDoubleAvailable(@)".}

proc isHalfAvailable*(device: cint): bool
  {.cdecl, importcpp: "af::isHalfAvailable(@)".}

proc setDevice*(device: cint)
  {.cdecl, importcpp: "af::setDevice(@)".}

proc sync*(device: cint = - 1)
  {.cdecl, importcpp: "af::sync(@)".}

proc af_alloc*(elements: csize_t; `type`: Dtype): pointer
  {.cdecl, importcpp: "af::alloc(@)".}

proc af_alloc*[T](elements: csize_t): ptr T
  {.cdecl, importcpp: "af::alloc(@)".}

proc af_free*(`ptr`: pointer)
  {.cdecl, importcpp: "af::free(@)".}

proc pinned*(elements: csize_t; `type`: Dtype): pointer
  {.cdecl, importcpp: "af::pinned(@)".}

proc pinned*[T](elements: csize_t): ptr T
  {.cdecl, importcpp: "af::pinned(@)".}

proc freePinned*(`ptr`: pointer)
  {.cdecl, importcpp: "af::freePinned(@)".}

proc allocHost*(elements: csize_t; `type`: Dtype): pointer
  {.cdecl, importcpp: "af::allocHost(@)".}

proc allocHost*[T](elements: csize_t): ptr T
  {.cdecl, importcpp: "af::allocHost(@)".}

proc freeHost*(`ptr`: pointer)
  {.cdecl, importcpp: "af::freeHost(@)".}

proc deviceMemInfo*(allocBytes: ptr csize_t; allocBuffers: ptr csize_t; lockBytes: ptr csize_t; lockBuffers: ptr csize_t)
  {.cdecl, importcpp: "af::deviceMemInfo(@)".}

proc printMemInfo*(msg: cstring = nil; deviceId: cint = - 1)
  {.cdecl, importcpp: "af::printMemInfo(@)".}

proc deviceGC*()
  {.cdecl, importcpp: "af::deviceGC(@)".}

proc setMemStepSize*(size: csize_t)
  {.cdecl, importcpp: "af::setMemStepSize(@)".}

proc getMemStepSize*(): csize_t
  {.cdecl, importcpp: "af::getMemStepSize(@)".}

proc constructfeatures*(): Features
  {.cdecl, constructor, importcpp: "af::features(@)".}

proc constructfeatures*(n: csize_t): Features
  {.cdecl, constructor, importcpp: "af::features(@)".}

proc constructfeatures*(f: Features): Features
  {.cdecl, constructor, importcpp: "af::features(@)".}

proc destroyfeatures*(this: var Features)
  {.cdecl, importcpp: "#.~features()".}

proc getNumFeatures*(this: Features): csize_t
  {.noSideEffect, cdecl, importcpp: "getNumFeatures".}

proc getX*(this: Features): AFArray
  {.noSideEffect, cdecl, importcpp: "getX".}

proc getY*(this: Features): AFArray
  {.noSideEffect, cdecl, importcpp: "getY".}

proc getScore*(this: Features): AFArray
  {.noSideEffect, cdecl, importcpp: "getScore".}

proc getOrientation*(this: Features): AFArray
  {.noSideEffect, cdecl, importcpp: "getOrientation".}

proc getSize*(this: Features): AFArray
  {.noSideEffect, cdecl, importcpp: "getSize".}

proc get*(this: Features): AFC_Features
  {.noSideEffect, cdecl, importcpp: "get".}

proc gforToggle*(): bool
  {.cdecl, importcpp: "af::gforToggle(@)".}

proc gforGet*(): bool
  {.cdecl, importcpp: "af::gforGet(@)".}

proc gforSet*(val: bool)
  {.cdecl, importcpp: "af::gforSet(@)".}

proc batchFunc*(lhs: AFArray; rhs: AFArray; `func`: BatchFuncT): AFArray {.cdecl,
    importcpp: "af::batchFunc(@)".}

proc resize*(matin: AFArray; odim0: DimT; odim1: DimT;
            `method`: InterpType): AFArray
  {.cdecl, importcpp: "af::resize(@)".}

proc resize*(scale0: cfloat; scale1: cfloat; matin: AFArray;
            `method`: InterpType): AFArray
  {.cdecl, importcpp: "af::resize(@)".}

proc resize*(scale: cfloat; matin: AFArray; `method`: InterpType): AFArray
  {.cdecl, importcpp: "af::resize(@)".}

proc rotate*(matin: AFArray; theta: cfloat; crop: bool = true;
            `method`: InterpType): AFArray
  {.cdecl, importcpp: "af::rotate(@)".}

proc transform*(matin: AFArray; transform: AFArray; odim0: DimT = 0; odim1: DimT = 0;
               `method`: InterpType; inverse: bool = true): AFArray
  {.cdecl, importcpp: "af::transform(@)".}

proc transformCoordinates*(tf: AFArray; d0: cfloat; d1: cfloat): AFArray
  {.cdecl, importcpp: "af::transformCoordinates(@)".}

proc translate*(matin: AFArray; trans0: cfloat; trans1: cfloat; odim0: DimT = 0;
               odim1: DimT = 0; `method`: InterpType): AFArray
  {.cdecl, importcpp: "af::translate(@)".}

proc scale*(matin: AFArray; scale0: cfloat; scale1: cfloat; odim0: DimT = 0; odim1: DimT = 0;
           `method`: InterpType): AFArray {.cdecl,
    importcpp: "af::scale(@)".}

proc skew*(matin: AFArray; skew0: cfloat; skew1: cfloat; odim0: DimT = 0; odim1: DimT = 0;
          inverse: bool = true; `method`: InterpType): AFArray
  {.cdecl, importcpp: "af::skew(@)".}

proc bilateral*(matin: AFArray; spatialSigma: cfloat; chromaticSigma: cfloat;
                isColor: bool = false): AFArray
  {.cdecl, importcpp: "af::bilateral(@)".}

proc anisotropicDiffusion*(matin: AFArray; timestep: cfloat; conductance: cfloat; iterations: cuint;
                          fftype: FluxFuction = FluxFuction.EXPONENTIAL; diffusionKind: DiffusionEq = DiffusionEq.GRAD): AFArray
  {.cdecl, importcpp: "af::anisotropicDiffusion(@)".}

proc inverseDeconv*(matin: AFArray; psf: AFArray; gamme: cfloat; algo: InverseDeconvAlgo): AFArray
  {.cdecl, importcpp: "af::cainverseDeconvnny(@)".}

proc iterativeDeconv*(matin: AFArray; ker: AFArray; iterations: cuint; relaxFactor: cfloat; algo: InverseDeconvAlgo): AFArray
  {.cdecl, importcpp: "af::iterativeDeconv(@)".}

proc canny*(matin: AFArray; thresholdType: CannyThreshold; lowThresholdRatio: cfloat; highThresholdRatio: cfloat; sobelWindow: cuint; isFast: bool = false;
            isColor: bool = false): AFArray
  {.cdecl, importcpp: "af::canny(@)".}

proc confidenceCC*(matin: AFArray; seeds: AFArray; radius: cuint; multiplier: cuint; iter: cint; segmentedValue: cdouble): AFArray
  {.cdecl, importcpp: "af::confidenceCC(@)".}

proc histogram*(matin: AFArray; nbins: cuint; minval: cdouble; maxval: cdouble): AFArray
  {.cdecl, importcpp: "af::histogram(@)".}

proc histogram*(matin: AFArray; nbins: cuint): AFArray
  {.cdecl, importcpp: "af::histogram(@)".}

proc meanShift*(matin: AFArray; spatialSigma: cfloat; chromaticSigma: cfloat;
               iter: cuint; isColor: bool = false): AFArray
  {.cdecl, importcpp: "af::meanShift(@)".}

proc minfilt*(matin: AFArray; windLength: DimT = 3; windWidth: DimT = 3;
             edgePad: BorderType): AFArray
  {.cdecl, importcpp: "af::minfilt(@)".}

proc maxfilt*(matin: AFArray; windLength: DimT = 3; windWidth: DimT = 3;
             edgePad: BorderType): AFArray
  {.cdecl, importcpp: "af::maxfilt(@)".}

proc dilate*(matin: AFArray; mask: AFArray): AFArray
  {.cdecl, importcpp: "af::dilate(@)".}

proc dilate3*(matin: AFArray; mask: AFArray): AFArray
  {.cdecl, importcpp: "af::dilate3(@)".}

proc erode*(matin: AFArray; mask: AFArray): AFArray
  {.cdecl, importcpp: "af::erode(@)".}

proc erode3*(matin: AFArray; mask: AFArray): AFArray
  {.cdecl, importcpp: "af::erode3(@)".}

proc regions*(matin: AFArray; connectivity: Connectivity;
             `type`: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::regions(@)".}

proc sobel*(dx: var AFArray; dy: var AFArray; img: AFArray; kerSize: cuint = 3)
  {.cdecl, importcpp: "af::sobel(@)".}

proc sobel*(img: AFArray; kerSize: cuint = 3; isFast: bool = false): AFArray
  {.cdecl, importcpp: "af::sobel(@)".}

proc rgb2gray*(matin: AFArray; rPercent: cfloat = 0.2126;
              gPercent: cfloat = 0.7151999999999999; bPercent: cfloat = 0.0722): AFArray
  {.cdecl, importcpp: "af::rgb2gray(@)".}

proc gray2rgb*(matin: AFArray; rFactor: cfloat = 1.0; gFactor: cfloat = 1.0;
              bFactor: cfloat = 1.0): AFArray
  {.cdecl, importcpp: "af::gray2rgb(@)".}

proc histEqual*(matin: AFArray; hist: AFArray): AFArray
  {.cdecl, importcpp: "af::histEqual(@)".}

proc gaussianKernel*(rows: cint; cols: cint; sigR: cdouble = 0; sigC: cdouble = 0): AFArray
  {.cdecl, importcpp: "af::gaussianKernel(@)".}

proc hsv2rgb*(matin: AFArray): AFArray
  {.cdecl, importcpp: "af::hsv2rgb(@)".}

proc rgb2hsv*(matin: AFArray): AFArray
  {.cdecl, importcpp: "af::rgb2hsv(@)".}

proc colorSpace*(image: AFArray; to: CSpace; `from`: CSpace): AFArray
  {.cdecl, importcpp: "af::colorSpace(@)".}

proc unwrap*(matin: AFArray; wx: DimT; wy: DimT; sx: DimT; sy: DimT; px: DimT = 0; py: DimT = 0;
            isColumn: bool = true): AFArray
  {.cdecl, importcpp: "af::unwrap(@)".}

proc wrap*(matin: AFArray; ox: DimT; oy: DimT; wx: DimT; wy: DimT; sx: DimT; sy: DimT;
          px: DimT = 0; py: DimT = 0; isColumn: bool = true): AFArray
  {.cdecl, importcpp: "af::wrap(@)".}

proc sat*(matin: AFArray): AFArray
  {.cdecl, importcpp: "af::sat(@)".}

proc ycbcr2rgb*(matin: AFArray; standard: YCCStd): AFArray
  {.cdecl, importcpp: "af::ycbcr2rgb(@)".}

proc rgb2ycbcr*(matin: AFArray; standard: YCCStd): AFArray
  {.cdecl, importcpp: "af::rgb2ycbcr(@)".}

proc moments*(`out`: ptr cdouble; matin: AFArray;
             moment: MomentType)
  {.cdecl, importcpp: "af::moments(@)".}

proc moments*(matin: AFArray; moment: MomentType): AFArray
  {.cdecl, importcpp: "af::moments(@)".}

proc af_svd*(u: var AFArray; s: var AFArray; vt: var AFArray; matin: AFArray)
  {.cdecl, importcpp: "af::svd(@)".}

proc svdInPlace*(u: var AFArray; s: var AFArray; vt: var AFArray; matin: var AFArray)
  {.cdecl, importcpp: "af::svdInPlace(@)".}

proc isLAPACKAvailable*(): bool
  {.cdecl, importcpp: "af::isLAPACKAvailable(@)".}

proc constructrandomEngine*(typeIn: RandomEngineType; seedIn: uintl = 0): RandomEngine
  {.cdecl, constructor, importcpp: "af::randomEngine(@)".}

proc constructrandomEngine*(`in`: RandomEngine): RandomEngine
  {.cdecl, constructor, importcpp: "af::randomEngine(@)".}

proc constructrandomEngine*(engine: RandomEngine): RandomEngine
  {.cdecl, constructor, importcpp: "af::randomEngine(@)".}

proc destroyrandomEngine*(this: var RandomEngine)
  {.cdecl, importcpp: "#.~randomEngine()".}

proc setType*(this: var RandomEngine; `type`: RandomEngineType)
  {.cdecl, importcpp: "setType".}

proc getType*(this: var RandomEngine): RandomEngineType
  {.cdecl, importcpp: "getType".}

proc setSeed*(this: var RandomEngine; seed: uintl)
  {.cdecl, importcpp: "setSeed(@)".}

proc getSeed*(this: RandomEngine): uintl
  {.noSideEffect, cdecl, importcpp: "getSeed(@)".}

proc setSeed*(seed: uintl)
  {.cdecl, importcpp: "af::setSeed(@)".}

proc getSeed*(): uintl
  {.noSideEffect, cdecl, importcpp: "af::getSeed(@)".}

proc get*(this: RandomEngine): AFC_RandomEngine
  {.noSideEffect, cdecl, importcpp: "get".}

proc setDefaultRandomEngineType*(rtype: RandomEngineType)
  {.cdecl, importcpp: "af::setDefaultRandomEngineType(@)".}

proc getDefaultRandomEngine*(): RandomEngine
  {.cdecl, importcpp: "af::getDefaultRandomEngine(@)".}

proc randu*(dims: Dim4; ty: Dtype; r: var RandomEngine): AFArray
  {.cdecl, importcpp: "af::randu(@)".}

proc randn*(dims: Dim4; ty: Dtype; r: var RandomEngine): AFArray
  {.cdecl, importcpp: "randn(@)".}

proc randu*(dims: Dim4; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randu(@)".}

proc randu*(d0: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randu(@)".}

proc randu*(d0, d1: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randu(@)".}

proc randu*(d0, d1, d2: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randu(@)".}

proc randu*(d0, d1, d2, d3: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randu(@)".}

proc randn*(dims: Dim4; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randn(@)".}

proc randn*(d0: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randn(@)".}

proc randn*(d0, d1: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randn(@)".}

proc randn*(d0, d1, d2: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randn(@)".}

proc randn*(d0, d1, d2, d3: DimT; ty: Dtype = f32): AFArray
  {.cdecl, importcpp: "af::randn(@)".}

proc get_AFArray*(this: AFArray_View): AFArray
  {.cdecl, importcpp: "af::array(#)".}

proc sparse*(nRows: DimT; nCols: DimT; values: AFArray; rowIdx: AFArray; colIdx: AFArray;
            stype: Storage): AFArray {.cdecl, importcpp: "sparse(@)",
    header: "arrayfire.h".}

proc sparse*(nRows: DimT; nCols: DimT; nNZ: DimT; values: pointer; rowIdx: ptr cint; colIdx: ptr cint; `type`: Dtype = f32; stype: Storage;
    src: Source = Source.afHost): AFArray
  {.cdecl, importcpp: "sparse(@)".}

proc sparse*(dense: AFArray; stype: Storage): AFArray
  {.cdecl, importcpp: "sparse(@)".}

proc sparseConvertTo*(matin: AFArray; destStrorage: Storage): AFArray
  {.cdecl, importcpp: "sparseConvertTo(@)".}

proc dense*(sparse: AFArray): AFArray {.cdecl, importcpp: "dense(@)".}

proc sparseGetInfo*(values: var AFArray; rowIdx: var AFArray; colIdx: var AFArray; stype: var Storage; matin: AFArray)
  {.cdecl, importcpp: "sparseGetInfo(@)".}

proc sparseGetValues*(matin: AFArray): AFArray {.cdecl, importcpp: "sparseGetValues(@)".}

proc sparseGetRowIdx*(matin: AFArray): AFArray {.cdecl, importcpp: "sparseGetRowIdx(@)".}

proc sparseGetColIdx*(matin: AFArray): AFArray {.cdecl, importcpp: "sparseGetColIdx(@)".}

proc sparseGetNNZ*(matin: AFArray): DimT {.cdecl, importcpp: "sparseGetNNZ(@)".}

proc sparseGetStorage*(matin: AFArray): Storage {.cdecl, importcpp: "sparseGetStorage(@)".}

proc saveArray*(key: cstring; arr: AFArray; filename: cstring; append: bool = false): cint
  {.cdecl, importcpp: "af::saveArray(@)".}

proc readArray*(filename: cstring; index: cuint): AFArray
  {.cdecl, importcpp: "af::readArray(@)".}

proc readArray*(filename: cstring; key: cstring): AFArray
  {.cdecl, importcpp: "af::readArray(@)".}

proc readArrayCheck*(filename: cstring; key: cstring): cint
  {.cdecl, importcpp: "af::readArrayCheck(@)".}

proc toString*(output: cstringArray; exp: cstring; arr: AFArray; precision: cint = 4; transpose: bool = true)
  {.cdecl, importcpp: "af::toString(@)".}

proc toString*(exp: cstring; arr: AFArray; precision: cint = 4; transpose: bool = true): cstring
  {.cdecl, importcpp: "af::toString(@)".}

proc exampleFunction*(matin: AFArray; param: SomeenumT): AFArray
  {.cdecl, importcpp: "exampleFunction(@)".}

proc getSizeOf*(`type`: Dtype): csize_t {.cdecl, importcpp: "getSizeOf(@)".}

proc constructindex*(): Index {.constructor, importcpp: "index(@)".}

proc destroyindex*(this: var Index) {.importcpp: "#.~index()".}

proc constructindex*(idx: cint): Index {.constructor, importcpp: "index(@)".}

proc constructindex*(s0: AF_Seq): Index {.constructor, importcpp: "af::index(@)".}

proc constructindex*(idx0: AFArray): Index {.constructor, importcpp: "af::index(@)".}

proc constructindex*(idx0: Index): Index {.constructor, importcpp: "af::index(@)".}

proc isspan*(this: Index): bool {.noSideEffect, importcpp: "isspan".}

proc get*(this: Index): IndexT {.noSideEffect, importcpp: "get".}

proc constructindex*(idx0: var AF_Seq): Index {.constructor, importcpp: "index(@)".}

proc constructindex*(idx0: var AFArray): Index {.constructor, importcpp: "index(@)".}

proc lookup*(matin: AFArray; idx: AFArray; dim: cint = - 1): AFArray {.importcpp: "lookup(@)".}

proc constructarrayProxy*(par: var AFArray; ssss: ptr IndexT; linear: bool = false): AFArray_View
  {.constructor, importcpp: "array_proxy(@)".}

proc constructarrayProxy*(other: AFArray_View): AFArray_View {.constructor, importcpp: "array_proxy(@)".}

proc constructarrayProxy*(other: var AFArray_View): AFArray_View {.constructor, importcpp: "array_proxy(@)".}

proc destroyarrayProxy*(this: var AFArray_View)
  {.importcpp: "#.~array_proxy()".}

proc toAFArray*(this: AFArray_View)
  {.noSideEffect, importcpp: "array".}

proc toAFArray*(this: var AFArray_View)
  {.importcpp: "array".}

proc dims*[M: AFArray | AFArray_View](this: M): Dim4
  {.noSideEffect, importcpp: "dims".}

proc dims*[M: AFArray | AFArray_View](this: M; dim: cuint): DimT
  {.noSideEffect, importcpp: "dims".}

proc msum*(matin: AFArray; dim: cint = -1): AFArray
  {.importcpp: "af::sum(@)".}

proc msum*(matin: AFArray; dim: cint; nanval: cdouble): AFArray
  {.importcpp: "af::sum(@)".}

proc sumByKey*(keys_out: AFArray; vals_out: AFArray; keys: AFArray; vals: AFArray; dim: cint = -1)
  {.importcpp: "sumByKey(@)".}

proc product*(matin: AFArray; dim: cint = - 1): AFArray
  {.importcpp: "af::product(@)".}

proc productByKey*(keys_out: AFArray; vals_out: AFArray; keys: AFArray; vals: AFArray; dims: cint = -1)
  {.importcpp: "productByKey(@)".}

proc product*(matin: AFArray; dim: cint; nanval: cdouble): AFArray
  {.importcpp: "af::product(@)".}

proc mmin*(matin: AFArray; dim: cint = - 1): AFArray {.importcpp: "af::min(@)".}

proc maxByKey*(keys_out: AFArray; vals_out: AFArray; keys: AFArray; vals: AFArray; dim: cint = - 1) {.importcpp: "maxByKey(@)".}

proc minByKey*(keys_out: AFArray; vals_out: AFArray; keys: AFArray; vals: AFArray; dim: cint = - 1) {.importcpp: "minByKey(@)".}

proc mmax*(matin: AFArray; dim: cint = - 1): AFArray {.importcpp: "af::max(@)".}

proc allTrue*(matin: AFArray; dim: cint = - 1): AFArray {.importcpp: "af::allTrue(@)".}

proc allTrueByKey*(keys_out: AFArray; vals_out: AFArray; keys: AFArray; vals: AFArray; dim: cint = - 1) {.importcpp: "allTrueByKey(@)".}

proc anyTrue*(matin: AFArray; dim: cint = - 1): AFArray {.importcpp: "af::anyTrue(@)".}

proc anyTrueByKey*(keys_out: AFArray; vals_out: AFArray; keys: AFArray; vals: AFArray; dim: cint = - 1) {.importcpp: "anyTrueByKey(@)".}

proc count*(matin: AFArray; dim: cint = - 1): AFArray
  {.importcpp: "af::count(@)".}

proc countByKey*(keys_out: var AFArray; vals_out: var AFArray; keys: AFArray; vals: AFArray)
  {.importcpp: "countByKey(@)".}

proc af_sum_all(real: ptr[cdouble]; imag: ptr[cdouble]; carray: AF_Array_Handle): Err
  {.importcpp: "af_sum_all(@)".}

proc af_product_all(real: ptr[cdouble]; imag: ptr[cdouble]; carray: AF_Array_Handle): Err
  {.importcpp: "af_product_all(@)".}

proc af_min_all(real: ptr[cdouble]; imag: ptr[cdouble]; carray: AF_Array_Handle): Err
  {.importcpp: "af_min_all(@)".}

proc af_max_all(real: ptr[cdouble]; imag: ptr[cdouble]; carray: AF_Array_Handle): Err
  {.importcpp: "af_max_all(@)".}

proc s_allTrue*(matin: AFArray): bool
  {.importcpp: "af::allTrue<bool>(@)".}

proc s_anyTrue*(matin: AFArray): bool
  {.importcpp: "af::anyTrue<bool>(@)".}

proc count*(matin: AFArray): cuint
  {.importcpp: "af::count<uint>(@)".}

proc min*(val: var AFArray; idx: var AFArray; matin: AFArray; dim: cint = - 1)
  {.importcpp: "af::min(@)".}

proc max*(val: var AFArray; idx: var AFArray; matin: AFArray; dim: cint = - 1)
  {.importcpp: "af::max(@)".}

proc min*[T](val: ptr T; idx: ptr cuint; matin: AFArray)
  {.importcpp: "af::min(@)".}

proc max*[T](val: ptr T; idx: ptr cuint; matin: AFArray)
  {.importcpp: "af::max(@)".}

proc accum*(matin: AFArray; dim: cint = 0): AFArray
  {.importcpp: "af::accum(@)".}

proc scan*(matin: AFArray; dim: cint = 0; op: BinaryOp = BinaryOp.BINARY_ADD; inclusiveScan: bool = true): AFArray
  {.importcpp: "af::scan(@)".}

proc scanByKey*(key: AFArray; matin: AFArray; dim: cint = 0; op: BinaryOp = BinaryOp.BINARY_ADD; inclusiveScan: bool = true): AFArray
  {.importcpp: "af::scanByKey(@)".}

proc where*(matin: AFArray): AFArray
  {.importcpp: "af::where(@)".}

proc diff1*(matin: AFArray; dim: cint = 0): AFArray
  {.importcpp: "af::diff1(@)".}

proc diff2*(matin: AFArray; dim: cint = 0): AFArray
  {.importcpp: "af::diff2(@)".}

proc sort*(matin: AFArray; dim: cuint = 0; isAscending: bool = true): AFArray
  {.importcpp: "af::sort(@)".}

proc sort*(`out`: var AFArray; indices: var AFArray; matin: AFArray; dim: cuint = 0;
          isAscending: bool = true)
  {.importcpp: "af::sort(@)".}

proc sortByKeys*(outKeys: var AFArray; outValues: var AFArray; keys: AFArray; values: AFArray;
          dim: cuint = 0; isAscending: bool = true)
  {.importcpp: "sortByKeys(@)".}

proc setUnique*(matin: AFArray; isSorted: bool = false): AFArray
  {.importcpp: "af::setUnique(@)".}

proc setUnion*(first: AFArray; second: AFArray; isUnique: bool = false): AFArray
  {.importcpp: "af::setUnion(@)".}

proc setIntersect*(first: AFArray; second: AFArray; isUnique: bool = false): AFArray
  {.importcpp: "af::setIntersect(@)".}

proc af_timeit*(fn: proc ()): cdouble {.importcpp: "af::timeit(@)".}

proc timer_start*(): Timer {.importcpp: "af::timer::start(@)".}

proc timer_stop*(): cdouble {.importcpp: "af::timer::stop(@)".}

proc timer_stop*(start: Timer): cdouble {.importcpp: "af::timer::stop(@)".}

import ./bindings/afseq

let span* = constructindex(mseq(1, 1, 0))

proc copy*(dst: var AFArray; src: AFArray; idx0: Index; idx1: Index = span;
          idx2: Index = span; idx3: Index = span) {.importcpp: "copy(@)".}

{.pop.}

proc get_available_backends*(): seq[Backend] =
  result = @[]
  var bout = af_getAvailableBackends()
  for i in @[Backend.UNIFIED, Backend.CPU, Backend.CUDA, Backend.OPENCL]:
    if (bout and i.ord) != 0:
      result.add(i)

proc set_backend_preferred*(preferred: seq[Backend] =
  @[Backend.OPENCL, Backend.CUDA, Backend.CPU]): Backend =
  let backends = get_available_backends()
  for b in preferred:
    if b in backends:
      set_backend(b)
      result = b
      break

proc s_native_product*(matin: AFArray): tuple[real: float; imag: float] =
  var real: cdouble = 0
  var imag: cdouble = 0
  discard af_product_all(addr real, addr imag, matin.get())
  (real, imag)

proc product_as_int*(matin: AFArray): int =
  int(s_native_product(matin)[0])

proc product_as_float*(matin: AFArray): float =
  float(s_native_product(matin)[0])

proc product_as_complex*(matin: AFArray): AfComplex64 =
  var (real, imag) = s_native_product(matin)
  complex64(real, imag)

proc s_native_min*(matin: AFArray): tuple[real: float; imag: float] =
  var real: cdouble = 0
  var imag: cdouble = 0
  discard af_min_all(addr real, addr imag, matin.get())
  (real, imag)

proc min_as_int*(matin: AFArray): int =
  int(s_native_min(matin)[0])

proc min_as_float*(matin: AFArray): float =
  float(s_native_min(matin)[0])

proc min_as_complex*(matin: AFArray): AfComplex64 =
  var (real, imag) = s_native_min(matin)
  complex64(real, imag)

proc s_native_max*(matin: AFArray): tuple[real: float; imag: float] =
  var real: cdouble = 0
  var imag: cdouble = 0
  discard af_max_all(addr real, addr imag, matin.get())
  (real, imag)

proc max_as_int*(matin: AFArray): int =
  int(s_native_max(matin)[0])

proc max_as_float*(matin: AFArray): float =
  float(s_native_max(matin)[0])

proc max_as_complex*(matin: AFArray): AfComplex64 =
  var (real, imag) = s_native_max(matin)
  complex64(real, imag)

proc s_native_sum*(matin: AFArray): tuple[real: float; imag: float] =
  var real: cdouble = 0
  var imag: cdouble = 0
  discard af_sum_all(addr real, addr imag, matin.get())
  (real, imag)

proc sum_as_int*(matin: AFArray): int =
  int(s_native_sum(matin)[0])

proc sum_as_float*(matin: AFArray): float =
  float(s_native_sum(matin)[0])

proc sum_as_complex*(matin: AFArray): AfComplex64 =
  var (real, imag) = s_native_sum(matin)
  complex64(real, imag)

proc svd*(matin: AFArray): tuple[u: AFArray; s: AFArray; vt: AFArray] =
  var u: AFArray
  var s: AFArray
  var v: AFArray
  af_svd(u, s, v, matin)
  (u, s, v)

import ./bindings/algebras
import ./bindings/ffts
import ./bindings/operators
import ./bindings/plots
import ./bindings/signals
import ./bindings/indexing

export types
export dims
export afseq
export algebras
export ffts
export operators
export plots
export signals
export indexing
