{ self, ... }:
let
  theme = self.lib.colorscheme.asHexStrings;
in
{
  flake.homeModules.sway = {
    wayland.windowManager.sway = with theme; {
      config.colors = {
        focused = {
          border = borders_active;
          text = borders_active;
          indicator = borders_active;
          childBorder = borders_active;
          background = surface_active;
        };
        focusedInactive = {
          border = borders_focused_inactive;
          text = borders_focused_inactive;
          indicator = borders_focused_inactive;
          childBorder = borders_focused_inactive;
          background = surface_focused_inactive;
        };
        unfocused = {
          border = borders_inactive;
          text = borders_inactive;
          indicator = borders_inactive;
          childBorder = borders_inactive;
          background = surface_inactive;
        };
        urgent = {
          border = borders_urgent;
          text = borders_urgent;
          indicator = borders_urgent;
          childBorder = borders_urgent;
          background = surface_urgent;
        };
        placeholder = {
          border = borders;
          text = borders;
          indicator = borders;
          childBorder = borders;
          background = surface_dark;
        };
      };
      extraConfig = ''
        shadow_color ${shadows_active}
        shadow_inactive_color ${shadows_inactive}
      '';
    };
  };
}
