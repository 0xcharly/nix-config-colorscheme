{ flake, ... }:
let
  theme = flake.lib.colorscheme.noPrefix;
  no-color = "00000000";
in
{
  programs.swaylock.settings = {
    color = theme.surface;
    bs-hl-color = theme.text_rose;
    caps-lock-bs-hl-color = theme.text_rose;
    caps-lock-key-hl-color = theme.text_green;
    inside-color = theme.surface;
    inside-clear-color = theme.surface_blue;
    inside-caps-lock-color = theme.surface_amber;
    inside-ver-color = theme.surface_violet;
    inside-wrong-color = theme.surface_red;
    key-hl-color = theme.text_green;
    layout-bg-color = no-color;
    layout-border-color = no-color;
    layout-text-color = theme.text;
    line-color = no-color;
    line-clear-color = no-color;
    line-caps-lock-color = no-color;
    line-ver-color = no-color;
    line-wrong-color = no-color;
    ring-color = theme.borders;
    ring-clear-color = theme.on_surface_blue;
    ring-caps-lock-color = theme.on_surface_amber;
    ring-ver-color = theme.on_surface_violet;
    ring-wrong-color = theme.on_surface_red;
    separator-color = no-color;
    text-color = theme.text;
    text-clear-color = theme.on_surface_blue;
    text-caps-lock-color = theme.on_surface_amber;
    text-ver-color = theme.on_surface_violet;
    text-wrong-color = theme.on_surface_red;
  };
}
