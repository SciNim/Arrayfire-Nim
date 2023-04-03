import ./types
import std/[strutils]

{.push cdecl, header: "arrayfire.h".}

proc dim4*(first: DimT; second: DimT = 1; third: DimT = 1; fourth: DimT = 1): Dim4 {.constructor, importcpp: "af::dim4(@)".}

proc dim4*(other: Dim4): Dim4 {.constructor, importcpp: "af::dim4(@)".}

proc dim4*(ndims: cuint; dims: ptr DimT): Dim4 {.constructor, importcpp: "dim4(@)".}

proc elements*(this: var Dim4): DimT {.importcpp: "elements".}

proc elements*(this: Dim4): DimT {.noSideEffect, importcpp: "elements".}

proc ndims*(this: var Dim4): DimT {.importcpp: "ndims".}

proc ndims*(this: Dim4): DimT {.noSideEffect, importcpp: "ndims".}

proc `==`*(this: Dim4; other: Dim4): bool {.noSideEffect, importcpp: "(# == #)".}

proc `*=`*(this: var Dim4; other: Dim4) {.importcpp: "(# *= #)".}

proc `+=`*(this: var Dim4; other: Dim4) {.importcpp: "(# += #)".}

proc `-=`*(this: var Dim4; other: Dim4) {.importcpp: "(# -= #)".}

proc `[]`*(this: var Dim4; dim: cuint): var DimT {.importcpp: "#[@]".}

proc `[]`*(this: Dim4; dim: cuint): DimT {.noSideEffect, importcpp: "#[@]".}

proc get*(this: var Dim4): ptr DimT {.importcpp: "get".}

proc get*(this: Dim4): ptr DimT {.noSideEffect, importcpp: "get".}

proc `+`*(first: Dim4; second: Dim4): Dim4 {.importcpp: "(# + #)".}

proc `-`*(first: Dim4; second: Dim4): Dim4 {.importcpp: "(# - #)".}

proc `*`*(first: Dim4; second: Dim4): Dim4 {.importcpp: "(# * #)".}

{.pop.}

proc dim4s*[T: int | DimT](dims: openArray[T]): Dim4 =
  var all_dims = [DimT(1), DimT(1), DimT(1), DimT(1)]
  let count = min(4, len(dims))
  for i in 0..<count:
    all_dims[i] = Dimt(dims[i])
  dim4(all_dims[0], all_dims[1], all_dims[2], all_dims[3])

proc dim4*[T: int | DimT](dims: varargs[T]): Dim4 =
  dim4s(dims)

converter toDimT*(i: int): DimT = DimT(i) ##automatically convert a single int to a DimTS

proc `[]`*(d: Dim4; i: int): int =
  ##Index access to the dim4 dimensions
  int(d[cuint(i)])

proc toSeq*(d: Dim4): seq[int64] =
  result = newSeq[int64]()
  for i in 0..<4:
    result.add(int64(d[i]))

proc `$`*(d: Dim4): string =
  var elems = newSeq[DimT]()
  for i in 0..<4:
    elems.add(DimT(d[i]))
  "Dim4[$1]"%join(elems, ", ")

