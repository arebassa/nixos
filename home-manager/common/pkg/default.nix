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

  # Add the berkeley-mono package here
  # berkeley-mono = import ./berkeley-mono.nix { pkgs = pkgs; };
  berkeley-mono = pkgs.callPackage ./berkeley-mono.nix { };

in {
  home.packages = with pkgs; [

    ### Desktop
    _1password-gui
    google-chrome
    brave
    microsoft-edge

    ### Gnome
    gnome.gnome-tweaks
    gnome.gnome-keyring
    dconf

    ### Communication
    mailspring
    element-desktop
    zoom-us
    slack

    ### Terminal
    #ncspot
    espanso
    _1password

    ### code related
    shadowenv
    difftastic
    nixfmt
    doppler
    gh
    # Called for above
    # default-python

    # Add the berkeley-mono package to the list
    berkeley-mono

    # Fish
    fishPlugins.tide
    fishPlugins.autopair
  ];

}
