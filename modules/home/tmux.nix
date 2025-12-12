{flake, ...}: {lib, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.tmux.extraConfig = lib.mkBefore ''
    set -ogq @text "${theme.text}"
    set -ogq @text_session_name "${theme.text_variant_dim}"
    set -ogq @surface "${theme.surface}"
    set -ogq @surface_statusline "${theme.surface_cursorline}"
    set -ogq @indicator_current "${theme.accent_darkest}"
    set -ogq @indicator_last "${theme.text_variant_conceal}"
    set -ogq @indicator_inactive "${theme.surface_cursorline}"
  '';
}
