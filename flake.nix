{
  description = "NixOS configuration for Dustin Krysak";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    inputs@{ self, nixpkgs, home-manager, nixos-hardware, sops-nix, ... }: {
      nixosConfigurations = {
        # dustin-krysak = work laptop hostname
        dustin-krysak = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            sops-nix.nixosModules.sops
            ./hosts/x13/configuration.nix
            nixos-hardware.nixosModules.lenovo-thinkpad-x13-yoga
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.dustin = {
                imports =
                  [ ./home-manager/home.nix sops-nix.homeManagerModule ];
              };

              # Allow unfree packages
              nixpkgs.config.allowUnfree = true;

              # Optionally, use home-manager.extraSpecialArgs to pass
              # arguments to home.nix
            }
          ];
        };
        # tower = desktop hostname
        tower = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/tower/configuration.nix
            # nixos-hardware.nixosModules.lenovo-thinkpad-x13-yoga
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.dustin = import ./home-manager/home.nix;

              # Allow unfree packages
              nixpkgs.config.allowUnfree = true;

              # Optionally, use home-manager.extraSpecialArgs to pass
              # arguments to home.nix
            }
          ];
        };
      };
    };
}
