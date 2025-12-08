{flake, ...}: let
  theme_name = "pixel";
  theme = flake.lib.colorscheme.noPrefix;
in {
  xdg.configFile."fish/themes/${theme_name}.theme".text = ''
    # name: '${theme_name}'
    # url: 'https://github.com/0xcharly/nix-config-colorscheme'
    # preferred_background: ${theme.surface}

    fish_color_normal ${theme.text}
    fish_color_command ${theme.text_sky}
    fish_color_param ${theme.text_rose}
    fish_color_keyword ${theme.text_violet}
    fish_color_quote ${theme.text_green}
    fish_color_redirection ${theme.text_pink}
    fish_color_end ${theme.text_orange}
    fish_color_comment ${theme.text_comment}
    fish_color_error ${theme.text_red}
    fish_color_gray ${theme.text_dimmer}
    fish_color_selection --background=${theme.surface_visual}
    fish_color_search_match --background=${theme.surface_search}
    fish_color_option ${theme.text_green}
    fish_color_operator ${theme.text_dimmer}
    fish_color_escape ${theme.text_pink}
    fish_color_autosuggestion ${theme.text_dimmer}
    fish_color_cancel ${theme.text_red}
    fish_color_cwd ${theme.text_amber}
    fish_color_user ${theme.text_teal}
    fish_color_host ${theme.text_sky}
    fish_color_host_remote ${theme.text_dim}
    fish_color_status ${theme.text_red}
    fish_pager_color_progress ${theme.text_dimmer}
    fish_pager_color_prefix ${theme.text_pink}
    fish_pager_color_completion ${theme.text}
    fish_pager_color_description ${theme.text_dimmer}
  '';

  programs.fish.shellInit = ''
    fish_config theme choose ${theme_name}
  '';
}
