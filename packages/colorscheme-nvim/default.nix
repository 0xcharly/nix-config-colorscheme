{
  flake,
  pkgs,
  pname,
  ...
}:
with pkgs;
  (vimUtils.buildVimPlugin
    {
      inherit pname;
      version = "0.0.1-${flake.rev or flake.dirtyRev}";
      src = ./.;
    }).overrideAttrs {
    colorscheme = pkgs.writeText "colorscheme.lua" (
      import ./colorscheme.lua.nix flake.lib.colorscheme.asHexLiterals
    );

    buildPhase = ''
      mkdir -p $out/nvim/plugin
    '';

    installPhase = ''
      cp $colorscheme $out/nvim/plugin/init.lua
    '';
  }
