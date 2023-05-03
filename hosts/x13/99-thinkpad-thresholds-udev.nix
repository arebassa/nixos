{ lib, pkgs,... }:

let
  udevRules = lib.mkAfter ''
    # Change the permissions of the battery threshold attributes so that they can be modified by ordinary users
        ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_control_start_threshold", RUN+="/bin/chmod 666 /sys%p/charge_control_start_threshold"
        ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_control_end_threshold", RUN+="/bin/chmod 666 /sys%p/charge_control_end_threshold"
        ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_start_threshold", RUN+="/bin/chmod 666 /sys%p/charge_start_threshold"
        ACTION=="add|change", KERNEL=="BAT[0-1]", SUBSYSTEM=="power_supply", TEST{0002}!="/sys%p/charge_stop_threshold", RUN+="/bin/chmod 666 /sys%p/charge_stop_threshold"
  '';
in {
  services.udev.extraRules = udevRules;
  services.udev.packages = [ extraUdevRules extraHwdbFile ];
  services.udev.path =
    [ pkgs.coreutils pkgs.gnused pkgs.gnugrep pkgs.util-linux udev ];

}
