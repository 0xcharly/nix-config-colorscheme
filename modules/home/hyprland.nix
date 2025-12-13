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
        "col.active" = theme.surface_active;
        "col.inactive" = theme.surface_inactive;
        "col.focused" = theme.surface_focused_inactive;
        "col.urgent" = theme.surface_urgent;
        "col.active.border" = theme.borders_active;
        "col.inactive.border" = theme.borders_inactive;
        "col.focused.border" = theme.borders_focused_inactive;
        "col.urgent.border" = theme.borders_urgent;
      };
    };
  };
}
