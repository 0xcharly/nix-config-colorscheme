{flake, ...}: {lib, ...}: let
  theme = flake.lib.colorscheme.noPrefix;
in {
  console.colors = builtins.map (
    index: theme."terminal_color_${toString index}"
  ) (lib.lists.range 0 15);
}
