{flake, ...}: {lib, ...}: let
  theme_name = "pixel";
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.ghostty = {
    themes = {
      ${theme_name} = {
        background = theme.surface;
        foreground = theme.text;
        selection-background = theme.surface_visual;
        selection-foreground = theme.on_surface_visual;
        cursor-color = theme.text;
        palette = builtins.map (
          index: "${toString index}=${theme."terminal_color_${toString index}"}"
        ) (lib.lists.range 0 15);
      };
    };
    settings.theme = theme_name;
  };
}
