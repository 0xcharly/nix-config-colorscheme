# Theme inspired from https://github.com/catppuccin/fish
# MIT License: Copyright (c) 2021 Catppuccin

{ flake, ... }:
let
  theme_name = "pixel";
  theme = flake.lib.colorscheme.noPrefix;
in
{
  xdg.configFile."fish/themes/${theme_name}.theme".text = ''
    # name: '${theme_name}'
    # url: 'https://github.com/0xcharly/nix-config-colorscheme'
    # preferred_background: ${theme.surface}

    fish_color_normal ${theme.text} # default color
    fish_color_command ${theme.text_function} # commands like echo
    fish_color_keyword ${theme.text_variant} --bold # keywords like if - this falls back on the command color if unset
    fish_color_quote ${theme.text_green} # quoted text like "abc"
    fish_color_redirection ${theme.text_pink} # IO redirections like >/dev/null
    fish_color_end ${theme.text_dimmer} # process separators like ; and &
    fish_color_error ${theme.text_red} # syntax errors
    fish_color_param ${theme.text} # ordinary command parameters
    fish_color_valid_path ${theme.text} -- underline-color=${theme.text_green} # parameters and redirection targets that are filenames (if the file exists)
    fish_color_option ${theme.text} # options starting with “-”, up to the first “--” parameter
    fish_color_comment ${theme.text_comment} --italics # comments like ‘# important’
    fish_color_selection ${theme.on_surface_visual} --background=${theme.surface_visual} # selected text in vi visual mode
    fish_color_operator ${theme.text_dimmer} # parameter expansion operators like * and ~
    fish_color_escape ${theme.text_teal} # character escapes like \n and \x70
    fish_color_autosuggestion ${theme.text_variant_dimmer} # autosuggestions (the proposed rest of a command)
    fish_color_cwd ${theme.text_green} # the current working directory in the default prompt
    fish_color_cwd_root ${theme.text_amber} # the current working directory in the default prompt for the root user
    fish_color_user ${theme.text_teal} # the username in the default prompt
    fish_color_host ${theme.text_dimmer} # the hostname in the default prompt
    fish_color_host_remote ${theme.text_sky} # the hostname in the default prompt for remote sessions (like ssh)
    fish_color_status ${theme.text_red} # the last command’s nonzero exit code in the default prompt
    fish_color_cancel ${theme.text_amber} # the ‘^C’ indicator on a canceled command
    fish_color_search_match ${theme.on_surface_search} --background=${theme.surface_search} # history search matches and selected pager items (background only)
    fish_color_history_current ${theme.on_surface_visual} --background=${theme.surface_visual} # the current position in the history for commands like dirh and cdh

    # fish_pager_color_progress #the progress bar at the bottom left corner
    # fish_pager_color_background #the background color of a line
    # fish_pager_color_prefix #the prefix string, i.e. the string that is to be completed
    # fish_pager_color_completion #the completion itself, i.e. the proposed rest of the string
    # fish_pager_color_description #the completion description
    # fish_pager_color_selected_background #background of the selected completion
    # fish_pager_color_selected_prefix #prefix of the selected completion
    # fish_pager_color_selected_completion #suffix of the selected completion
    # fish_pager_color_selected_description #description of the selected completion
    # fish_pager_color_secondary_background #background of every second unselected completion
    # fish_pager_color_secondary_prefix #prefix of every second unselected completion
    # fish_pager_color_secondary_completion #suffix of every second unselected completion
    # fish_pager_color_secondary_description #description of every second unselected completion
  '';

  programs.fish.shellInit = ''
    fish_config theme choose ${theme_name}
  '';
}
