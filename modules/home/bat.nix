# Theme inspired from https://github.com/catppuccin/bat
# MIT License: Copyright (c) 2021 Catppuccin

{ flake, ... }:
let
  theme_name = "pixel";
  theme = flake.lib.colorscheme.asHexStrings;
in
{
  programs.bat = {
    config.theme = theme_name;
    themes.${theme_name}.src = ./pixel.tmTheme;
  };
}
