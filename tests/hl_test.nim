import arrayfire

var x : AFTensor[float] = initAfTensor[float]()
echo x

var ain = initAfTensor[float32](2, 3, @[1'f32, 4'f32, 2'f32, 5'f32, 3'f32, 6'f32])
echo ain

block:
  var ex1 = afa(2, 3, @[1.int32, 2, 3, 4, 5, 6])
  echo ex1
  var ex2 = initAFTensor[int32](ex1)
  echo ex2

block:
  var ex1 = afa(2, 3, @[1.uint32, 2, 3, 4, 5, 6])
  echo ex1
  var ex2 = initAFTensor[uint32](ex1)
  echo ex2

block:
  var ex1 = afa(2, 3, @[1.int64, 2, 3, 4, 5, 6])
  echo ex1
  var ex2 = initAFTensor[int64](ex1)
  echo ex2

block:
  var ex1 = afa(2, 3, @[1.uint64, 2, 3, 4, 5, 6])
  echo ex1
  var ex2 = initAFTensor[uint64](ex1)
  echo ex2

var ex3 = initAFTensor[bool](3, 2, @[true, true, true,false, false, false])
echo ex3
