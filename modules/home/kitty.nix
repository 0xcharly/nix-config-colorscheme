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
        cursor ${theme.text}
        cursor_text_color ${theme.surface}
        url_color ${theme.text_link}

        # OS Window titlebar colors
        wayland_titlebar_color system
        macos_titlebar_color system

        # 16 terminal colors
      ''
      + lib.concatStringsSep "\n" (builtins.map (
        index: "color${toString index} ${theme."terminal_color_${toString index}"}"
      ) (lib.lists.range 0 15));
  in ''
    include ${pkgs.writeText "pixel.conf" content}
  '';
}
