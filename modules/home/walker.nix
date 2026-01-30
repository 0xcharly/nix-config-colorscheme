{ flake, ... }:
let
  theme = flake.lib.colorscheme.asHexStrings;
in
{
  services.walker.theme = {
    name = "pixel";
    layout = fromTOML (builtins.readFile ./walker-layout.toml);
    style = import ./walker-style.css.nix theme;
  };
}
