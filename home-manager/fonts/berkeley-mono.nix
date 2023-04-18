# { pkgs, ... }:
{ stdenv }:

# pkgs.stdenv.mkDerivation {
stdenv.mkDerivation {
  name = "berkeley-mono";
  src = ./.;

  installPhase = ''
    mkdir -p $out/share/fonts/truetype/berkeley-mono
    cp -r ./*.ttf $out/share/fonts/truetype/berkeley-mono
  '';
}
