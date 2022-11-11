import std / [complex]
import ./bindings
import ./sugars

type
  AFTensor*[T] = object
    array*: AFArray
    dtype*: Dtype

proc initAFTensor*[T](): AFTensor[T] =
  result.dtype = getDtype[T]()
  result.array = afa()

proc fromAFArray*[T](result: var AFTensor[T], m: sink AFArray) =
  result.dtype = m.dtype
  doAssert getDType[T]() == m.dtype(), "Expected: " & $getDType[T]() & " but got: " & $m.dtype()
  # result.array = m
  if result.dtype != m.dtype():
    result.array = m
  else:
    result.array = m.`as`(result.dtype)

proc initAFTensor*[T](m: sink AFArray): AFTensor[T] =
  fromAFArray(result, m)

proc initAFTensor*[T](dims: Dim4, datas: openArray[T]): AFTensor[T] =
  result.dtype = getDtype[T]()
  result.array = sugars.afa(dims, datas, result.dtype)

proc initAFTensor*[T](dim0: DimT, datas: openArray[T]): AFTensor[T] =
  result.dtype = getDtype[T]()
  result.array = sugars.afa(dim0, datas, result.dtype)

proc initAFTensor*[T](dim0: DimT, dim1: DimT, datas: openArray[T]): AFTensor[T] =
  result.dtype = getDtype[T]()
  result.array = sugars.afa(dim0, dim1, datas, result.dtype)

proc initAFTensor*[T](dim0: DimT, dim1: DimT, dim2: DimT, datas: openArray[T]): AFTensor[T] =
  result.dtype = getDtype[T]()
  result.array = sugars.afa(dim0, dim1, dim2, datas, result.dtype)

proc initAFTensor*[T](dim0: DimT, dim1: DimT, dim2: DimT, dim3: DimT, datas: openArray[T]): AFTensor[T] =
  result.dtype = getDtype[T]()
  result.array = sugars.afa(dim0, dim1, dim2, dim3, datas, result.dtype)

# TODO Figure out Slice
# proc initAFTensor*[T](dims: Dim4, slice: Slice[T]) : AFTensor[T] =
#   result.dtype = getDtype[T]()
#   result.array = sugars.afa(dims, slice, result.dtype)
#
# proc initAFTensor*[T](dim0: DimT, datas: Slice[T]) : AFTensor[T] =
#   result.dtype = getDtype[T]()
#   result.array = sugars.afa(dim0, datas, result.dtype)
#
# proc initAFTensor*[T](dim0: DimT, dim1: DimT, datas: Slice[T]) : AFTensor[T] =
#   result.dtype = getDtype[T]()
#   result.array = sugars.afa(dim0, dim1, datas, result.dtype)
#
# proc initAFTensor*[T](dim0: DimT, dim1: DimT, dim2: DimT, datas: Slice[T]) : AFTensor[T] =
#   result.dtype = getDtype[T]()
#   result.array = sugars.afa(dim0, dim1, dim2, datas, result.dtype)
#
# proc initAFTensor*[T](dim0: DimT, dim1: DimT, dim2: DimT, dim3: DimT, datas: Slice[T]) : AFTensor[T] =
#   result.dtype = getDtype[T]()
#   result.array = sugars.afa(dim0, dim1, dim2, dim3, datas, result.dtype)


proc `$`*[T](x: AFTensor[T]): string =
  result.add "AFTensor("
  result.add "dtype:" & $(x.dtype) & ",\n"
  result.add "array:" & $(x.array)
  result.add ")"

proc asType*[T, S](x: AFTensor[T], newType: typedesc[S]): AFTensor[S] =
  initAfTensor[S](x.array.asType(S))

proc toSeq*[T](t: AFTensor[T], count: int = -1): seq[T] =
  t.array.toSeq(T, count)


########################
# Arithmetic operators #
########################

proc `+`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAfTensor[T](lhs.array + rhs.array)

proc `+`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val + t.array)

proc `+`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array + val)

proc `+=`*[T](this: var AFTensor[T], val: AFTensor[T]) =
  this.array += val.array

proc `+=`*[T](this: var AFTensor[T], val: T) =
  this.array += val

proc `-`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAfTensor[T](lhs.array - rhs.array)

proc `-`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val - t.array)

proc `-`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array - val)

proc `-=`*[T](this: var AFTensor[T], val: AFTensor[T]) =
  this.array -= val.array

proc `-=`*[T](this: var AFTensor[T], val: T) =
  this.array -= val

proc `*`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAfTensor[T](lhs.array * rhs.array)

proc `*`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val * t.array)

proc `*`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array * val)

proc `*=`*[T](this: var AFTensor[T], val: AFTensor[T]) =
  this.array *= val.array

proc `*=`*[T](this: var AFTensor[T], val: T) =
  this.array *= val

proc `/`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAfTensor[T](lhs.array / rhs.array)

proc `/`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val / t.array)

proc `/`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array / val)

proc `/=`*[T](this: var AFTensor[T], val: AFTensor[T]) =
  this.array /= val.array

proc `/=`*[T](this: var AFTensor[T], val: T) =
  this.array /= val


proc `-`*[T](t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](-t.array)


proc `%`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](lhs.array % rhs.array)

proc `%`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val % t.array)

proc `%`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array % val)

# Logical Operators
proc `!`*[T](t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](!(t.array))

proc `==`*[T](lhs, rhs: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](lhs.array == rhs.array)

proc `==`*[T](val: T, t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](val == t.array)

proc `==`*[T](t: AFTensor[T], val: T): AFTensor[bool] =
  initAFTensor[bool](t.array == val)

proc `<`*[T](lhs, rhs: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](lhs.array < rhs.array)

proc `<`*[T](val: T, t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](val < t.array)

proc `<`*[T](t: AFTensor[T], val: T): AFTensor[bool] =
  initAFTensor[bool](t.array < val)

proc `<=`*[T](lhs, rhs: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](lhs.array <= rhs.array)

proc `<=`*[T](val: T, t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](val <= t.array)

proc `<=`*[T](t: AFTensor[T], val: T): AFTensor[bool] =
  initAFTensor[bool](t.array <= val)

proc `&&`*[T](lhs, rhs: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](lhs.array && rhs.array)

proc `&&`*[T](val: T, t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](val && t.array)

proc `&&`*[T](t: AFTensor[T], val: T): AFTensor[bool] =
  initAFTensor[bool](t.array && val)

proc `||`*[T](lhs, rhs: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](lhs.array || rhs.array)

proc `||`*[T](val: T, t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](val || t.array)

proc `||`*[T](t: AFTensor[T], val: T): AFTensor[bool] =
  initAFTensor[bool](t.array || val)

# Bitwise Operators

proc `&`*[T: SomeInteger](lhs, rhs: AFTensor[T]): AFTensor[T] =
  ## Bitwise and
  initAFTensor[T](lhs.array & rhs.array)

proc `&`*[T: SomeInteger](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val & t.array)

proc `&`*[T: SomeInteger](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array & val)

proc `|`*[T: SomeInteger](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](lhs.array | rhs.array)

proc `|`*[T: SomeInteger](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val | t.array)

proc `|`*[T: SomeInteger](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array | val)

proc `^`*[T: SomeInteger](lhs, rhs: AFTensor[T]): AFTensor[T] =
  ## Bitwise xor
  initAFTensor[T](lhs.array ^ rhs.array)

proc `^`*[T: SomeInteger](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val ^ t.array)

proc `^`*[T: SomeInteger](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array ^ val)

proc `<<`*[T: SomeInteger](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](lhs.array << rhs.array)

proc `<<`*[T: SomeInteger](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val << t.array)

proc `<<`*[T: SomeInteger](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array << val)

proc `>>`*[T: SomeInteger](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](lhs.array >> rhs.array)

proc `>>`*[T: SomeInteger](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val >> t.array)

proc `>>`*[T: SomeInteger](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array >> val)

#######
# FFT #
#######

proc real*(t: AfTensor[Complex32]): AfTensor[float32] =
  initAFTensor[float32](t.array.real())

proc real*(t: AfTensor[Complex64]): AfTensor[float64] =
  initAFTensor[float64](t.array.real())

proc imag*(t: AfTensor[Complex32]): AfTensor[float32] =
  initAFTensor[float32](t.array.imag())

proc imag*(t: AfTensor[Complex64]): AfTensor[float64] =
  initAFTensor[float64](t.array.imag())

proc conjg*(t: AfTensor[Complex32]): AfTensor[Complex32] =
  initAFTensor[Complex32](t.array.conjg())

proc conjg*(t: AfTensor[Complex64]): AfTensor[Complex64] =
  initAFTensor[Complex64](t.array.conjg())

proc abs*(t: AfTensor[Complex32]): AfTensor[float32] =
  initAFTensor[float32](t.array.abs())

proc abs*(t: AfTensor[Complex64]): AfTensor[float64] =
  initAFTensor[float64](t.array.abs())

proc abs*[T](t: AfTensor[T]): AfTensor[T] =
  initAFTensor[T](t.array.abs())

proc arg*(t: AfTensor[Complex32]): AfTensor[float32] =
  initAFTensor[float32](t.array.arg())

proc arg*(t: AfTensor[Complex64]): AfTensor[float64] =
  initAFTensor[float64](t.array.arg())

proc fft*[T: float32 | Complex32](t: AFTensor[T], length: int = 0): AFTensor[Complex32] =
  initAFTensor[Complex32](fft(t.array, DimT(length)))

proc fft*[T: float64 | Complex64](t: AFTensor[T], length: int = 0): AFTensor[Complex64] =
  initAFTensor[Complex64](fft(t.array, DimT(length)))

proc fftNorm*[T: float32 | Complex32](t: AFTensor[T], normFactor: float64, length: int = 0): AFTensor[Complex32] =
  initAFTensor[Complex32](fftNorm(t.array, normFactor, DimT(length)))

proc fftNorm*[T: float64 | Complex64](t: AFTensor[T], normFactor: float64, length: int = 0): AFTensor[Complex64] =
  initAFTensor[Complex64](fftNorm(t.array, normFactor, DimT(length)))

proc ifft*[T: Complex32](t: AFTensor[T], length: int = 0): AFTensor[Complex32] =
  initAFTensor[Complex32](ifft(t.array, DimT(length)))

proc ifft*[T: Complex64](t: AFTensor[T], length: int = 0): AFTensor[Complex64] =
  initAFTensor[Complex64](ifft(t.array, DimT(length)))

proc ifftNorm*[T: Complex32](t: AFTensor[T], normFactor: float64, length: int = 0): AFTensor[Complex32] =
  initAFTensor[Complex32](ifftNorm(t.array, normFactor, DimT(length)))

proc ifftNorm*[T: Complex64](t: AFTensor[T], normFactor: float64, length: int = 0): AFTensor[Complex64] =
  initAFTensor[Complex64](ifftNorm(t.array, normFactor, DimT(length)))



# Misc
proc nonzeros*[T](t: AFTensor[T]): int =
  t.array.nonzeros.int
