{ self, inputs, ... }:
let
  inherit (inputs.nixpkgs.lib) lists;
  theme = self.lib.colorscheme.noPrefix;
in
{
  flake.nixosModules.console = {
    console.colors = map (index: theme."terminal_color_${toString index}") (lists.range 0 15);
  };
}
