{
  pkgs,
  pname,
  ...
}:
with pkgs;
  vimUtils.buildVimPlugin
  {
    inherit pname;
    version = "dev";
    src = ./.;
  }
