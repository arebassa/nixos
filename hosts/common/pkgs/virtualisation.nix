{ pkgs, ... }: {
  virtualisation = {
    docker.enable = true;
    # multipass.enable = true;
    libvirtd = {
      enable = true;
      allowedBridges = true;
      onBoot = "start";
      onShutdown = "suspend";
    };
  };

}
