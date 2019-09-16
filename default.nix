{ stdenv
, boost
, poco
, opencv4
}:
stdenv.mkDerivation {
  name = "my-app-2";
  src = ./.;

  shellHook = ''
      export NIX_CFLAGS_COMPILE="$NIX_CFLAGS_COMPILE -isystem ${opencv4}/include/opencv4"
  '';

  buildInputs = [ boost poco opencv4 ];

  buildPhase = ''
      c++ -std=c++14 -o dingas main.cpp -lPocoFoundation -lboost_system -lopencv_highgui -lopencv_imgcodecs -lopencv_core
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp main $out/bin/
  '';
}
