{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "berkeley-mono";
  src = ./.;

  installPhase = ''
    mkdir -p $out/share/fonts/truetype/berkeley-mono
    cp -r fonts/* $out/share/fonts/truetype/berkeley-mono
  '';
}
