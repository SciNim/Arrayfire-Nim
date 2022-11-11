import arrayfire
import std/[unittest, math, complex]

suite "1D FFT":
  test "fft":
    let x = initAfTensor(6, @[1'f64, -1, 1, -1, 1, -1])
    let f = fft(x)
    check f.toSeq() == @[complex64(0,0), complex64(0,0),complex64(0,0),complex64(6,0),complex64(0,0),complex64(0,0)]

  test "fftNorm":
    let x = initAfTensor(6, @[1'f64, -1, 1, -1, 1, -1])
    let f = fftNorm(x, 1/6)
    check f.toSeq() == @[complex64(0,0), complex64(0,0),complex64(0,0),complex64(1,0),complex64(0,0),complex64(0,0)]

  test "ifft":
    let x = initAFTensor(6, @[complex64(0,0), complex64(0,0),complex64(0,0),complex64(6,0),complex64(0,0),complex64(0,0)])
    let f = ifft(x)
    check f.real.toSeq() == @[1'f64, -1, 1, -1, 1, -1]