{ pkgs, ... }:

with pkgs;
let
  #   default-python = python3.withPackages (python-packages:
  #     with python-packages; [
  #       pip
  #       black
  #       flake8
  #       setuptools
  #       wheel
  #       twine
  #       flake8
  #       virtualenv
  #     ]);

in {
  home.packages = with pkgs; [

    ### Desktop
    _1password-gui
    google-chrome

    ### Gnome
    gnome.gnome-tweaks
    gnome.gnome-keyring
    dconf

    ### Communication
    element-desktop
    zoom-us
    slack

    ### Networking
    tailscale

    ### Terminal
    wezterm
    htop
    ncspot
    espanso
    _1password
    age

    ### code related
    vscode
    shadowenv
    difftastic
    nixfmt
    git
    gnumake
    doppler
    git-crypt
    gnupg
    gh
    # neovim
    # Called for above
    # default-python
  ];

}
