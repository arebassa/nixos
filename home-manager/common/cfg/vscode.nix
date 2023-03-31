{ pkgs, ... }: {
  programs = {
    vscode = {
      enable = true;
      extensions = [ 
        "EditorConfig.EditorConfig"
        "akmittal.hugofy"
        ];
    };

  };
}
