# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "secret-service:///org/freedesktop/secrets/collection/login" ];
    };

    "apps/seahorse/windows/key-manager" = {
      height = 476;
      width = 600;
    };

    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/evolution-data-server/calendar/reminders-past";
      saved-view = "/org/gnome/evolution-data-server/";
      window-height = 1329;
      window-is-maximized = false;
      window-width = 840;
    };

    "com/github/bleakgrey/tootle" = {
      dark-theme = true;
      live-updates = false;
      post-text-size = 130;
      window-h = 1376;
      window-w = 696;
      window-x = 26;
      window-y = 23;
    };

    "com/raggesilver/BlackBox" = {
      cursor-blink-mode = mkUint32 1;
      easy-copy-paste = true;
      floating-controls = false;
      font = "DroidSansM Nerd Font 20";
      headerbar-drag-area = false;
      headerbar-draw-line-single-tab = false;
      show-headerbar = true;
      terminal-padding = mkTuple [ mkUint32 24 mkUint32 24 ];
      theme-dark = "base16: Twilight (dark)";
      window-height = mkUint32 1376;
      window-width = mkUint32 1696;
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
      compose-as-html = true;
      formatting-toolbar-visible = false;
      migrated-config = true;
      window-height = 1376;
      window-width = 740;
    };

    "org/gnome/TextEditor" = {
      highlight-current-line = true;
      last-save-directory = "file:///home/dustin/dev/nixos-x13";
      show-map = true;
      style-scheme = "Adwaita-dark";
    };

    "org/gnome/Weather" = {
      locations = "[<(uint32 2, <('Vancouver', 'CYVR', true, [(0.85841109795478021, -2.1496638678574467)], [(0.85957465660720722, -2.1490820798045869)])>)>]";
    };

    "org/gnome/boxes" = {
      first-run = false;
      view = "icon-view";
      window-maximized = false;
      window-position = [ 26 23 ];
      window-size = [ 1696 1376 ];
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = false;
      window-size = mkTuple [ 840 680 ];
    };

    "org/gnome/clocks" = {
      world-clocks = "[{'location': <(uint32 2, <('Calgary', 'CYYC', true, [(0.89215414179553232, -1.9899662412999655)], [(0.89157235374267252, -1.9911297824991001)])>)>}, {'location': <(uint32 2, <('Saskatoon', 'CYXE', true, [(0.91048009894147275, -1.8619754178515198)], [(0.90989831088861295, -1.8616845412783825)])>)>}, {'location': <(uint32 2, <('Toronto', 'CYTZ', true, [(0.76154532446909495, -1.3857914260834978)], [(0.76212711252195475, -1.3860823201099277)])>)>}, {'location': <(uint32 2, <('Melbourne', 'YMML', true, [(-0.65740735740229495, 2.5278185274873568)], [(-0.6600253512802865, 2.5301456447922108)])>)>}]";
    };

    "org/gnome/clocks/state/window" = {
      maximized = false;
      panel-id = "world";
      size = mkTuple [ 3440 1408 ];
    };

    "org/gnome/control-center" = {
      last-panel = "online-accounts";
      window-state = mkTuple [ 840 1376 ];
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

    "org/gnome/desktop/notifications/application/1password" = {
      application-id = "1password.desktop";
    };

    "org/gnome/desktop/notifications/application/chrome-cifhbcnohmdccbgoicgdjpfamggdegmo-default" = {
      application-id = "chrome-cifhbcnohmdccbgoicgdjpfamggdegmo-Default.desktop";
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/com-github-bleakgrey-tootle" = {
      application-id = "com.github.bleakgrey.tootle.desktop";
    };

    "org/gnome/desktop/notifications/application/dev-geopjr-tuba" = {
      application-id = "dev.geopjr.Tuba.desktop";
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

    "org/gnome/desktop/notifications/application/microsoft-edge-beta" = {
      application-id = "microsoft-edge-beta.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-boxes" = {
      application-id = "org.gnome.Boxes.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-epiphany" = {
      application-id = "org.gnome.Epiphany.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-evolution-alarm-notify" = {
      application-id = "org.gnome.Evolution-alarm-notify.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-geary" = {
      application-id = "org.gnome.Geary.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-texteditor" = {
      application-id = "org.gnome.TextEditor.desktop";
    };

    "org/gnome/desktop/notifications/application/org-wezfurlong-wezterm" = {
      application-id = "org.wezfurlong.wezterm.desktop";
    };

    "org/gnome/desktop/notifications/application/rocketchat-desktop" = {
      application-id = "rocketchat-desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/slack" = {
      application-id = "slack.desktop";
    };

    "org/gnome/desktop/notifications/application/todoist-electron" = {
      application-id = "todoist-electron.desktop";
    };

    "org/gnome/desktop/notifications/application/zoom" = {
      application-id = "Zoom.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
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
      button-layout = ":";
      titlebar-font = "Fira Sans Semi-Bold 10";
    };

    "org/gnome/eog/ui" = {
      sidebar = false;
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

    "org/gnome/evolution" = {
      version = "3.48.1";
    };

    "org/gnome/evolution/calendar" = {
      week-start-day-name = "monday";
      work-day-friday = true;
      work-day-monday = true;
      work-day-saturday = false;
      work-day-sunday = false;
      work-day-thursday = true;
      work-day-tuesday = true;
      work-day-wednesday = true;
    };

    "org/gnome/evolution/mail" = {
      browser-close-on-reply-policy = "ask";
      forward-style-name = "attached";
      headers-collapsed = false;
      image-loading-policy = "never";
      junk-check-custom-header = true;
      junk-empty-on-exit-days = 0;
      junk-lookup-addressbook = false;
      paned-size = 1726315;
      reply-style-name = "quoted";
      to-do-bar-width = 1342080;
      trash-empty-on-exit-days = 0;
    };

    "org/gnome/evolution/plugin/autocontacts" = {
      addressbook-source = "system-address-book";
      gaim-addressbook-source = "system-address-book";
    };

    "org/gnome/evolution/shell/window" = {
      height = 1329;
      maximized = false;
      width = 1696;
      x = 26;
      y = 23;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 513;
      window-width = 1384;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = false;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/list-view" = {
      use-tree-view = true;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
      show-create-link = true;
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1920 1168 ];
    };

    "org/gnome/portal/filechooser/com/visualstudio/code" = {
      last-folder-path = "/home/dustin/dev/nixos";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
      screensaver = [ "<Super>l" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>t";
      command = "/run/current-system/sw/bin/blackbox";
      name = "Open Blackbox";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "Print";
      command = "/etc/profiles/per-user/dustin/bin/flameshot gui";
      name = "Flameshot";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Control><Alt>x";
      command = "/run/current-system/sw/bin/xkill";
      name = "xkill";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 5400;
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "space-bar@luchrioh" "thinkpad-battery-threshold@marcosdalvarez.org" ];
      enabled-extensions = [ "caffeine@patapon.info" "grand-theft-focus@zalckos.github.com" "gTile@vibou" "rounded-window-corners@yilozt" "pop-shell@system76.com" "hidetopbar@mathieu.bidon.ca" "gtktitlebar@velitasali.github.io" "trayIconsReloaded@selfmade.pl" "appindicatorsupport@rgcjonas.gmail.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "quick-settings-audio-panel@rayzeq.github.io" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "43.2";
    };

    "org/gnome/shell/extensions/appindicator" = {
      legacy-tray-enabled = false;
    };

    "org/gnome/shell/extensions/auto-move-windows" = {
      application-list = [ "1password.desktop:5" "slack.desktop:2" "rocketchat-desktop.desktop:3" "chrome-cifhbcnohmdccbgoicgdjpfamggdegmo-Default.desktop:3" "code.desktop:4" "todoist-electron.desktop:2" ];
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 3;
    };

    "org/gnome/shell/extensions/gtile" = {
      auto-close-keyboard-shortcut = true;
      global-auto-tiling = false;
      theme = "Default";
      window-margin = 4;
      window-margin-fullscreen-enabled = true;
    };

    "org/gnome/shell/extensions/gtktitlebar" = {
      hide-window-titlebars = "always";
      restrict-to-primary-screen = true;
    };

    "org/gnome/shell/extensions/hidetopbar" = {
      keep-round-corners = true;
      mouse-sensitive = true;
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

    "org/gnome/shell/extensions/quick-settings-audio-panel" = {
      always-show-input-slider = true;
      create-mixer-sliders = false;
      media-control = "duplicate";
      merge-panel = true;
      ordering = [ "mixer" "volume-input" "volume-output" "media" ];
      panel-position = "bottom";
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

    "org/gnome/shell/extensions/trayIconsReloaded" = {
      applications = "[{\"id\":\"1password.desktop\"}]";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "";
    };

    "org/gnome/shell/keybindings" = {
      show-screenshot-ui = [ "<Shift><Control><Alt>p" ];
      toggle-message-tray = [];
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = "[<(uint32 2, <('Vancouver', 'CYVR', true, [(0.85841109795478021, -2.1496638678574467)], [(0.85957465660720722, -2.1490820798045869)])>)>]";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "[<(uint32 2, <('Calgary', 'CYYC', true, [(0.89215414179553232, -1.9899662412999655)], [(0.89157235374267252, -1.9911297824991001)])>)>, <(uint32 2, <('Saskatoon', 'CYXE', true, [(0.91048009894147275, -1.8619754178515198)], [(0.90989831088861295, -1.8616845412783825)])>)>, <(uint32 2, <('Toronto', 'CYTZ', true, [(0.76154532446909495, -1.3857914260834978)], [(0.76212711252195475, -1.3860823201099277)])>)>, <(uint32 2, <('Melbourne', 'YMML', true, [(-0.65740735740229495, 2.5278185274873568)], [(-0.6600253512802865, 2.5301456447922108)])>)>]";
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1684971684;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1684978821;
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
      view-type = "list";
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

    "org/virt-manager/virt-manager" = {
      manager-window-height = 1339;
      manager-window-width = 1060;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = false;
      forcepoweroff = true;
      unapplied-dev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu+ssh://dustin@192.168.168.1/system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu+ssh://dustin@192.168.168.1/system" ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/paths" = {
      media-default = "/home/dustin/Downloads";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/var/lib/libvirt/images/nixos-gnome-22.11.2568.c43f676c938-x86_64-linux.iso" "/home/dustin/Downloads/nixos-gnome-22.11.4256.628d4bb6e9f-x86_64-linux.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/23635ab1c2e44fa09d42e52a5fa5d023" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1196 1339 ];
    };

    "org/virt-manager/virt-manager/vms/242298d7b5ec4d4a98c29e8e392de056" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1060 658 ];
    };

    "org/virt-manager/virt-manager/vms/3127851e656a436bac457631e56b1fbc" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 3440 1371 ];
    };

    "org/virt-manager/virt-manager/vms/5664e4e61716483d83327edc52fb91a3" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 660 707 ];
    };

    "org/virt-manager/virt-manager/vms/77e8887adb00417dab243851288fa31c" = {
      autoconnect = 1;
      console-username = "";
      resize-guest = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1024 810 ];
    };

    "org/virt-manager/virt-manager/vms/b7c6759f86ae4353b70259b96bba4952" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 940 658 ];
    };

    "org/virt-manager/virt-manager/vms/fd423394f55d4b0c8b8714c10386cfa3" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1228 658 ];
    };

    "system/proxy" = {
      mode = "none";
    };

  };
}
