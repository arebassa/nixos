{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      
      # Enable true color support
      env.TERM = "alacritty";
      dynamic_title: true;
      dynamic_padding: true;
      scrolling = {
        history = 10000;
        multiplier = 3;
      };

      bell = {
        animation = "EaseOutQuart";
        duration = 100;
        color = "0x404040";
      };

      cursor = {
        style = "Block";
        unfocused_hollow = true;
        blinking: "Always";
      };

      colors = {
        primary = {
          background = "#2d2d2d";
          foreground = "#e7e6e6";
          dim_foreground = "#b2b2b2";
        };
        cursor = {
          text = "#2d2d2d";
          cursor = "#e7e6e6";
        };
        vi_mode_cursor = {
          text = "#2d2d2d";
          cursor = "#e7e6e6";
        };
        selection = {
          text = "CellForeground";
          background = "#555555";
        };
        search = {
          matches = {
            foreground = "CellBackground";
            background = "#707070";
          };
          footer_bar = {
            background = "#2d2d2d";
            foreground = "#e7e6e6";
          };
        };
        normal = {
          black = "#2d2d2d";
          red = "#cc6666";
          green = "#b5bd68";
          yellow = "#f0c674";
          blue = "#81a2be";
          magenta = "#b294bb";
          cyan = "#8abeb7";
          white = "#ffffff";
        };
        bright = {
          black = "#555555";
          red = "#cc6666";
          green = "#b5bd68";
          yellow = "#f0c674";
          blue = "#81a2be";
          magenta = "#b294bb";
          cyan = "#8abeb7";
          white = "#ffffff";
        };
        dim = {
          black = "#1d1d1d";
          red = "#944b4b";
          green = "#727a17";
          yellow = "#b88800";
          blue = "#47597f";
          magenta = "#75507b";
          cyan = "#4d7b72";
          white = "#858585";
        };
      };
      window = {
        decorations = "full";
        startup_mode = "Windowed";
      };

      font = {
        normal = {
          family = "Fira Code";
          style = "Regular";
        };
        bold = {
          family = "Fira Code";
          style = "Bold";
        };
        italic = {
          family = "Fira Code";
          style = "Italic";
        };
        bold_italic = {
          family = "Fira Code";
          style = "Bold Italic";
        };
        size = 18;
      };

      key_bindings = [
        {
          key = "V";
          mods = "Control|Shift";
          action = "Paste";
        }
        {
          key = "C";
          mods = "Control|Shift";
          action = "Copy";
        }
        {
          key = "Up";
          mods = "Control|Shift";
          action = "ScrollPageUp";
        }
        {
          key = "Down";
          mods = "Control|Shift";
          action = "ScrollPageDown";
        }
      ];
    };
  };
}
