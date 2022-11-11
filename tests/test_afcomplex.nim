import arrayfire
import std/[unittest, math, complex]

suite "AfComplex":
  test "AfComplex Constructors":
    let c32 = afComplex32(1.0, 2.0)
    check c32.real == 1.0
    check c32.imag == 2.0
    let c32_r = afComplex32(3.14)
    check c32_r.real == 3.14.cfloat
    check c32_r.imag == 0.0
    let c64 = afComplex64(1.0, 2.0)
    check c64.real == 1.0
    check c64.imag == 2.0
    let c64_r = afComplex64(3.14)
    check c64_r.real == 3.14
    check c64_r.imag == 0.0

  test "AfComplex ==":
    let c1 = afComplex64(3.14, 1.23)
    let c2 = afComplex64(3.14, 1.23)
    check c1 == c2

  test "AfComplex +":
    let c32 = afComplex32(1.0, 2.0) + afComplex32(3.0, 4.0)
    check c32.real == 1.0'f32 + 3.0'f32
    check c32.imag == 2.0'f32 + 4.0'f32
    let c64 = afComplex64(1.0, 2.0) + afComplex64(3.0, 4.0)
    check c64.real == 1.0'f64 + 3.0'f64
    check c64.imag == 2.0'f64 + 4.0'f64

  test "AfComplex -":
    let c32 = afComplex32(1.0, 2.0) - afComplex32(3.0, 4.0)
    check c32.real == 1.0'f32 - 3.0'f32
    check c32.imag == 2.0'f32 - 4.0'f32
    let c64 = afComplex64(1.0, 2.0) - afComplex64(3.0, 4.0)
    check c64.real == 1.0'f64 - 3.0'f64
    check c64.imag == 2.0'f64 - 4.0'f64

  test "AfComplex *":
    let c32 = afComplex32(1.0, 2.0) * afComplex32(3.0, 4.0)
    check c32.real == 1.0'f32 * 3.0'f32 - 2.0'f32 * 4.0'f32
    check c32.imag == 2.0'f32 * 3.0'f32 + 1.0'f32 * 4.0'f32
    let c64 = afComplex64(1.0, 2.0) * afComplex64(3.0, 4.0)
    check c64.real == 1.0'f64 * 3.0'f64 - 2.0'f64 * 4.0'f64
    check c64.imag == 2.0'f64 * 3.0'f64 + 1.0'f64 * 4.0'f64

  test "AfComplex /":
    block:
      let
        a = 1.0'f32
        b = 2.0'f32
        c = 3.0'f32
        d = 4.0'f32
      let c32 = afComplex32(a, b) / afComplex32(c, d)
      check c32.real == (a*c + b*d) / (c*c + d*d)
      check c32.imag == (b*c - a*d) / (c*c + d*d)
    block:
      let
        a = 1.0'f64
        b = 2.0'f64
        c = 3.0'f64
        d = 4.0'f64
      let c64 = afComplex64(a, b) / afComplex64(c, d)
      check c64.real == (a*c + b*d) / (c*c + d*d)
      check c64.imag == (b*c - a*d) / (c*c + d*d)

  test "AfComplex Abs":
    let c32 = afComplex32(1.0, 2.0)
    check c32.abs() == sqrt((1.0'f32 ^ 2 + 2.0'f32 ^ 2))
    let c64 = afComplex64(1.0, 2.0)
    check c64.abs() == sqrt((1.0'f64 ^ 2 + 2.0'f64 ^ 2))

  test "AfComplex Conj":
    let c32 = afComplex32(1.0, 2.0)
    check c32.conj() == afComplex32(1.0, -2.0)
    let c64 = afComplex64(1.0, 2.0)
    check c64.conj() == afComplex64(1.0, -2.0)


suite "Complex Arrays":
  test "Construction from Complex":
    let x = initAfTensor[Complex32](2, @[complex32(1, 2), complex32(3, 4)])
    check x.toSeq() == @[complex32(1, 2), complex32(3, 4)]
    let y = initAfTensor[Complex64](2, @[complex64(1, 2), complex64(3, 4)])
    check y.toSeq() == @[complex64(1, 2), complex64(3, 4)]

  test "Basic Arithmetic":
    let x = initAfTensor[Complex32](2, @[complex32(1, 2), complex32(3, 4)])
    let y = initAfTensor[Complex32](2, @[complex32(2, 1), complex32(4, 3)])
    let z = x + y
    check z.toSeq() == @[complex32(1, 2) + complex32(2, 1), complex32(3, 4) + complex32(4, 3)]

  test "real":
    let x = initAfTensor[Complex32](2, @[complex32(1, 2), complex32(3, 4)])
    let z = x.real
    check z.toSeq() == @[1'f32, 3]

  test "imag":
    let x = initAfTensor[Complex32](2, @[complex32(1, 2), complex32(3, 4)])
    let z = x.imag
    check z.toSeq() == @[2'f32, 4]

  test "conjg":
    let x = initAfTensor[Complex32](2, @[complex32(1, 2), complex32(3, 4)])
    let z = x.conjg
    check z.toSeq() == @[complex32(1, -2), complex32(3, -4)]

  test "abs":
    let x = initAfTensor[Complex32](2, @[complex32(1, 2), complex32(3, 4)])
    let z = x.abs
    check z.toSeq() == @[abs(complex32(1, 2)), abs(complex32(3, 4))]

  test "arg":
    let x = initAfTensor[Complex64](3, @[complex64(1, 0), complex64(0, 1), complex64(1 / sqrt(2'f64), 1 / sqrt(2'f64))])
    let z = x.arg
    check z.toSeq() == @[0'f64, PI / 2, PI / 4]

  
    

    