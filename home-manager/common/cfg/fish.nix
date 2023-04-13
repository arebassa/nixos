{ pkgs, ... }:

let homeDir = builtins.getEnv "HOME";
in {
  programs.fish = {
    enable = true;
    shellInit = ''
      set -x NIXOS_OZONE_WL 1
    '';

    plugins = [
      {
        name = "tide";
        inherit (pkgs.fishPlugins.tide) src;
      }
      {
        name = "autopair";
        inherit (pkgs.fishPlugins.autopair) src;
      }
    ];

    # fish functions
    functions = {
      do-switch = {
        description = "Do a rebuild and switch in NIXOS";
        body = "sudo nixos-rebuild switch";
      };
      go-nix = {
        description = "Run: cd /etc/nixos";
        body = "cd /etc/nixos";
      };
      gcb = {
        description = "Copy git commit bug template";
        body = "echo 'fix: :bug: ' | xclip -selection clipboard";
      };
    };
  };

  # oh-my-posh

  # programs.oh-my-posh = {
  #   enable = true;
  #   enableFishIntegration = true;
  #   # https://ohmyposh.dev/docs/themes.
  #   # Must be an official theme
  #   useTheme = "cobalt2";

  # };

}
