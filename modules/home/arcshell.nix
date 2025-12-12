{flake, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.arcshell.settings.theme = {
    palette = {
      text = theme.text;
      surface = theme.surface;
      inner_border = theme.borders_desktop_shell;
      inner_border_shadow = theme.shadows_desktop_shell;

      surface_red = theme.surface_red;
      on_surface_red = theme.on_surface_red;

      surface_orange = theme.surface_amber;
      on_surface_orange = theme.on_surface_amber;

      surface_blue = theme.surface_blue;
      on_surface_blue = theme.on_surface_blue;

      surface_purple = theme.surface_violet;
      on_surface_purple = theme.on_surface_violet;

      slider_active_track = theme.on_surface_violet;
      slider_inactive_track = theme.surface_violet;
      slider_thumb = theme.on_surface_violet;
    };
  };
}
