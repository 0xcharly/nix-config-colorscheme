{
  vimUtils,
  writeText,
  rev,
  colorscheme,
  ...
}:
(vimUtils.buildVimPlugin {
  pname = "colorscheme-nvim";
  version = "0.0.1-${rev}";
  src = ./.;
}).overrideAttrs
  {
    colorscheme = writeText "colorscheme.lua" (import ./colorscheme.lua.nix colorscheme.asHexLiterals);

    buildPhase = ''
      mkdir -p $out/plugin
    '';

    installPhase = ''
      cp $colorscheme $out/plugin/init.lua
    '';
  }
