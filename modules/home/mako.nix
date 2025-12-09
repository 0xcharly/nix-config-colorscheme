{flake, ...}: {pkgs, ...}: let
  theme = flake.lib.colorscheme.hasHexStrings;
in {
  config.services.mako.settings.include = pkgs.writeText "pixel.theme" ''
    background-color=${theme.surface}
    text-color=${theme.text}
    border-color=${theme.text_blue}
    progress-color=over ${theme.surface_cursorline}

    [urgency=high]
    border-color=${theme.text_red}
  '';
}
