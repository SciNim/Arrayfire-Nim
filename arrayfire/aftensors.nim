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
  doAssert getDType[T]() == m.dtype()
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
  initAFTensor[bool](lhs.array % rhs.array)

proc `%`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val % t.array)

proc `%`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array % val)

# Logical Operators
proc `!`*[T](t: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](!(t.array))

proc `==`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array == rhs.array)

proc `==`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val == t.array)

proc `==`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array == val)

proc `<`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array < rhs.array)

proc `<`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val < t.array)

proc `<`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array < val)

proc `<=`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array <= rhs.array)

proc `<=`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val <= t.array)

proc `<=`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array <= val)

proc `&&`*[T](lhs, rhs: AFTensor[T]): AFTensor[bool] =
  initAFTensor[bool](lhs.array && rhs.array)

proc `&&`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val && t.array)

proc `&&`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array && val)

proc `||`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array || rhs.array)

proc `||`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val || t.array)

proc `||`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array || val)

# Bitwise Operators

proc `&`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  ## Bitwise and
  initAFTensor[bool](lhs.array & rhs.array)

proc `&`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val & t.array)

proc `&`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array & val)

proc `|`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array | rhs.array)

proc `|`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val | t.array)

proc `|`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array | val)

proc `^`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  ## Bitwise xor
  initAFTensor[bool](lhs.array ^ rhs.array)

proc `^`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val ^ t.array)

proc `^`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array ^ val)

proc `<<`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array << rhs.array)

proc `<<`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val << t.array)

proc `<<`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array << val)

proc `>>`*[T](lhs, rhs: AFTensor[T]): AFTensor[T] =
  initAFTensor[bool](lhs.array >> rhs.array)

proc `>>`*[T](val: T, t: AFTensor[T]): AFTensor[T] =
  initAFTensor[T](val >> t.array)

proc `>>`*[T](t: AFTensor[T], val: T): AFTensor[T] =
  initAFTensor[T](t.array >> val)


# Misc
proc nonzeros*[T](t: AFTensor[T]): int =
  t.array.nonzeros.int
