{ self, ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      packages.colorscheme-nvim = pkgs.callPackage ./_colorscheme-nvim {
        rev = self.rev or self.dirtyRev;
        colorscheme = self.lib.colorscheme;
      };
    };
}
