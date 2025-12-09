{flake, ...}: {lib, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.tmux.extraConfig = lib.mkBefore ''
    set -g @text "${theme.text}"
    set -g @text_variant_dim "${theme.text_variant_dim}"
    set -g @text_violet "${theme.text_violet}"
    set -g @surface "${theme.surface}"
    set -g @surface_cursorline "${theme.surface_cursorline}"
    set -g @surface_menu "${theme.surface_menu}"
  '';
}
