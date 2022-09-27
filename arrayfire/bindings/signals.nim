import ./types

{.push cdecl, header: "arrayfire.h".}

# Interpolations
proc approx1*(matin: AFArray; pos: AFArray; imethod: InterpType; offGrid: cfloat = 0.0): AFArray {.importcpp: "af::approx1(@)".}

proc approx2*(matin: AFArray; pos0: AFArray; pos1: AFArray; imethod: InterpType; offGrid: cfloat = 0.0): AFArray {.importcpp: "af::approx2(@)".}

# Filters
proc fir*(b: AFArray; x: AFArray): AFArray {.importcpp: "fir(@)".}

proc iir*(b: AFArray; a: AFArray; x: AFArray): AFArray {.importcpp: "iir(@)".}

proc medfilt*(matin: AFArray; windLength: DimT = 3; windWidth: DimT = 3; edgePad: BorderType): AFArray {.importcpp: "medfilt(@)".}

proc medfilt1*(matin: AFArray; windWidth: DimT = 3; edgePad: BorderType): AFArray {.importcpp: "medfilt1(@)".}

proc medfilt2*(matin: AFArray; windLength: DimT = 3; windWidth: DimT = 3; edgePad: BorderType): AFArray {.importcpp: "medfilt2(@)".}

# Feature detector
proc fast*(matin: AFArray; thr: cfloat = 20.0; arcLength: cuint = 9; nonMax: bool = true; featureRatio: cfloat = 0.05;
    edge: cuint = 3): Features {.importcpp: "fast(@)".}

proc harris*(matin: AFArray; maxCorners: cuint = 500; minResponse: cfloat = 100000.0; sigma: cfloat = 1.0; blockSize: cuint = 0;
    kThr: cfloat = 0.04): Features {.importcpp: "harris(@)".}

proc orb*(feat: var Features; desc: var AFArray; image: AFArray; fastThr: cfloat = 20.0; maxFeat: cuint = 400; sclFctr: cfloat = 1.5; levels: cuint = 4;
    blurImg: bool = false) {.importcpp: "orb(@)".}

proc sift*(feat: var Features; desc: var AFArray; matin: AFArray; nLayers: cuint = 3; contrastThr: cfloat = 0.04; edgeThr: cfloat = 10.0;
    initSigma: cfloat = 1.6; doubleInput: bool = true; intensityScale: cfloat = 0.00390625; featureRatio: cfloat = 0.05) {.importcpp: "sift(@)".}

proc gloh*(feat: var Features; desc: var AFArray; matin: AFArray; nLayers: cuint = 3;
          contrastThr: cfloat = 0.04; edgeThr: cfloat = 10.0; initSigma: cfloat = 1.6;
          doubleInput: bool = true; intensityScale: cfloat = 0.00390625;
          featureRatio: cfloat = 0.05) {.importcpp: "gloh(@)".}

proc hammingMatcher*(idx: var AFArray; dist: var AFArray; query: AFArray; train: AFArray; distDim: DimT = 0;
    nDist: cuint = 1) {.importcpp: "hammingMatcher(@)".}

proc nearestNeighbour*(idx: var AFArray; dist: var AFArray; query: AFArray; train: AFArray; distDim: DimT = 0; nDist: cuint = 1;
    distType: MatchType) {.importcpp: "nearestNeighbour(@)".}

proc matchTemplate*(searchImg: AFArray; templateImg: AFArray; mType: MatchType): AFArray {.importcpp: "matchTemplate(@)".}

proc susan*(matin: AFArray; radius: cuint = 3; diffThr: cfloat = 32.0; geomThr: cfloat = 10.0; featureRatio: cfloat = 0.05;
    edge: cuint = 3): Features {.importcpp: "susan(@)".}

proc dog*(matin: AFArray; radius1: cint; radius2: cint): AFArray {.importcpp: "dog(@)".}

proc homography*(h: var AFArray; inliers: var cint; xSrc: AFArray; ySrc: AFArray; xDst: AFArray; yDst: AFArray; htype: HomographyType; inlierThr: cfloat = 3.0;
    iterations: cuint = 1000; otype: Dtype = f32) {.importcpp: "homography(@)".}

{.pop.}
