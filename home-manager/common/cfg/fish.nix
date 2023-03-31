{ pkgs, ... }:

{
  programs.oh-my-posh = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fish = {
    enable = true;

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

}
