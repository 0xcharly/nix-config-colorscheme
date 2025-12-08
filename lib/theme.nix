palette:
with palette; rec {
  text = tailwind.slate-300;
  text_dim = tailwind.slate-400;
  text_dimmer = tailwind.slate-500;
  text_dimmest = tailwind.slate-600;
  text_conceal = tailwind.slate-700;

  text_variant = tailwind.gray-300;
  text_variant_dim = tailwind.gray-400;
  text_variant_dimmer = tailwind.gray-500;
  text_variant_dimmest = tailwind.gray-600;
  text_variant_conceal = tailwind.gray-700;

  text_red = tailwind.red-200;
  text_orange = tailwind.orange-100;
  text_amber = tailwind.amber-100;
  text_yellow = tailwind.yellow-50;
  text_lime = tailwind.lime-200;
  text_green = tailwind.green-200;
  text_emerald = tailwind.emerald-200;
  text_teal = tailwind.teal-300;
  text_cyan = tailwind.cyan-200;
  text_sky = tailwind.sky-300;
  text_blue = tailwind.blue-300;
  text_indigo = tailwind.indigo-200;
  text_violet = tailwind.violet-200;
  text_purple = tailwind.purple-200;
  text_fuchsia = tailwind.fuchsia-200;
  text_pink = tailwind.pink-200;
  text_rose = tailwind.rose-200;

  text_title = tailwind.slate-100;
  text_link = tailwind.blue-300;
  text_function = tailwind.blue-300;

  text_ok = tailwind.green-200;
  text_error = tailwind.red-200;
  text_warning = tailwind.amber-100;
  text_info = tailwind.blue-300;
  text_hint = tailwind.indigo-300;

  borders = tailwind.slate-500;

  surface_dark = tailwind.gray-950;
  surface = blends.surface;
  surface_cursorline = blends.surface_lighter;
  surface_statusline = blends.surface_lighter;
  surface_menu = blends.surface_lighter;
  surface_menu_cursorline = blends.surface_lightest;

  surface_scrollbar = blends.surface_variant;
  surface_scrollbar_thumb = blends.surface_variant_lighter;

  surface_visual = tailwind.blue-800;
  on_surface_visual = tailwind.blue-50;

  surface_red = blends.surface_red;
  on_surface_red = tailwind.red-200;

  surface_green = blends.surface_green;
  on_surface_green = tailwind.green-200;

  surface_amber = blends.surface_amber;
  on_surface_amber = tailwind.amber-100;

  surface_blue = blends.surface_blue;
  on_surface_blue = tailwind.blue-300;

  surface_violet = blends.surface_violet;
  on_surface_violet = tailwind.violet-200;

  UNUSED = others.magenta;

  terminal_color_0 = surface;
  terminal_color_8 = text_dimmer;

  terminal_color_1 = tailwind.red-300;
  terminal_color_9 = tailwind.red-300;

  terminal_color_2 = tailwind.green-300;
  terminal_color_10 = tailwind.green-300;

  terminal_color_3 = tailwind.amber-300;
  terminal_color_11 = tailwind.amber-300;

  terminal_color_4 = tailwind.blue-300;
  terminal_color_12 = tailwind.blue-300;

  terminal_color_13 = tailwind.sky-300;
  terminal_color_5 = tailwind.sky-300;

  terminal_color_6 = tailwind.violet-300;
  terminal_color_14 = tailwind.violet-300;

  terminal_color_7 = text;
  terminal_color_15 = text_dim;
}
