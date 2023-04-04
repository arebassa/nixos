{ pkgs, ... }: {
  programs = {
    ncspot = {
      enable = true;
      settings = {
        notify = true;
        use_nerdfont = true;
        theme = {
          background = "black";
          primary = "light white";
          secondary = "light black";
          title = "green";
          playing = "green";
          playing_selected = "light green";
          playing_bg = "black";
          highlight = "light white";
          highlight_bg = "#484848";
          error = "light white";
          error_bg = "red";
          statusbar = "black";
          statusbar_progress = "green";
          statusbar_bg = "green";
          cmdline = "light white";
          cmdline_bg = "black";
          search_match = "light red";
        };
      };
    };
  };
}
