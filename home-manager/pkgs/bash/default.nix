{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      # agenix = "nix run github:ryantm/agenix --";
      ".." = "cd ..";
    };

  };

}
