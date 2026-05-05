{ self, inputs, ... }:
let
  inherit (inputs.nixpkgs.lib) lists;
  theme_name = "pixel";
  theme = self.lib.colorscheme.asHexStrings;
in
{
  flake.homeModules.ghostty = {
    programs.ghostty = {
      themes = {
        ${theme_name} = with theme; {
          background = surface;
          foreground = text;
          selection-background = surface_visual;
          selection-foreground = on_surface_visual;
          cursor-color = surface_cursor;
          palette = map (index: "${toString index}=${"terminal_color_${toString index}"}") (lists.range 0 15);
        };
      };
      settings.theme = theme_name;
    };
  };
}
