import ./types

{.push cdecl, header: "arrayfire.h".}

proc matmul*(lhs: AFArray; rhs: AFArray; optLhs: MatProp = MatProp.NONE; optRhs: MatProp = MatProp.NONE): AFArray {.importcpp: "af::matmul(#,#)".}

proc matmulNT*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "af::matmulNT(@)".}

proc matmulTN*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "af::matmulTN(@)".}

proc matmulTT*(lhs: AFArray; rhs: AFArray): AFArray {.importcpp: "af::matmulTT(@)".}

proc matmul*(a: AFArray; b: AFArray; c: AFArray): AFArray {.importcpp: "af::matmul(@)".}

proc matmul*(a: AFArray; b: AFArray; c: AFArray; d: AFArray): AFArray {.importcpp: "af::matmul(@)".}

proc dot*(lhs: AFArray; rhs: AFArray; optLhs: MatProp; optRhs: MatProp): AFArray {.importcpp: "dot(@)".}

proc transpose*(matin: AFArray; conjugate: bool = false): AFArray {.importcpp: "transpose(@)".}

proc transposeInPlace*(`in`: var AFArray; conjugate: bool = false) {.importcpp: "transposeInPlace(@)".}

proc grad*(dx: var AFArray; dy: var AFArray; matin: AFArray) {.importcpp: "af::grad(@)".}

proc lu*(matout: var AFArray; pivot: var AFArray; matin: AFArray; isLapackPiv: bool = true) {.importcpp: "af::lu(@)".}

proc lu*(lower: var AFArray; upper: var AFArray; pivot: var AFArray; matin: AFArray) {.importcpp: "af::lu(@)".}

proc luInPlace*(pivot: var AFArray; `in`: var AFArray; isLapackPiv: bool = true) {.importcpp: "af::luInPlace(@)".}

proc qr*(`out`: var AFArray; tau: var AFArray; matin: AFArray) {.importcpp: "af::qr(@)".}

proc qr*(q: var AFArray; r: var AFArray; tau: var AFArray; matin: AFArray) {.importcpp: "af::qr(@)".}

proc qrInPlace*(tau: var AFArray; `in`: var AFArray) {.importcpp: "af::qrInPlace(@)".}

proc cholesky*(`out`: var AFArray; matin: AFArray; isUpper: bool = true): cint {.importcpp: "af::cholesky(@)".}

proc choleskyInPlace*(`in`: var AFArray; isUpper: bool = true): cint {.importcpp: "af::choleskyInPlace(@)".}

proc solve*(a: AFArray; b: AFArray; options: MatProp): AFArray {.importcpp: "af::solve(@)".}

proc solveLU*(a: AFArray; piv: AFArray; b: AFArray; options: MatProp): AFArray {.importcpp: "af::solveLU(@)".}

proc inverse*(matin: AFArray; options: MatProp): AFArray {.importcpp: "af::inverse(@)".}

proc pinverse*(matin: AFArray; options: MatProp): AFArray {.importcpp: "af::pinverse(@)".}

proc rank*(matin: AFArray; tol: cdouble = 1e-06; options: MatProp = MatProp.NONE): AFArray {.importcpp: "af::rank(@)".}

proc det*(matin: AFArray): cdouble {.importcpp: "af::det<double>(@)".}

proc norm*(matin: AFArray; `type`: NormType; p: cdouble = 1; q: cdouble = 1): cdouble {.importcpp: "af::norm(@)".}

proc mean*(matin: AFArray; dim: DimT): AFArray {.importcpp: "mean(@)".}

proc mean*(matin: AFArray; weights: AFArray; dim: DimT): AFArray {.importcpp: "mean(@)".}

proc variance*(matin: AFArray; isbiased: bool = false; dim: DimT = - 1): AFArray {.importcpp: "var(@)".}

proc variance*(matin: AFArray; weights: AFArray; dim: DimT = - 1): AFArray {.importcpp: "var(@)".}

proc topk*(values: AFArray; indices: AFArray; matin: AFArray; k: cint; dim: cint = - 1; order: TopKFunction = TopKFunction.TOPK_MAX) {.importcpp: "topk(@)".}

proc stdev*(matin: AFArray; dim: DimT): AFArray {.importcpp: "stdev(@)".}

proc cov*(x: AFArray; y: AFArray; isbiased: bool = false): AFArray {.importcpp: "cov(@)".}

proc median*(matin: AFArray; dim: DimT): AFArray {.importcpp: "median(@)".}

proc mean*(matin: AFArray): cdouble {.importcpp: "af::mean<double>(@)".}

proc mean*[T](matin: AFArray; weights: AFArray): T {.importcpp: "af::mean<'*0>(@)".}

proc variance*[T](matin: AFArray; isbiased: bool = false): T {.importcpp: "af::var<'*0>(@)".}

proc variance*(matin: AFArray; weights: AFArray): cdouble {.importcpp: "var<double>(@)".}

proc stdev*(matin: AFArray): cdouble {.importcpp: "af::stdev<double>(@)".}

proc median*(matin: AFArray): cdouble {.importcpp: "af::median<double>(@)".}

proc corrcoef*(x: AFArray; y: AFArray): cdouble {.importcpp: "af::corrcoef<double>(@)".}

proc print*(exp: cstring; arr: AFArray) {.importcpp: "print(@)".}

proc print*(exp: cstring; arr: AFArray; precision: cint) {.importcpp: "print(@)".}

{.pop.}

proc grad*(matin: AFArray): tuple[dx: AFArray; dy: AFArray] =
  var dx: AFArray
  var dy: AFArray

  grad(dx, dy, matin)
  (dx, dy)

