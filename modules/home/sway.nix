{flake, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  wayland.windowManager.sway = {
    config.colors = {
      focused = {
        border = theme.borders_active;
        text = theme.borders_active;
        indicator = theme.borders_active;
        childBorder = theme.borders_active;
      };
      focusedInactive = {
        border = theme.borders_focused_inactive;
        text = theme.borders_focused_inactive;
        indicator = theme.borders_focused_inactive;
        childBorder = theme.borders_focused_inactive;
      };
      unfocused = {
        border = theme.borders_inactive;
        text = theme.borders_inactive;
        indicator = theme.borders_inactive;
        childBorder = theme.borders_inactive;
      };
      urgent = {
        border = theme.borders_urgent;
        text = theme.borders_urgent;
        indicator = theme.borders_urgent;
        childBorder = theme.borders_urgent;
      };
      placeholder = {
        border = theme.borders;
        text = theme.borders;
        indicator = theme.borders;
        childBorder = theme.borders;
      };
    };
  };
  extraConfig = ''
    shadow_color ${theme.shadows_active}
    shadow_inactive_color ${theme.shadows_inactive}
  '';
}
