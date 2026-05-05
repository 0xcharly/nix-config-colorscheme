{ self, inputs, ... }:
let
  inherit (inputs.nixpkgs.lib) concatStringsSep lists;
  theme = self.lib.colorscheme.asHexStrings;
in
{
  flake.homeModules.kitty =
    { pkgs, ... }:
    let
      content =
        with theme;
        ''
          # Basic colors
          background ${surface}
          foreground ${text}
          selection_background ${surface_visual}
          selection_foreground ${on_surface_visual}
          cursor ${surface_cursor}
          cursor_text_color ${on_surface_cursor}
          url_color ${text_link}

          # 16 terminal colors
        ''
        + concatStringsSep "\n" (
          map (index: "color${toString index} ${"terminal_color_${toString index}"}") (lists.range 0 15)
        );
    in
    {
      programs.kitty.extraConfig = ''
        include ${pkgs.writeText "pixel.conf" content}
      '';
    };
}
