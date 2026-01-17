{flake, ...}: {pkgs, ...}: let
  theme = flake.lib.colorscheme.asHexStrings;
in {
  services.walker.theme = {
    name = "pixel";
    layout = builtins.fromTOML (builtins.readFile ./walker-layout.toml);
    style = pkgs.replaceVars ./walker-style.css theme;
  };
}
