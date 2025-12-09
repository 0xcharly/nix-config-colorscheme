{flake, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  wayland.windowManager.hyprland = {
    settings = {
      general = {
        "col.active_border" = "rgb(d98b3e)";
        "col.inactive_border" = "rgb(41a9d4)";
      };
      decoration.shadow = {
        color = "rgb(a34e19)";
        color_inactive = "rgb(2e5f9e)";
      };
      misc.background_color = theme.surface_dark;
      plugin.hy3.tabs = {
        "col.active" = theme.text_blue;
        "col.inactive" = theme.borders;
        "col.urgent" = theme.text_red;
      };
    };
  };
}
