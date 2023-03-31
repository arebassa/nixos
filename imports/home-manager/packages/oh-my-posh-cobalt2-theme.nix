# { pkgs, ... }:
{ stdenv }:

# pkgs.stdenv.mkDerivation {
stdenv.mkDerivation {
  name = "wez-cobalt2-theme";
  src = ./.;

  installPhase = ''
    mkdir -p $out/share/fonts/truetype/berkeley-mono
    cp -r fonts/* $out/share/fonts/truetype/berkeley-mono
  '';
}
