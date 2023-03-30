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
  berkeley-mono = pkgs.callPackage ./berkeley-mono.nix {};

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
    oh-my-posh
    fish
    alacritty
    wezterm
    htop
    ncspot
    espanso
    _1password
    age
    fd
    # grc

    ### fish plugins
    # fishPlugins.colored-man-pages
    # fishPlugins.bass
    # fishPlugins.async-prompt
    # fishPlugins.grc

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

    # Add the berkeley-mono package to the list
    berkeley-mono
  ];

}
