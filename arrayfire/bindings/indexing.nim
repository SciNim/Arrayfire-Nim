import ./types

{.push header: "arrayfire.h".}

proc `[]`*[I: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           M: AFArray | AFArray_View](m: M, i: I): AFArray_View
           {.importcpp: "#(#)".}

proc `[]`*[I1: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           I2: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           M: AFArray | AFArray_View](m: M, i1: I1, i2: I2): AFArray_View
           {.importcpp: "#(@)".}

proc `[]`*[I1: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           I2: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           I3: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           M: AFArray | AFArray_View](m: M, idx1: I1, idx2: I2, idx3: I3): AFArray_View {.importcpp: "#(@)".}


proc `[]`*[I1: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           I2: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           I3: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           I4: int | int64 | AfSeq | AFArray | AFArray_View | Index,
           M: AFArray | AFArray_View
  ](m: M, idx1: I1, idx2: I2, idx3: I3, idx4: I4): AFArray_View {.importcpp: "#(@)".}


proc `[]=`*[I1: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            V: cdouble | cfloat | cint | cuint | clong | culong | clonglong |
              culonglong | char | bool | AFArray | AFArray_View | AFArray_View,
            M: AFArray | AFArray_View](this: var M; idx1: I1, val: V) {.importcpp: "#(#).operator=(@)".}


proc `[]=`*[I1: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            I2: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            V: cdouble | cfloat | cint | cuint | clong | culong | clonglong | culonglong | char | bool | AFArray | AFArray_View | AFArray_View,
            M: AFArray | AFArray_View](this: var M; idx1: I1, idx2: I2, val: V) {.importcpp: "#(#,#).operator=(@)".}


proc `[]=`*[I1: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            I2: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            I3: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            V: cdouble | cfloat | cint | cuint | clong | culong | clonglong | culonglong | char | bool | AFArray | AFArray_View | AFArray_View,
            M: AFArray | AFArray_View](this: var M; idx1: I1, idx2: I2, idx3: I3, val: V) {.importcpp: "#(#,#,#).operator=(@)".}


proc `[]=`*[I1: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            I2: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            I3: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            I4: int | int64 | AfSeq | Index | AFArray | AFArray_View,
            V: cdouble | cfloat | cint | cuint | clong | culong | clonglong | culonglong | char | bool | AFArray | AFArray_View | AFArray_View,
            M: AFArray | AFArray_View](this: var M; idx1: I1, idx2: I2, idx3: I3, idx4: I4, val: V) {.importcpp: "#(#,#,#,#).operator=(@)".}


{.pop.}
