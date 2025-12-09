{flake, ...}: let
  theme = flake.lib.colorscheme.hasHexStrings;
in {
  config.services.mako.settings = {
    background-color = theme.surface;
    text-color = theme.text;
    border-color = theme.text_blue;
    progress-color = theme.surface_cursorline;

    "urgency=high".border-color = theme.text_red;
  };
}
