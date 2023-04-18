# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/shell/extensions/pop-shell/";
      saved-view = "/org/gnome/shell/extensions/pop-shell/";
      window-height = 1089;
      window-is-maximized = false;
      window-width = 936;
    };

    "org/blueman/general" = {
      window-properties = [ 730 528 0 0 ];
    };

    "org/blueman/plugins/powermanager" = {
      auto-power-on = "@mb true";
    };

    "org/blueman/plugins/recentconns" = {
      recent-connections = "[{'adapter': 'F4:26:79:CE:03:AF', 'address': '65:82:86:A8:4D:2F', 'alias': '65-82-86-A8-4D-2F', 'icon': 'blueman', 'name': 'Audio and input profiles', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1679417917.6529262'}, {'adapter': 'F4:26:79:CE:03:AF', 'address': 'D0:14:85:5E:27:AB', 'alias': 'D0-14-85-5E-27-AB', 'icon': 'blueman', 'name': 'Audio and input profiles', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1679417986.546906'}, {'adapter': 'F4:26:79:CE:03:AF', 'address': '57:F5:31:50:25:61', 'alias': '57-F5-31-50-25-61', 'icon': 'blueman', 'name': 'Audio and input profiles', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1679418691.4191337'}, {'adapter': 'F4:26:79:CE:03:AF', 'address': '62:79:C2:94:D2:2A', 'alias': '62-79-C2-94-D2-2A', 'icon': 'blueman', 'name': 'Audio and input profiles', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1679418734.680901'}]";
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/Console" = {
      last-window-size = mkTuple [ 652 457 ];
    };

    "org/gnome/Fractal" = {
      main-window-state-height = 640;
      main-window-state-maximized = false;
      main-window-state-width = 860;
      main-window-state-x = 26;
      main-window-state-y = 23;
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/TextEditor" = {
      highlight-current-line = true;
      last-save-directory = "file:///home/dustin/dev/nixos-x13";
      show-map = true;
      style-scheme = "Adwaita-dark";
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 936 560 ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/pixels-l.webp";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/pixels-d.webp";
      primary-color = "#967864";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      document-font-name = "Roboto Slab 11";
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      font-hinting = "full";
      font-name = "Fira Sans Semi-Light 10";
      gtk-theme = "Adwaita-dark";
      monospace-font-name = "FiraCode Nerd Font Mono 11";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-network-panel" "gnome-power-panel" "org-gnome-epiphany" "org-gnome-console" "firefox" "code" "google-chrome" "org-gnome-settings" "slack" "zoom" "element-desktop" ];
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/element-desktop" = {
      application-id = "element-desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/google-chrome" = {
      application-id = "google-chrome.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-epiphany" = {
      application-id = "org.gnome.Epiphany.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-wezfurlong-wezterm" = {
      application-id = "org.wezfurlong.wezterm.desktop";
    };

    "org/gnome/desktop/notifications/application/slack" = {
      application-id = "slack.desktop";
    };

    "org/gnome/desktop/notifications/application/zoom" = {
      application-id = "Zoom.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      natural-scroll = false;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 14;
      recent-files-max-age = 30;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/pixels-l.webp";
      primary-color = "#967864";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = true;
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      toggle-maximized = [ "<Super>m" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      titlebar-font = "Fira Sans Semi-Bold 10";
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 936 560 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = false;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>t";
      command = "/etc/profiles/per-user/dustin/bin/alacritty";
      name = "Open Alacritty";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 5400;
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "space-bar@luchrioh" ];
      enabled-extensions = [ "caffeine@patapon.info" "grand-theft-focus@zalckos.github.com" "gTile@vibou" "rounded-window-corners@yilozt" "thinkpad-battery-threshold@marcosdalvarez.org" "user-theme@gnome-shell-extensions.gcampax.github.com" "pop-shell@system76.com" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "43.2";
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 2;
    };

    "org/gnome/shell/extensions/gtile" = {
      auto-close-keyboard-shortcut = true;
      global-auto-tiling = false;
      theme = "Default";
      window-margin = 4;
      window-margin-fullscreen-enabled = true;
    };

    "org/gnome/shell/extensions/pop-shell" = {
      active-hint = true;
      active-hint-border-radius = mkUint32 5;
      fullscreen-launcher = true;
      gap-inner = mkUint32 4;
      gap-outer = mkUint32 4;
      hint-color-rgba = "rgba(82,148,226,0.8)";
      smart-gaps = true;
      tile-by-default = true;
    };

    "org/gnome/shell/extensions/rounded-window-corners" = {
      custom-rounded-corner-settings = "@a{sv} {}";
      enable-preferences-entry = true;
      global-rounded-corner-settings = "{'padding': <{'left': <uint32 9>, 'right': <uint32 2>, 'top': <uint32 2>, 'bottom': <uint32 2>}>, 'keep_rounded_corners': <{'maximized': <false>, 'fullscreen': <false>}>, 'border_radius': <uint32 16>, 'smoothing': <uint32 0>, 'enabled': <true>}";
      settings-version = mkUint32 5;
      skip-libadwaita-app = false;
    };

    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      enable-move-to-workspace-shortcuts = true;
    };

    "org/gnome/shell/extensions/thinkpad-battery-threshold" = {
      debug-mode = true;
      indicator-mode = "ACTIVE";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "";
    };

    "org/gnome/shell/keybindings" = {
      toggle-message-tray = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 169;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-size = mkTuple [ 888 374 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 189;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 358 141 ];
      window-size = mkTuple [ 1203 902 ];
    };

    "system/proxy" = {
      mode = "none";
    };

  };
}
