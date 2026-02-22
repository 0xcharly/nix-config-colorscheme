{ flake, ... }:
{ lib, ... }:
let
  theme = flake.lib.colorscheme.asHexStrings;
in
{
  programs.tmux.extraConfig = lib.mkBefore ''
    set -ogq @text "${theme.text}"
    set -ogq @text_session_name "${theme.on_surface_statusline_dimmer}"
    set -ogq @surface "${theme.surface}"
    set -ogq @surface_statusline "${theme.surface_statusline}"
    set -ogq @indicator_current "${theme.accent_darkest}"
    set -ogq @indicator_last "${theme.accent}"
    set -ogq @indicator_inactive "${theme.surface_statusline}"
  '';
}
