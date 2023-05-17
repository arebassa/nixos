{ pkgs, ... }:

let homeDir = builtins.getEnv "HOME";
in {
  programs.fish = {
    enable = true;
    shellInit = ''
      # Hook in direnv
      # direnv hook fish | source

      # Autocomplete for vultr-cli
      # needs full time ENV_VAR
      # vultr-cli completion fish | source

      # Hook in shadowenv
      shadowenv init fish | source

      set -x NIXOS_OZONE_WL 1
      set -x PATH ~/.npm-packages/bin $PATH
      set -x NODE_PATH ~/.npm-packages/lib/node_modules

      # Define some common terminal colors and formatting
      set -U BLACK (tput setaf 0)
      set -U BLACK_BOLD (tput setaf 0; tput bold)
      set -U BLACK_ITALIC (tput setaf 0; tput sitm)
      set -U BLACK_BOLD_ITALIC (tput setaf 0; tput bold; tput sitm)
      set -U RED (tput setaf 1)
      set -U RED_BOLD (tput setaf 1; tput bold)
      set -U RED_ITALIC (tput setaf 1; tput sitm)
      set -U RED_BOLD_ITALIC (tput setaf 1; tput bold; tput sitm)
      set -U GREEN (tput setaf 2)
      set -U GREEN_BOLD (tput setaf 2; tput bold)
      set -U GREEN_ITALIC (tput setaf 2; tput sitm)
      set -U GREEN_BOLD_ITALIC (tput setaf 2; tput bold; tput sitm)
      set -U YELLOW (tput setaf 3)
      set -U YELLOW_BOLD (tput setaf 3; tput bold)
      set -U YELLOW_ITALIC (tput setaf 3; tput sitm)
      set -U YELLOW_BOLD_ITALIC (tput setaf 3; tput bold; tput sitm)
      set -U BLUE (tput setaf 4)
      set -U BLUE_BOLD (tput setaf 4; tput bold)
      set -U BLUE_ITALIC (tput setaf 4; tput sitm)
      set -U BLUE_BOLD_ITALIC (tput setaf 4; tput bold; tput sitm)
      set -U MAGENTA (tput setaf 5)
      set -U MAGENTA_BOLD (tput setaf 5; tput bold)
      set -U MAGENTA_ITALIC (tput setaf 5; tput sitm)
      set -U MAGENTA_BOLD_ITALIC (tput setaf 5; tput bold; tput sitm)
      set -U CYAN (tput setaf 6)
      set -U CYAN_BOLD (tput setaf 6; tput bold)
      set -U CYAN_ITALIC (tput setaf 6; tput sitm)
      set -U CYAN_BOLD_ITALIC (tput setaf 6; tput bold; tput sitm)
      set -U WHITE (tput setaf 7)
      set -U WHITE_BOLD (tput setaf 7; tput bold)
      set -U WHITE_ITALIC (tput setaf 7; tput sitm)
      set -U WHITE_BOLD_ITALIC (tput setaf 7; tput bold; tput sitm)
      set -U RESET (tput sgr0)

      # Define some common terminal colors and formatting - subprocesses
      set -x BLACK (tput setaf 0)
      set -x BLACK_BOLD (tput setaf 0; tput bold)
      set -x BLACK_ITALIC (tput setaf 0; tput sitm)
      set -x BLACK_BOLD_ITALIC (tput setaf 0; tput bold; tput sitm)
      set -x RED (tput setaf 1)
      set -x RED_BOLD (tput setaf 1; tput bold)
      set -x RED_ITALIC (tput setaf 1; tput sitm)
      set -x RED_BOLD_ITALIC (tput setaf 1; tput bold; tput sitm)
      set -x GREEN (tput setaf 2)
      set -x GREEN_BOLD (tput setaf 2; tput bold)
      set -x GREEN_ITALIC (tput setaf 2; tput sitm)
      set -x GREEN_BOLD_ITALIC (tput setaf 2; tput bold; tput sitm)
      set -x YELLOW (tput setaf 3)
      set -x YELLOW_BOLD (tput setaf 3; tput bold)
      set -x YELLOW_ITALIC (tput setaf 3; tput sitm)
      set -x YELLOW_BOLD_ITALIC (tput setaf 3; tput bold; tput sitm)
      set -x BLUE (tput setaf 4)
      set -x BLUE_BOLD (tput setaf 4; tput bold)
      set -x BLUE_ITALIC (tput setaf 4; tput sitm)
      set -x BLUE_BOLD_ITALIC (tput setaf 4; tput bold; tput sitm)
      set -x MAGENTA (tput setaf 5)
      set -x MAGENTA_BOLD (tput setaf 5; tput bold)
      set -x MAGENTA_ITALIC (tput setaf 5; tput sitm)
      set -x MAGENTA_BOLD_ITALIC (tput setaf 5; tput bold; tput sitm)
      set -x CYAN (tput setaf 6)
      set -x CYAN_BOLD (tput setaf 6; tput bold)
      set -x CYAN_ITALIC (tput setaf 6; tput sitm)
      set -x CYAN_BOLD_ITALIC (tput setaf 6; tput bold; tput sitm)
      set -x WHITE (tput setaf 7)
      set -x WHITE_BOLD (tput setaf 7; tput bold)
      set -x WHITE_ITALIC (tput setaf 7; tput sitm)
      set -x WHITE_BOLD_ITALIC (tput setaf 7; tput bold; tput sitm)
      set -x RESET (tput sgr0)

    '';

    plugins = [
      {
        name = "autopair";
        inherit (pkgs.fishPlugins.autopair) src;
      }
      {
        name = "bass";
        inherit (pkgs.fishPlugins.bass) src;
      }
    ];

    # fish aliases
    shellAliases = {
      j = "just --choose";
      reboot-windows = "sudo systemctl reboot --boot-loader-entry=auto-windows";
      nixcfg = "man configuration.nix";
      hmcfg = "man home-configuration.nix";
      ".." = "cd ..";
      k = "kubectl";
      dc = "docker compose";
      n = "cd ~/dev/nixos";
      kcli =
        "docker run --net host -it --rm -v $HOME/.kube:/root/.kube -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir quay.io/karmab/kcli";
      rustscan = "docker run -it --rm --name rustscan rustscan/rustscan:latest";
    };
    # fish functions
    functions = {
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

  # Enable direnv
  # programs.direnv.enable = true;

  # Starship prompt
  # https://github.com/search?p=1&q=language%3Anix+programs.starship.settings&type=Code
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = true;
      character = {
        success_symbol = "[λ](bold green)";
        error_symbol = "[λ](bold red)";
      };
      format = builtins.concatStringsSep "" [
        "$username"
        "$hostname"
        "$shlvl"
        "$kubernetes"
        "$directory"
        # "$vcsh"
        "$git_branch"
        "$git_commit"
        "$git_state"
        "$git_status"
        # "$hg_branch"
        # "$docker_context"
        "$package"
        # "$cmake"
        # "$dart"
        # "$deno"
        # "$dotnet"
        "$elixir"
        # "$elm"
        "$erlang"
        "$golang"
        "$helm"
        "$java"
        # "$julia"
        # "$kotlin"
        # "$nim"
        "$nodejs"
        "$ocaml"
        "$perl"
        # "$php"
        "$purescript"
        "$python"
        # "$red"
        "$ruby"
        "$rust"
        # "$scala"
        # "$swift"
        "$terraform"
        # "$vagrant"
        # "$zig"
        "$nix_shell"
        # "$conda"
        "$memory_usage"
        "$aws"
        # "$gcloud"
        # "$openstack"
        "$env_var"
        # "$crystal"
        # "$custom"
        "$cmd_duration"
        # "$line_break"
        # "$lua"
        "$jobs"
        # "$battery"
        "$time"
        "$line_break" # added
        "$status"
        # "$shell"
        "$character"
      ];
      git_branch.symbol = "🌱 ";
      git_commit.tag_disabled = false;
      git_status = {
        ahead = "⇡\${count}";
        behind = "⇣\${count}";
        diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
        staged = "+$count";
      };
      kubernetes.disabled = false;
      nix_shell = {
        format = "via [$symbol$state]($style) ";
        impure_msg = "ι";
        pure_msg = "﻿ρ";
        symbol = "❄️";
      };
      time.disabled = false;
    };
  };

}
