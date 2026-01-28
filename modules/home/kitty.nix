{flake, ...}: {
  lib,
  pkgs,
  ...
}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  programs.kitty.extraConfig = let
    content =
      ''
        # Basic colors
        background ${theme.surface}
        foreground ${theme.text}
        selection_background ${theme.surface_visual}
        selection_foreground ${theme.on_surface_visual}
        cursor ${theme.surface_cursor}
        cursor_text_color ${theme.text_cursor}
        url_color ${theme.text_link}

        # 16 terminal colors
      ''
      + lib.concatStringsSep "\n" (map (
        index: "color${toString index} ${theme."terminal_color_${toString index}"}"
      ) (lib.lists.range 0 15));
  in ''
    include ${pkgs.writeText "pixel.conf" content}
  '';
}
