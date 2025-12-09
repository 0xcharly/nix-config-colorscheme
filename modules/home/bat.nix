{flake, ...}: let
  theme_name = "pixel";
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.bat = {
    config.theme = theme_name;
    themes.${theme_name} = builtins.readFile ./pixel.tmTheme;
  };
}
