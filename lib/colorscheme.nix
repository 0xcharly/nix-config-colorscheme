{ inputs, ... }:
let
  inherit (inputs.nixpkgs.lib.attrsets) mapAttrs;
  inherit (inputs.nixpkgs.lib.trivial) id;

  theme = import ./_theme.nix;
  toHex = import ./_rgb.nix inputs;
  toRgb = import ./_oklch.nix inputs;
  mapThemeAttrs = fn: mapAttrs (_: value: fn (toHex (toRgb value)));
in
{
  flake.lib.colorscheme = {
    asHexLiterals = mapThemeAttrs (value: "0x${value}") theme;
    asHexStrings = mapThemeAttrs (value: "#${value}") theme;
    asRgbLiterals = mapThemeAttrs (value: "rgb(${value})") theme;
    noPrefix = mapThemeAttrs id theme;
  };
}
