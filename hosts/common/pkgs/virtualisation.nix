{ pkgs, ... }: {
  virtualisation = {
    docker.enable = true;
    # multipass.enable = true;
    libvirtd = {
      enable = true;
      # allowedBridges = "virbr0";
      onBoot = "start";
      onShutdown = "suspend";
    };
  };

}
