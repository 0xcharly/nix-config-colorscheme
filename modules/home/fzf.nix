{flake, ...}: let
  theme = flake.lib.colorscheme.hasHexStrings;
in {
  programs.fzf.colors = {
    "bg+" = theme.surface_cursorline;
    "fg+" = theme.text_title;
    "hl+" = theme.text_sky;
    bg = theme.surface;
    border = theme.borders;
    disabled = theme.text_variant_dimmer;
    fg = theme.text;
    gutter = theme.surface;
    header = theme.text_cyan;
    hl = theme.text_blue;
    info = theme.text_amber;
    marker = theme.text_emerald;
    pointer = theme.text_violet;
    prompt = theme.text_blue;
    query = theme.text;
    separator = theme.borders;
    spinner = theme.text_violet;
  };
}
