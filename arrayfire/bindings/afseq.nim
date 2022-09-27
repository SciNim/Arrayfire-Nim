import ./types

proc mseq*(length: cdouble = 0): AF_Seq
  {.cdecl, constructor, importcpp: "af::seq(@)", header: "arrayfire.h".}

proc destroyseq*(this: var AF_Seq) {.cdecl, importcpp: "#.~seq()", header: "arrayfire.h".}

proc mseq*(begin: cdouble; last: cdouble; step: cdouble = 1): AF_Seq
  {.cdecl, constructor, importcpp: "af::seq(@)", header: "arrayfire.h".}

proc mseq*(afs: AF_SEQ; isGfor: bool): AF_Seq
  {.cdecl, constructor, importcpp: "af::seq(@)", header: "arrayfire.h".}

proc mseq*(s: AF_Seq): AF_Seq
  {.cdecl, constructor, importcpp: "seq(@)", header: "arrayfire.h".}

proc `-`*(this: var AF_SEQ): AF_SEQ
  {.cdecl, importcpp: "(- #)", header: "arrayfire.h".}

proc `+`*(this: var AF_SEQ; x: cdouble): AF_SEQ
  {.cdecl, importcpp: "(# + #)", header: "arrayfire.h".}

proc `-`*(this: var AF_SEQ; x: cdouble): AF_SEQ
  {.cdecl, importcpp: "(# - #)",
    header: "arrayfire.h".}
proc `*`*(this: var AF_SEQ; x: cdouble): AF_SEQ
  {.cdecl, importcpp: "(# * #)", header: "arrayfire.h".}

proc `+`*(this: var AF_SEQ; x: cdouble; y: AF_SEQ): AF_SEQ
  {.cdecl, importcpp: "(# + #)", header: "arrayfire.h".}

proc `-`*(this: var AF_SEQ; x: cdouble; y: AF_SEQ): AF_SEQ
  {.cdecl, importcpp: "(# - #)", header: "arrayfire.h".}

proc `*`*(this: var AF_SEQ; x: cdouble; y: AF_SEQ): AF_SEQ
  {.cdecl, importcpp: "(# * #)", header: "arrayfire.h".}

proc get_AFArray*(this: AF_SEQ): AFArray
  {.cdecl, importcpp: "#.operator af::array()", header: "arrayfire.h".}

