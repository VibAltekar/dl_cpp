with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "my-app-2";
  src = ./.;

  buildInputs = [ boost poco opencv4 ];

  buildPhase = "c++ -o main main.cpp -lPocoFoundation -lboost_system";

  installPhase = ''
    mkdir -p $out/bin
    cp main $out/bin/
  '';
}
