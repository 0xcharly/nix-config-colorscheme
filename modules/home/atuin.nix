{flake, ...}: {pkgs, ...}: let
  theme_name = "pixel";
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.atuin.settings.theme.name = theme_name;
  xdg.configFile."atuin/themes/${theme_name}.toml".source = (pkgs.formats.toml {}).generate "pixel.theme" {
    theme.name = theme_name;
    colors = {
      AlertError = theme.text_error;
      AlertInfo = theme.text_ok;
      AlertWarn = theme.text_warning;
      Annotation = theme.text_info;
      Base = theme.text;
      Guidance = theme.text_comment;
      Important = theme.text_red;
      Title = theme.text_title;
    };
  };
}
