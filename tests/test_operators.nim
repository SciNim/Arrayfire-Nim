import arrayfire
import unittest

suite "Plus operators":
  test "Array + Array":
    let x = initAfTensor[int](2, @[1, 4])
    let y = initAfTensor[int](2, @[2, 3])
    let z = x + y
    check z.array.toSeq(int) == @[3, 7]

  test "Array + Scalar":
    let x1 = initAfTensor[int](2, @[1, 4])
    let z1 = x1 + 2
    check z1.toSeq() == @[3, 6]
    let x2 = initAfTensor[float](2, @[2.0, 7.0])
    let z2 = 4.0 + x2
    check z2.toSeq() == @[2.0 + 4.0, 7.0 + 4.0]

  test "Array += Array":
    var x = initAfTensor[int](2, @[1, 4])
    var y = initAfTensor[int](2, @[2, 3])
    x += y
    check x.array.toSeq(int) == @[3, 7]

  test "Array += Scalar":
    var x = initAfTensor[int](2, @[1, 4])
    x += 10
    check x.array.toSeq(int) == @[11, 14]
    var x1 = initAfTensor[float](2, @[1.0, 4.0])
    x1 += 1.0
    check x1.array.toSeq(float) == @[1.0 + 1.0, 4.0 + 1.0]
    ## TODO: Cover more datatypes

  test "Array - Array":
    let x = initAfTensor[int](2, @[1, 4])
    let y = initAfTensor[int](2, @[2, 3])
    let z = x - y
    check z.toSeq() == @[-1, 1]

  test "Array - Scalar":
    let x1 = initAfTensor[int](2, @[1, 4])
    let z1 = x1 - 2
    check z1.toSeq() == @[-1, 2]
    let x2 = initAfTensor[float](2, @[2.0, 7.0])
    let z2 = 4.0 - x2
    check z2.toSeq() == @[4.0 - 2.0, 4.0 - 7.0]

  test "Array -= Array":
    var x = initAfTensor[int](2, @[1, 4])
    var y = initAfTensor[int](2, @[2, 3])
    x -= y
    check x.array.toSeq(int) == @[-1, 1]

  test "Array -= Scalar":
    var x = initAfTensor[int](2, @[1, 4])
    x -= 2
    check x.array.toSeq(int) == @[-1, 2]
    var x1 = initAfTensor[float](2, @[1.0, 4.0])
    x1 -= 1.0
    check x1.array.toSeq(float) == @[1.0 - 1.0, 4.0 - 1.0]
    ## TODO: Cover more datatypes

  test "Array * Array":
    let x = initAfTensor[int](2, @[1, 4])
    let y = initAfTensor[int](2, @[2, 3])
    let z = x * y
    check z.toSeq() == @[2, 12]

  test "Array * Scalar":
    let x1 = initAfTensor[int](2, @[1, 4])
    let z1 = x1 * 2
    check z1.toSeq() == @[2, 8]
    let x2 = initAfTensor[float](2, @[2.0, 7.0])
    let z2 = 4.0 * x2
    check z2.toSeq() == @[4.0 * 2.0, 4.0 * 7.0]

  test "Array *= Array":
    var x = initAfTensor[int](2, @[1, 4])
    var y = initAfTensor[int](2, @[2, 3])
    x *= y
    check x.array.toSeq(int) == @[2, 12]

  test "Array *= Scalar":
    var x = initAfTensor[int](2, @[1, 4])
    x *= 2
    check x.array.toSeq(int) == @[2, 8]
    var x1 = initAfTensor[float](2, @[1.0, 4.0])
    x1 *= 3.0
    check x1.array.toSeq(float) == @[1.0 * 3.0, 4.0 * 3.0]
    ## TODO: Cover more datatypes

  test "Array / Array":
    let x = initAfTensor[int](2, @[12, 20])
    let y = initAfTensor[int](2, @[2, 5])
    let z = x / y
    check z.toSeq() == @[6, 4]

  test "Array / Scalar":
    let x1 = initAfTensor[int](2, @[12, 4])
    let z1 = x1 / 2
    check z1.toSeq() == @[6, 2]
    let x2 = initAfTensor[float](2, @[2.0, 7.0])
    let z2 = 4.0 / x2
    check z2.toSeq() == @[4.0 / 2.0, 4.0 / 7.0]

  test "Array /= Array":
    var x = initAfTensor[int](2, @[12, 12])
    var y = initAfTensor[int](2, @[2, 3])
    x /= y
    check x.array.toSeq(int) == @[6, 4]

  test "Array /= Scalar":
    var x = initAfTensor[int](2, @[12, 13])
    x /= 2
    check x.array.toSeq(int) == @[6, 6]
    var x1 = initAfTensor[float](2, @[1.0, 4.0])
    x1 /= 4.0
    check x1.array.toSeq(float) == @[1.0 / 4.0, 4.0 / 4.0]
    ## TODO: Cover more datatypes
  
  test "Negate":
    let x = initAfTensor[int](2, @[12, 13])
    let y = -x
    check y.toSeq() == @[-12, -13]
