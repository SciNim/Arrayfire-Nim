import ./types

proc mseq*(length: cdouble = 0): AfSeq
  {.cdecl, constructor, importcpp: "af::seq(@)", header: "arrayfire.h".}

proc destroyseq*(this: var AfSeq) {.cdecl, importcpp: "#.~seq()", header: "arrayfire.h".}

proc mseq*(begin: cdouble; last: cdouble; step: cdouble = 1): AfSeq
  {.cdecl, constructor, importcpp: "af::seq(@)", header: "arrayfire.h".}

proc mseq*(afs: AfSeq; isGfor: bool): AfSeq
  {.cdecl, constructor, importcpp: "af::seq(@)", header: "arrayfire.h".}

proc mseq*(s: AfSeq): AfSeq
  {.cdecl, constructor, importcpp: "seq(@)", header: "arrayfire.h".}

proc `-`*(this: var AfSeq): AfSeq
  {.cdecl, importcpp: "(- #)", header: "arrayfire.h".}

proc `+`*(this: var AfSeq; x: cdouble): AfSeq
  {.cdecl, importcpp: "(# + #)", header: "arrayfire.h".}

proc `-`*(this: var AfSeq; x: cdouble): AfSeq
  {.cdecl, importcpp: "(# - #)",
    header: "arrayfire.h".}
proc `*`*(this: var AfSeq; x: cdouble): AfSeq
  {.cdecl, importcpp: "(# * #)", header: "arrayfire.h".}

proc `+`*(this: var AfSeq; x: cdouble; y: AfSeq): AfSeq
  {.cdecl, importcpp: "(# + #)", header: "arrayfire.h".}

proc `-`*(this: var AfSeq; x: cdouble; y: AfSeq): AfSeq
  {.cdecl, importcpp: "(# - #)", header: "arrayfire.h".}

proc `*`*(this: var AfSeq; x: cdouble; y: AfSeq): AfSeq
  {.cdecl, importcpp: "(# * #)", header: "arrayfire.h".}

proc get_AFArray*(this: AfSeq): AFArray
  {.cdecl, importcpp: "#.operator af::array()", header: "arrayfire.h".}

