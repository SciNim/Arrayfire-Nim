import ./bindings
import std/[tables, strutils, sequtils, complex, macros]

# ----------------- Syntactic Sugar -----------------

const dtype_map = {
  "int": sysint,
  "uint": sysuint,
  "float": sysfloat,
  "Complex32": Dtype.c32,
  "AfComplex32": Dtype.c32,
  "Complex64": Dtype.c64,
  "AfComplex64": Dtype.c64,
  "float32": Dtype.f32,
  "float64": Dtype.f64,
  "int16": Dtype.s16,
  "int32": Dtype.s32,
  "int64": Dtype.s64,
  "uint8": Dtype.u8,
  "uint16": Dtype.u16,
  "uint32": Dtype.u32,
  "uint64": Dtype.u64,
  "bool": Dtype.b8
  }.toTable

proc getDType*(tname: string): DType =
  result = dtype_map[tname]

proc getDtype*[T](): Dtype =
  result = dtype_map[$(T)]

const dtype_size_map = {
  DType.f32: sizeof(float32),
  DType.c32: sizeof(float32)*2,
  DType.f64: sizeof(float64),
  DType.c64: sizeof(float64)*2,
  DType.b8: sizeof(bool),
  DType.s32: sizeof(int32),
  DType.u32: sizeof(uint32),
  DType.u8: sizeof(uint8),
  DType.s64: sizeof(int64),
  DType.u64: sizeof(uint64),
  DType.s16: sizeof(int16),
  DType.u16: sizeof(uint16),
}.toTable


proc get_DType_size*(at: DType): int =
  result = dtype_size_map[at]

let iend*: cint = -1

converter toAFArray*(s: AF_SEQ): AFArray = s.get_AFArray()

converter toAFArray*(mv: AFArray_View): AFArray = mv.get_AFArray()

converter toCuint*(d: DimT): cuint = cuint(d)

converter toInt*(i: cint): int = int(i)

when sizeof(clong) != sizeof(cint):
  converter toInt*(i: clong): int = int(i)

# Arrayfire made the choice to NOT use fixed size int defined in C++11
# This means than there is currently no constructor for long type but only for long long
# Nim on the other hand, use fixed size integer on code generation
# Hence the workaroud of using clonglong and culonglong instead of the default
proc afa*[T](dims: Dim4, data: openarray[T]): AFArray =
  when T is bool:
    var pdata = cast[ptr uint8](unsafeAddr(data[0]))
    # afHost means copy, afDevice means move
    result = bindings.afa[uint8](dims, pdata, Source.afHost).as(getDtype[T]())
  elif T is int64:
    assert sizeof(int64) == sizeof(clonglong)
    var pdata = cast[ptr clonglong](unsafeAddr(data[0]))
    # afHost means copy, afDevice means move
    result = bindings.afa[clonglong](dims, pdata, Source.afHost).as(getDtype[T]())
  elif T is uint64:
    assert sizeof(uint64) == sizeof(unsigned clonglong)
    var pdata = cast[ptr culonglong](unsafeAddr(data[0]))
    # afHost means copy, afDevice means move
    result = bindings.afa[culonglong](dims, pdata, Source.afHost).as(getDtype[T]())
  elif T is int and sizeof(int) == 8:
    assert sizeof(int) == sizeof(clonglong)
    var pdata = cast[ptr clonglong](unsafeAddr(data[0]))
    # afHost means copy, afDevice means move
    result = bindings.afa[clonglong](dims, pdata, Source.afHost).as(getDtype[T]())
  else:
    var pdata = unsafeAddr(data[0])
    # afHost means copy, afDevice means move
    result = bindings.afa[T](dims, pdata, Source.afHost)

proc afa*[T](dims: Dim4, data: openarray[T], AFArray_type: DType): AFArray =
  let tmp = afa(dims, data)
  tmp.`as`(AFArray_type)

proc afa*[T](dim0: DimT, data: openarray[T]): AFArray =
  afa(dim4(dim0), data)

proc afa*[T](dim0: DimT, dim1: DimT, data: openarray[T]): AFArray =
  afa(dim4(dim0, dim1), data)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, data: openarray[T]): AFArray =
  afa(dim4(dim0, dim1, dim2), data)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, dim3: DimT, data: openarray[T]): AFArray =
  afa(dim4(dim0, dim1, dim2, dim3), data)

proc afa*[T](dim0: DimT, data: openarray[T], AFArray_type: DType): AFArray =
  afa(dim4(dim0), data, AFArray_type)

proc afa*[T](dim0: DimT, dim1: DimT, data: openarray[T], AFArray_type: DType): AFArray =
  afa(dim4(dim0, dim1), data, AFArray_type)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, data: openarray[T],
    AFArray_type: DType): AFArray =
  afa(dim4(dim0, dim1, dim2), data, AFArray_type)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, dim3: DimT, data: openarray[T],
    AFArray_type: DType): AFArray =
  afa(dim4(dim0, dim1, dim2, dim3), data, AFArray_type)

proc afa*[T](dims: Dim4, slice: Slice[T]): AFArray =
  var data: seq[int] = @[]
  for i in slice.a..slice.b:
    data.add(i)
  result = afa[T](dims, data)

proc afa*[T](dims: Dim4, slice: Slice[T], AFArray_type: DType): AFArray =
  let tmp = afa(dims, slice)
  tmp.`as`(AFArray_type)

proc afa*[T](dim0: DimT, data: Slice[T]): AFArray =
  afa(dim4(dim0), data)

proc afa*[T](dim0: DimT, dim1: DimT, data: Slice[T]): AFArray =
  afa(dim4(dim0, dim1), data)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, data: Slice[T]): AFArray =
  afa(dim4(dim0, dim1, dim2), data)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, dim3: DimT, data: Slice[T]): AFArray =
  afa(dim4(dim0, dim1, dim2, dim3), data)

proc afa*[T](dim0: DimT, data: Slice[T], AFArray_type: DType): AFArray =
  afa(dim4(dim0), data, AFArray_type)

proc afa*[T](dim0: DimT, dim1: DimT, data: Slice[T], AFArray_type: DType): AFArray =
  afa(dim4(dim0, dim1), data, AFArray_type)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, data: Slice[T],
    AFArray_type: DType): AFArray =
  afa(dim4(dim0, dim1, dim2), data, AFArray_type)

proc afa*[T](dim0: DimT, dim1: DimT, dim2: DimT, dim3: DimT, data: Slice[T],
    AFArray_type: DType): AFArray =
  afa(dim4(dim0, dim1, dim2, dim3), data, AFArray_type)

proc ndims*(m: AFArray): DimT =
  m.dims.ndims

proc `$`*(m: AFArray): string =
  result = $toString("", m)

proc randu*(dims: openarray[int], ty: Dtype = f32): AFArray =
  randu(dim4s(dims), ty)

proc randn*(dims: openarray[int], ty: Dtype = f32): AFArray =
  randn(dim4s(dims), ty)

proc mseq*[T1: int | float | int32 | int64](last: T1): AF_Seq =
  mseq(cdouble(last))

proc mseq*[T1: int | float | int32 | int64,
           T2: int | float | int32 | int64](first: T1, last: T2): AF_Seq =
  mseq(cdouble(first), cdouble(last))

proc mseq*[T1: int | float | int32 | int64,
           T2: int | float | int32 | int64,
           T3: int | float | int32 | int64, ](first: T1, last: T2, step: T3) =
  mseq(cdouble(first), cdouble(last), cdouble(step))

proc begin(this: AF_Seq): cdouble
  {.importcpp: "#.s.begin", header: "arrayfire.h".}

proc until(this: AF_Seq): cdouble
  {.importcpp: "#.s.end", header: "arrayfire.h".}

proc step(this: AF_Seq): cdouble
  {.importcpp: "#.s.step", header: "arrayfire.h".}

proc getContent*(m: AF_Seq): tuple[start: float, until: float, step: float] =
  (m.begin, m.until, m.step)

proc `$`*(m: AF_Seq): string =
  let vals = m.getContent()
  "AF_Seq[from: $1, until $2, step: $3]"%[$vals[0], $vals[1], $vals[2]]

proc len*(m: AFArray): int =
  int(m.elements())


template timeit*(time: var float, actions: untyped) =
  let t0 = timer_start()
  actions
  time = timer_stop(t0)

template gfor*(s, last, actions: untyped) =
  var s = mseq(mseq(cdouble(last)), true)
  while(gforToggle()):
    actions

template gfor*(s, first, last, actions: untyped) =
  s = mseq(mseq(cdouble(first), cdouble(last)), true)
  while(gforToggle()):
    actions

template gfor*(s, first, last, step, actions: untyped) =
  s = mseq(mseq(cdouble(first), cdouble(last), cdouble(step)), true)
  while(gforToggle()):
    actions

template window*(wvar: untyped, width: int, height: int, title: string) =
  var wvar: Window
  wvar.setSize(width, height)
  wvar.setTitle(title)

template window*(wvar: untyped, title: string) =
  var wvar: Window
  wvar.setTitle(title)

proc to_seq_typed[S, T](a: AFArray, count: int, s: typedesc[S], t: typedesc[T]): seq[T] =
  result = newSeq[T]()
  let dtype = a.dtype
  let c_item_size = get_DType_size(dtype)
  let num_items = if count > 0: count else: len(a)

  let cdata: pointer = alloc0(c_item_size*len(a))
  a.host(cdata)

  for i in 0..<num_items:
    when S is Complex32:
      var real_ptr = cast[ptr float32](cast[int](cdata) + (i * c_item_size))
      var imag_ptr = cast[ptr float32](cast[int](cdata) + (i * c_item_size)+4)
      let source_item = complex32(real_ptr[], imag_ptr[])
    elif S is Complex64:
      var real_ptr = cast[ptr float64](cast[int](cdata) + (i * c_item_size))
      var imag_ptr = cast[ptr float64](cast[int](cdata) + (i * c_item_size)+8)
      let source_item = complex64(real_ptr[], imag_ptr[])
    else:
      var c_ptr = cast[ptr S](cast[int](cdata) + (i * c_item_size))
      let source_item = c_ptr[]

    when T is Complex32:
      result.add(complex32(source_item))
    elif T is Complex64:
      result.add(complex64(source_item))
    else:
      result.add(T(source_item))

  dealloc(cdata)

proc to_seq*[T](m: AFArray, t: typedesc[T], count: int = -1): seq[T] =
  ##[
  Get the all elements of a AFArray as a sequence of type T defined
  ]##
  case m.dtype
    of DType.f32: to_seq_typed(m, count, float32, T)
    of DType.c32: to_seq_typed(m, count, float32, T)
    of DType.f64: to_seq_typed(m, count, float64, T)
    of DType.c64: to_seq_typed(m, count, float64, T)
    of DType.b8: to_seq_typed(m, count, bool, T)
    of DType.s32: to_seq_typed(m, count, int32, T)
    of DType.u32: to_seq_typed(m, count, uint32, T)
    of DType.u8: to_seq_typed(m, count, uint8, T)
    of DType.s64: to_seq_typed(m, count, int64, T)
    of DType.u64: to_seq_typed(m, count, uint64, T)
    of DType.s16: to_seq_typed(m, count, int16, T)
    of DType.u16: to_seq_typed(m, count, uint16, T)

proc first_as*[T](m: AFArray, t: typedesc[T]): T =
  m.to_seq(t, 1)[0]
