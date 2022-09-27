import ./types

{.push cdecl, header: "arrayfire.h".}

proc fftNorm*(matin: AFArray; normFactor: cdouble; odim0: DimT = 0): AFArray {.importcpp: "af::fftNorm(@)".}

proc fft2Norm*(matin: AFArray; normFactor: cdouble; odim0: DimT = 0; odim1: DimT = 0): AFArray {.importcpp: "af::fft2Norm(@)".}

proc fft3Norm*(matin: AFArray; normFactor: cdouble; odim0: DimT = 0; odim1: DimT = 0; odim2: DimT = 0): AFArray {.importcpp: "af::fft3Norm(@)",
    header: "arrayfire.h".}

proc fftInPlace*(`in`: var AFArray; normFactor: cdouble = 1) {.importcpp: "af::fftInPlace(@)".}

proc fft2InPlace*(`in`: var AFArray; normFactor: cdouble = 1) {.importcpp: "af::fft2InPlace(@)".}

proc fft3InPlace*(`in`: var AFArray; normFactor: cdouble = 1) {.importcpp: "af::fft3InPlace(@)".}

proc fft*(matin: AFArray; odim0: DimT = 0): AFArray {.importcpp: "af::fft(@)".}

proc fft2*(matin: AFArray; odim0: DimT = 0; odim1: DimT = 0): AFArray {.importcpp: "af::fft2(@)".}

proc fft3*(matin: AFArray; odim0: DimT = 0; odim1: DimT = 0; odim2: DimT = 0): AFArray {.importcpp: "af::fft3(@)".}

proc dft*(matin: AFArray; normFactor: cdouble; outDims: Dim4): AFArray {.importcpp: "af::dft(@)".}

proc dft*(matin: AFArray; outDims: Dim4): AFArray {.importcpp: "dft(@)".}

proc dft*(matin: AFArray): AFArray {.importcpp: "dft(@)".}

proc ifftNorm*(matin: AFArray; normFactor: cdouble; odim0: DimT = 0): AFArray {.importcpp: "ifftNorm(@)".}

proc ifft2Norm*(matin: AFArray; normFactor: cdouble; odim0: DimT = 0; odim1: DimT = 0): AFArray {.importcpp: "ifft2Norm(@)".}

proc ifft3Norm*(matin: AFArray; normFactor: cdouble; odim0: DimT = 0; odim1: DimT = 0; odim2: DimT = 0): AFArray {.importcpp: "ifft3Norm(@)".}

proc ifftInPlace*(`in`: var AFArray; normFactor: cdouble = 1) {.importcpp: "ifftInPlace(@)".}

proc ifft2InPlace*(`in`: var AFArray; normFactor: cdouble = 1) {.importcpp: "ifft2InPlace(@)".}

proc ifft3InPlace*(`in`: var AFArray; normFactor: cdouble = 1) {.importcpp: "ifft3InPlace(@)".}

proc ifft*(matin: AFArray; odim0: DimT = 0): AFArray {.importcpp: "ifft(@)".}

proc ifft2*(matin: AFArray; odim0: DimT = 0; odim1: DimT = 0): AFArray {.importcpp: "ifft2(@)".}

proc ifft3*(matin: AFArray; odim0: DimT = 0; odim1: DimT = 0; odim2: DimT = 0): AFArray {.importcpp: "ifft3(@)".}

proc idft*(matin: AFArray; normFactor: cdouble; outDims: Dim4): AFArray {.importcpp: "idft(@)".}

proc idft*(matin: AFArray; outDims: Dim4): AFArray {.importcpp: "idft(@)".}

proc idft*(matin: AFArray): AFArray {.importcpp: "idft(@)".}

proc fftR2C*[Rank](matin: AFArray; dims: Dim4; normFactor: cdouble = 0): AFArray {.importcpp: "fftR2C(@)".}

proc fftR2C*[Rank](matin: AFArray; normFactor: cdouble = 0): AFArray {.importcpp: "fftR2C(@)".}

proc fftC2R*[Rank](matin: AFArray; isOdd: bool = false; normFactor: cdouble = 0): AFArray {.importcpp: "fftC2R(@)".}

proc convolve*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT; domain: ConvDomain = ConvDomain.AUTO): AFArray {.importcpp: "convolve(@)".}

proc convolve*(colFilter: AFArray; rowFilter: AFArray; signal: AFArray; mode: ConvMode = ConvMode.DEFAULT): AFArray {.importcpp: "convolve(@)".}

proc convolve2GradientNN*(incomming_gradient: AFArray; original_signal: AFArray; original_filter: AFArray; convolved_output: AFArray; stride: Dim4;
    padding: Dim4; dilation: Dim4; gradType: ConvGradientType){.importcpp: "convolve(@)".}

proc convolve1*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT;
    domain: ConvDomain = ConvDomain.AUTO): AFArray {.importcpp: "convolve1(@)".}

proc convolve2*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT;
    domain: ConvDomain = ConvDomain.AUTO): AFArray {.importcpp: "convolve2(@)".}

proc convolve3*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT;
    domain: ConvDomain = ConvDomain.AUTO): AFArray {.importcpp: "convolve3(@)".}

proc fftConvolve*(signal: AFArray; filter: AFArray; mode: ConvMode): AFArray {.importcpp: "fftConvolve(@)".}

proc fftConvolve1*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT): AFArray {.importcpp: "fftConvolve1(@)".}

proc fftConvolve2*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT): AFArray {.importcpp: "fftConvolve2(@)".}

proc fftConvolve3*(signal: AFArray; filter: AFArray; mode: ConvMode = ConvMode.DEFAULT): AFArray {.importcpp: "fftConvolve3(@)".}

{.pop.}
