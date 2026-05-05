{ self, ... }:
let
  theme = self.lib.colorscheme.asRgbLiterals;
in
{
  flake.homeModules.hyprland = {
    wayland.windowManager.hyprland = {
      settings = with theme; {
        general = {
          "col.active_border" = borders_active;
          "col.inactive_border" = borders_inactive;
        };
        decoration.shadow = {
          color = shadows_active;
          color_inactive = shadows_inactive;
        };
        misc.background_color = surface_dark;
        plugin.hy3.tabs = {
          "col.active" = surface_active;
          "col.inactive" = surface_inactive;
          "col.focused" = surface_focused_inactive;
          "col.urgent" = surface_urgent;
          "col.active.border" = borders_active;
          "col.inactive.border" = borders_inactive;
          "col.focused.border" = borders_focused_inactive;
          "col.urgent.border" = borders_urgent;
        };
      };
    };
  };
}
