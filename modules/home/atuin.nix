# Theme inspired from https://github.com/catppuccin/atuin
# MIT License: Copyright (c) 2021 Catppuccin

{ self, ... }:
let
  theme_name = "pixel";
  theme = self.lib.colorscheme.asHexStrings;
in
{
  flake.homeModules.atuin =
    { pkgs, ... }:
    {
      programs.atuin.settings.theme.name = theme_name;
      xdg.configFile."atuin/themes/${theme_name}.toml".source =
        (pkgs.formats.toml { }).generate "${theme_name}.theme"
          {
            theme.name = theme_name;
            colors = with theme; {
              AlertError = text_error;
              AlertInfo = text_ok;
              AlertWarn = text_warning;
              Annotation = text_info;
              Base = text;
              Guidance = text_comment;
              Important = text_red;
              Title = text_title;
            };
          };
    };
}
