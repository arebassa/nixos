{ config, lib, pkgs, ... }:

let inherit (lib) mkDefault mkIf mkMerge mkOption types;
in {

  services.udev.extraRules = ''
    # Change the permissions of the battery threshold attributes so that they can be modified by ordinary users

    ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_control_start_threshold", RUN+="/run/current-system/sw/bin/chmod 666 /sys%p/charge_control_start_threshold"
    ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_control_end_threshold", RUN+="/run/current-system/sw/bin/chmod 666 /sys%p/charge_control_end_threshold"
    ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_start_threshold", RUN+="/run/current-system/sw/bin/chmod 666 /sys%p/charge_start_threshold"
    ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_stop_threshold", RUN+="/run/current-system/sw/bin/chmod 666 /sys%p/charge_stop_threshold"
  '';

}
