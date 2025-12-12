{flake, ...}: let
  theme = flake.lib.colorscheme.asRgbLiterals;
in {
  wayland.windowManager.hyprland = {
    settings = {
      general = {
        "col.active_border" = theme.borders_active;
        "col.inactive_border" = theme.borders_inactive;
      };
      decoration.shadow = {
        color = theme.shadows_active;
        color_inactive = theme.shadows_inactive;
      };
      misc.background_color = theme.surface_dark;
      plugin.hy3.tabs = {
        "col.active" = theme.borders_active;
        "col.inactive" = theme.borders_inactive;
        "col.urgent" = theme.borders_urgent;
      };
    };
  };
}
