{flake, ...}: {lib, ...}: let
  themeFile = "pixel";
  theme = flake.lib.colorscheme.asHexStrings;
in {
  xdg.configFile."kitty/themes/${themeFile}.conf".text =
    ''
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
    ''
    + lib.concatStringsSep "\n" (builtins.map (
      index: "color${toString index} ${theme."terminal_color_${toString index}"}"
    ) (lib.lists.range 0 15));

  programs.kitty = {inherit themeFile;};
}
