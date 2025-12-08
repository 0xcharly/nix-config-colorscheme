{inputs, ...}: let
  inherit (inputs.nixpkgs) lib;
  inherit (inputs.nix-math.lib) math;
in rec {
  colorscheme = import ./colorscheme.nix lib oklch rgb theme;
  oklch = import ./oklch.nix lib math;
  palette = import ./palette.nix;
  rgb = import ./rgb.nix lib math;
  theme = import ./theme.nix palette;
}
