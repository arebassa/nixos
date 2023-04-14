{ pkgs, lib, ... }:

let
  pname = "espanso";
  version = "0.9.7-beta";
  name = "${pname}-${version}";

  src = pkgs.fetchurl {
    url = "https://github.com/ubports/espanso/releases/download/${version}/espanso_${version}_linux_x86_64.AppImage";
    https://github.com/federico-terzi/espanso/releases/download/v2.1.8/Espanso-X11.AppImage
    # sha256 = "B8s6H6Qmx5O+GrpFr3dHHujcDc0fwWFwRJkX6PXRYfU=";
  };

  appimageContents = pkgs.appimageTools.extractType2 { inherit name src; };
in
pkgs.appimageTools.wrapType2 rec {
  inherit name src;

  extraInstallCommands = ''
    mv $out/bin/${name} $out/bin/${pname}
    install -m 444 -D ${appimageContents}/espanso.desktop $out/share/applications/${pname}.desktop

    install -m 444 -D ${appimageContents}/${pname}.png $out/share/icons/hicolor/512x512/apps/${pname}.png

    substituteInPlace $out/share/applications/${pname}.desktop \
    	--replace 'Exec=AppRun --no-sandbox %U' 'Exec=${pname} %U'
  '';

  meta = with lib; {
    description = "A friendly cross-platform Installer for Ubuntu Touch.";
    homepage = "https://devices.ubuntu-touch.io/installer";
    license = licenses.gpl3;
    maintainers = [ ];
    platforms = [ "x86_64-linux" ];
  };
}