# Theme inspired from https://github.com/catppuccin/bat
# MIT License: Copyright (c) 2021 Catppuccin

{ self, ... }:
let
  theme_name = "pixel";
in
{
  flake.homeModules.bat = {
    programs.bat = {
      config.theme = theme_name;
      # TODO: Create theme file from template.
      themes.${theme_name}.src = ./pixel.tmTheme;
    };
  };
}
