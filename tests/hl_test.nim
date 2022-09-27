import arrayfire

var x : AFTensor[float] = initAfTensor[float]()
echo x

var ain = initAfTensor[float32](2, 3, @[1'f32, 4'f32, 2'f32, 5'f32, 3'f32, 6'f32])
echo ain

var ex1 = afa(2,3,@[1'f32, 4'f32, 2'f32, 5'f32, 3'f32, 6'f32])
var ex2 = initAFTensor[float32](ex1)
echo ex2
