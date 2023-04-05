{ pkgs, ... }:

let homeDir = builtins.getEnv "HOME";
in {
  programs.fish = {
    enable = true;
    shellInit = ''
      set -x NIXOS_OZONE_WL 1
    '';
    # # fish plugins
    # plugins = [{
    #   name = "fish-ssh-agent";
    #   src = pkgs.fetchFromGitHub {
    #     owner = "danhper";
    #     repo = "fish-ssh-agent";
    #     rev = "v0.4.0";
    #     sha256 = "1w8bzv1ic0d6fcznr6g2f6plngv9yc3rmq7hhsd4w5ck8zzv6czj";
    #   };
    # }];

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
    };
  };

  # oh-my-posh

  programs.oh-my-posh = {
    enable = true;
    enableFishIntegration = true;
    # https://ohmyposh.dev/docs/themes.
    # Must be an official theme
    useTheme = "cobalt2";

  };

  # home.file."cobalt2.opm.json" = {
  #   text = ''
  #     {
  #       "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  #       "blocks": [
  #         {
  #           "alignment": "left",
  #           "segments": [
  #             {
  #               "background": "#1478DB",
  #               "foreground": "#000000",
  #               "leading_diamond": "\ue0b6",
  #               "trailing_diamond": "\uE0B0",
  #               "properties": {
  #                 "style": "full"
  #               },
  #               "style": "diamond",
  #               "template": "{{ .Path }} ",
  #               "type": "path"
  #             },
  #             {
  #               "background": "#3AD900",
  #               "background_templates": [
  #                 "{{ if or (.Working.Changed) (.Staging.Changed) }}#FFC600{{ end }}",
  #                 "{{ if and (gt .Ahead 0) (gt .Behind 0) }}#FFCC80{{ end }}",
  #                 "{{ if gt .Ahead 0 }}#B388FF{{ end }}",
  #                 "{{ if gt .Behind 0 }}#B388FF{{ end }}"
  #               ],
  #               "foreground": "#000000",
  #               "leading_diamond": "<transparent,background>\uE0B0</>",
  #               "trailing_diamond": "\ue0b4",
  #               "properties": {
  #                 "fetch_stash_count": true,
  #                 "fetch_status": true
  #               },
  #               "style": "diamond",
  #               "template": " {{ .HEAD }}{{ if .Staging.Changed }}<#FF6F00> \uf046 {{ .Staging.String }}</>{{ end }}{{ if and (.Working.Changed) (.Staging.Changed) }} |{{ end }}{{ if .Working.Changed }} \uf044 {{ .Working.String }}{{ end }}{{ if gt .StashCount 0 }} \uf692 {{ .StashCount }}{{ end }} ",
  #               "type": "git"
  #             }
  #           ],
  #           "type": "prompt"
  #         }
  #       ],
  #       "final_space": true,
  #       "version": 2
  #     }
  #   '';

  #   target = "${homeDir}/.config/oh-my-posh/cobalt2.opm.json";
  # };

}
