when defined(Windows):
  from os import nil
  const AF_INCLUDE_PATH = "\"" & os.joinPath(os.getEnv("AF_PATH"), "include") & "\""
  const AF_LIB_PATH = "\"" & os.joinPath(os.getEnv("AF_PATH"), "lib") & "\""
  {.passC: "-D __FUNCSIG__ -std=c++11" & " -I " & AF_INCLUDE_PATH.}
  {.passL: "-lopengl32 -laf" & " -L " & AF_LIB_PATH.}
elif defined(Linux):
  {.passC: "-std=c++11".}
  {.passL: "-lGL -laf".}
elif defined(MacOsX):
  {.passC: "-std=c++11".}
  {.passL: "-laf".}

when sizeof(int) == 8:
  type DimT* = clonglong
  const dimt_cdef = """
  typedef long long DimT;

  """
else:
  type DimT* = cint
  const dimt_cdef = """
  typedef int DimT;

  """

{.emit: dimt_cdef.}

type
  intl* = clonglong
  uintl* = culonglong

  Err* {.pure, size: sizeof(cint).} = enum
    SUCCESS = 0, ERR_NO_MEM = 101, ERR_DRIVER = 102, ERR_RUNTIME = 103,
    ERR_INVALID_ARRAY = 201, ERR_ARG = 202, ERR_SIZE = 203, ERR_TYPE = 204,
    ERR_DIFF_TYPE = 205, ERR_BATCH = 207, ERR_DEVICE = 208, ERR_NOT_SUPPORTED = 301,
    ERR_NOT_CONFIGURED = 302, ERR_NONFREE = 303, ERR_NO_DBL = 401, ERR_NO_GFX = 402,
    ERR_LOAD_LIB = 501, ERR_LOAD_SYM = 502, ERR_ARR_BKND_MISMATCH = 503,
    ERR_INTERNAL = 998, ERR_UNKNOWN = 999

  Dtype* {.size: sizeof(cint), header: "arrayfire.h", importcpp: "af_dtype".} = enum ## \
    ##
    ## ====== ========
    ## DType  Nim type
    ## ====== ========
    ## f32    float32
    ## c32    Complex32
    ## f64    float64
    ## c64    Complex64
    ## b8     bool
    ## s32    int32
    ## u32    uint32
    ## u8     uint8
    ## s64    int64
    ## u64    uint64
    ## s16    int16
    ## u16    uint16
    ## ====== ========
    f32, c32, f64, c64, b8, s32, u32, u8, s64, u64, s16, u16

  Source* {.pure, size: sizeof(cint), header: "arrayfire.h", importcpp: "af_source".} = enum
    afDevice, afHost

type
  InterpType* {.pure, size: sizeof(cint).} = enum
    NEAREST, LINEAR, BILINEAR, CUBIC, LOWER,
    LINEAR_COSINE, BILINEAR_COSINE, BICUBIC,
    CUBIC_SPLINE, BICUBIC_SPLINE

  BorderType* {.pure, size: sizeof(cint).} = enum
    PAD_ZERO = 0, PAD_SYM, PAD_CLAMP_TO_EDGE, PAD_PERIODIC

  Connectivity* {.pure, size: sizeof(cint).} = enum
    CONNECTIVITY_4 = 4, CONNECTIVITY_8 = 8

  ConvMode* {.pure, size: sizeof(cint).} = enum
    DEFAULT, EXPAND

  ConvDomain* {.pure, size: sizeof(cint).} = enum
    AUTO, SPATIAL, FREQ

  ConvGradientType* {.pure, size: sizeof(cint).} = enum
    DEFAULT, FILTER, DATA, BIAS

  FluxFuction* {.pure, size: sizeof(cint).} = enum
    DEFAULT = 0, QUADRATIC = 1, EXPONENTIAL = 2

  CannyThreshold* {.pure, size: sizeof(cint).} = enum
    THRESHOLD_MANUAL = 0, THRESHOLD_AUTO_OTSU = 1

  DiffusionEq* {.pure, size: sizeof(cint).} = enum
    DEFAULT = 0, GRAD = 1, MCDE = 2

  InverseDeconvAlgo* {.pure, size: sizeof(cint).} = enum
    DEFAULT = 0, IKHONOV = 1

  MatchType* {.pure, size: sizeof(cint).} = enum
    SAD = 0, ZSAD, LSAD, SSD, ZSSD, LSSD, NCC, ZNCC, SHD

  YccStd* {.pure, size: sizeof(cint).} = enum
    YCC_601 = 601, YCC_709 = 709, YCC_2020 = 2020

  CspaceT* {.pure, size: sizeof(cint).} = enum
    GRAY = 0, RGB, HSV, YCbCr

  MatProp* {.pure, size: sizeof(cint), header: "arrayfire.h", importcpp: "af_matprop".} = enum
    NONE = 0, TRANS = 1, CTRANS = 2, CONJ = 4, UPPER = 32, LOWER = 64,
    DIAG_UNIT = 128, SYM = 512, POSDEF = 1024, ORTHOG = 2048,
    TRI_DIAG = 4096, BLOCK_DIAG = 8192

  NormType* {.pure, size: sizeof(cint).} = enum
    VECTOR_1, VECTOR_INF, VECTOR_2, VECTOR_P, AFArray_1,
    AFArray_INF, AFArray_2, AFArray_L_PQ

  ImageFormat* {.pure, size: sizeof(cint).} = enum
    BMP = 0, ICO = 1, JPEG = 2, JNG = 3, PNG = 13, PPM = 14,
    PPMRAW = 15, TIFF = 18, PSD = 20, HDR = 26, EXR = 29, JP2 = 31,
    RAW = 34

  MomentType* {.pure, size: sizeof(cint).} = enum
    M00 = 1, M01 = 2, M10 = 4, M11 = 8, FIRST_ORDER = 15

  HomographyType* {.pure, size: sizeof(cint).} = enum
    RANSAC = 0, LMEDS = 1

  TopKFunction* {.pure, size: sizeof(cint).} = enum
    TOPK_DEFAULT = 0, TOPK_MIN = 1, TOPK_MAX = 2,

type
  Backend* {.size: sizeof(cint), header: "arrayfire.h", importcpp: "af_backend".} = enum
    UNIFIED = 0, CPU = 1, CUDA = 2, OPENCL = 4

type
  SomeenumT* {.pure, size: sizeof(cint).} = enum
    ID = 0

  BinaryOp* {.pure, size: sizeof(cint).} = enum
    BINARY_ADD = 0, BINARY_MUL = 1, BINARY_MIN = 2, BINARY_MAX = 3

  RandomEngineType* {.pure, size: sizeof(cint), header: "arrayfire.h",
    importcpp: "af_random_engine_type".} = enum
    PHILOX = 100, THREEFRY = 200,
    MERSENNE = 300,

type
  Colormap* {.pure, size: sizeof(cint).} = enum
    DEFAULT = 0, SPECTRUM = 1, COLORS = 2, RED = 3,
    MOOD = 4, HEAT = 5, BLUE = 6, INFERNO = 7, MAGMA = 8, PLASMA = 9, VIRIDS = 10

  MarkerType* {.pure, size: sizeof(cint).} = enum
    NONE = 0, POINT = 1, CIRCLE = 2, SQUARE = 3,
    TRIANGLE = 4, CROSS = 5, PLUS = 6, STAR = 7

  Storage* {.pure, size: sizeof(cint).} = enum
    DENSE = 0, CSR = 1, CSC = 2, COO = 3


type
  CSpace* = CspaceT
  SomeEnum* = SomeenumT

type
  Trans* = MatProp

type
  AFArray* {.final, header: "arrayfire.h", importcpp: "af::array".} = object
  AFArray_View* {.final, header: "arrayfire.h", importcpp: "af::array::array_proxy".} = object
  Dim4* {.final, header: "arrayfire.h", importcpp: "af::dim4".} = object
  RandomEngine* {.final, header: "arrayfire.h", importcpp: "af::randomEngine".} = object
  AF_Seq* {.final, header: "arrayfire.h", importcpp: "af::seq".} = object
  Index* {.final, header: "arrayfire.h", importcpp: "af::index".} = object
  Window* {.final, header: "arrayfire.h", importcpp: "af::Window", shallow.} = object
  Timer* {.final, header: "arrayfire.h", importcpp: "af::timer".} = object
  AFC_RandomEngine* = object
  Features* {.final, header: "arrayfire.h", importcpp: "af::features".} = object
  AFC_Features* = object

type
  AF_Array_Handle* = distinct pointer

  AFC_Seq* = object
    begin*: cdouble
    until*: cdouble
    step*: cdouble

  IndexOption* {.union.} = object
    arr*: AFArray
    aseq*: AFC_Seq

  IndexT* = object
    idx*: pointer
    isSeq*: bool
    isBatch*: bool

type
  BatchFuncT* = proc (lhs: AFArray; rhs: AFArray): AFArray {.cdecl.}

type
  Cell* = object
    row*: cint
    col*: cint
    title*: cstring
    cmap*: Colormap

when sizeof(int) == 8:
  const sysint* = DType.s64
  const sysuint* = DType.u64
else:
  const sysint* = DType.s32
  const sysuint* = DType.u32

when sizeof(float) == 8:
  const sysfloat* = DType.f64
else:
  const sysfloat = DType.f32

import ./types/afcomplex
export afcomplex
