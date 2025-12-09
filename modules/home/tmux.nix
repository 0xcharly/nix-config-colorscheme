{flake, ...}: {lib, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.tmux.extraConfig = lib.mkBefore ''
    set -ogq @text "${theme.text}"
    set -ogq @text_variant_dim "${theme.text_variant_dim}"
    set -ogq @text_violet "${theme.text_violet}"
    set -ogq @surface "${theme.surface}"
    set -ogq @surface_cursorline "${theme.surface_cursorline}"
    set -ogq @surface_menu_cursorline "${theme.surface_menu_cursorline}"
  '';
}
