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
  berkeley-mono = pkgs.callPackage ./berkeley-mono.nix { };

in {
  home.packages = with pkgs; [

       # Called for above
    # default-python

    # Add the berkeley-mono package to the list
    berkeley-mono
  ];

}
