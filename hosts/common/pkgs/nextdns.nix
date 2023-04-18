{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    nextdns
  ];
  # NextDNS
  # NOTE - need to run `sudo nextdns activate` once
  services.nextdns = {
    enable = true;
    arguments = [ "-profile" "81aec9" "-cache-size" "10MB" ];
  };

  # Tweak to account for the above
  systemd.services.nextdns-activate = {
    script = ''
      /run/current-system/sw/bin/nextdns activate
    '';
    after = [ "nextdns.service" ];
    wantedBy = [ "multi-user.target" ];
  };
}
