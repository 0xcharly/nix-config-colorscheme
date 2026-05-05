{ self, inputs, ... }:
let
  inherit (inputs.nixpkgs.lib) mkBefore;
  theme = self.lib.colorscheme.asHexStrings;
in
{
  flake.homeModules.tmux = with theme; {
    programs.tmux.extraConfig = mkBefore ''
      set -ogq @text "${on_surface_statusline}"
      set -ogq @text_session_name "${on_surface_statusline}"
      set -ogq @surface "${surface}"
      set -ogq @surface_statusline "${surface_statusline}"
      set -ogq @indicator_current "${accent_darkest}"
      set -ogq @indicator_last "${accent_dark}"
      set -ogq @indicator_inactive "${surface_statusline}"
    '';
  };
}
