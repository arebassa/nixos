{ pkgs, ... }:

with pkgs;
let
  # Add the berkeley-mono package here
  berkeley-mono = pkgs.callPackage ./berkeley-mono.nix { };

in {
  home.packages = with pkgs; [

    # Called for above
    # default-python

    # Add the berkeley-mono package to the list
    berkeley-mono
    roboto-slab
    fira
    fira-code
    fira-code-symbols
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
  ];

}
