local M = {}

function M.setup()
    vim.o.bg = 'light'
    local my_colors = {
        bg_main = "#ffffff",
        fg_main = "#000000",
        bg_dim = "#f8f8f8",
        fg_dim = "#282828",
        bg_alt = "#f0f0f0",
        fg_alt = "#505050",
        bg_active = "#d7d7d7",
        fg_active = "#0a0a0a",
        bg_inactive = "#efefef",
        fg_inactive = "#404148",
        bg_special_cold = "#dde3f4",
        fg_special_cold = "#093060",
        bg_special_mild = "#c4ede0",
        fg_special_mild = "#184034",
        bg_special_warm = "#f0e0d4",
        fg_special_warm = "#5d3026",
        bg_special_calm = "#f8ddea",
        fg_special_calm = "#61284f",
        red = "#a60000",
        red_alt = "#972500",
        red_alt_other = "#a0132f",
        red_faint = "#7f1010",
        red_alt_faint = "#702f00",
        red_alt_other_faint = "#7f002f",
        green = "#005e00",
        green_alt = "#315b00",
        green_alt_other = "#145c33",
        green_faint = "#104410",
        green_alt_faint = "#30440f",
        green_alt_other_faint = "#0f443f",
        yellow = "#813e00",
        yellow_alt = "#70480f",
        yellow_alt_other = "#863927",
        yellow_faint = "#5f4400",
        yellow_alt_faint = "#5d5000",
        yellow_alt_other_faint = "#5e3a20",
        blue = "#0031a9",
        blue_alt = "#2544bb",
        blue_alt_other = "#0000c0",
        blue_faint = "#003497",
        blue_alt_faint = "#0f3d8c",
        blue_alt_other_faint = "#001087",
        magenta = "#721045",
        magenta_alt = "#8f0075",
        magenta_alt_other = "#5317ac",
        magenta_faint = "#752f50",
        magenta_alt_faint = "#7b206f",
        magenta_alt_other_faint = "#55348e",
        cyan = "#00538b",
        cyan_alt = "#30517f",
        cyan_alt_other = "#005a5f",
        cyan_faint = "#005077",
        cyan_alt_faint = "#354f6f",
        cyan_alt_other_faint = "#125458",
        red_intense = "#b60000",
        orange_intense = "#904200",
        green_intense = "#006800",
        yellow_intense = "#605b00",
        blue_intense = "#1f1fce",
        magenta_intense = "#a8007f",
        purple_intense = "#7f10d0",
        cyan_intense = "#005f88",
        red_active = "#8a0000",
        green_active = "#004c2e",
        yellow_active = "#702d1f",
        blue_active = "#0030b4",
        magenta_active = "#5c2092",
        cyan_active = "#003f8a",
        red_subtle_bg = "#f2b0a2",
        red_intense_bg = "#ff8892",
        green_subtle_bg = "#aecf90",
        green_intense_bg = "#5ada88",
        yellow_subtle_bg = "#e4c340",
        yellow_intense_bg = "#f5df23",
        blue_subtle_bg = "#b5d0ff",
        blue_intense_bg = "#6aaeff",
        magenta_subtle_bg = "#f0d3ff",
        magenta_intense_bg = "#d5baff",
        cyan_subtle_bg = "#c0efff",
        cyan_intense_bg = "#42cbd4",
        red_fringe_bg = "#f08290",
        green_fringe_bg = "#62c86a",
        yellow_fringe_bg = "#dbba3f",
        blue_fringe_bg = "#82afff",
        magenta_fringe_bg = "#e0a3ff",
        cyan_fringe_bg = "#2fcddf",
        red_graph_0_bg = "#ef6f79",
        red_graph_1_bg = "#ff9f9f",
        green_graph_0_bg = "#49d239",
        green_graph_1_bg = "#6dec6d",
        yellow_graph_0_bg = "#efec08",
        yellow_graph_1_bg = "#dbff4e",
        blue_graph_0_bg = "#55a2f0",
        blue_graph_1_bg = "#7fcfff",
        magenta_graph_0_bg = "#ba86ef",
        magenta_graph_1_bg = "#e7afff",
        cyan_graph_0_bg = "#30d3f0",
        cyan_graph_1_bg = "#6fefff",
        red_refine_bg = "#ffcccc",
        red_refine_fg = "#780000",
        green_refine_bg = "#aceaac",
        green_refine_fg = "#004c00",
        yellow_refine_bg = "#fff29a",
        yellow_refine_fg = "#604000",
        blue_refine_bg = "#8ac7ff",
        blue_refine_fg = "#002288",
        magenta_refine_bg = "#ffccff",
        magenta_refine_fg = "#770077",
        cyan_refine_bg = "#8eecf4",
        cyan_refine_fg = "#004850",
        red_nuanced_bg = "#fff1f0",
        red_nuanced_fg = "#5f0000",
        green_nuanced_bg = "#ecf7ed",
        green_nuanced_fg = "#004000",
        yellow_nuanced_bg = "#fff3da",
        yellow_nuanced_fg = "#3f3000",
        blue_nuanced_bg = "#f3f3ff",
        blue_nuanced_fg = "#201f55",
        magenta_nuanced_bg = "#fdf0ff",
        magenta_nuanced_fg = "#541f4f",
        cyan_nuanced_bg = "#ebf6fa",
        cyan_nuanced_fg = "#0f3360",
        bg_hl_line = "#f2eff3",
        bg_hl_line_intense = "#e0e0e0",
        bg_hl_alt = "#fbeee0",
        bg_hl_alt_intense = "#e8dfd1",
        bg_paren_match = "#e0af82",
        bg_paren_match_intense = "#c488ff",
        bg_region = "#bcbcbc",
        bg_tab_bar = "#d5d5d5",
        bg_tab_active = "#f6f6f6",
        bg_tab_inactive = "#bdbdbd",
        bg_tab_inactive_alt = "#999999",
        fg_tab_accent = "#30169e",
        red_tab = "#680000",
        green_tab = "#003900",
        yellow_tab = "#393000",
        orange_tab = "#502300",
        blue_tab = "#000080",
        cyan_tab = "#052f60",
        magenta_tab = "#5f004d",
        purple_tab = "#400487",
        fg_escape_char_construct = "#8b1030",
        fg_escape_char_backslash = "#654d0f",
        fg_lang_error = "#9f004f",
        fg_lang_warning = "#604f0f",
        fg_lang_note = "#4040ae",
        fg_lang_underline_error = "#ef4f54",
        fg_lang_underline_warning = "#cf9f00",
        fg_lang_underline_note = "#3f6fef",
        fg_window_divider_inner = "#888888",
        fg_window_divider_outer = "#585858",
        fg_unfocused = "#56576d",
        fg_docstring = "#2a486a",
        fg_comment_yellow = "#5f4400",
        bg_header = "#e5e5e5",
        fg_header = "#2a2a2a",
        bg_whitespace = "#f5efef",
        fg_whitespace = "#624956",
        bg_diff_heading = "#b7cfe0",
        fg_diff_heading = "#041645",
        bg_diff_added = "#d4fad4",
        fg_diff_added = "#004500",
        bg_diff_added_deuteran = "#daefff",
        fg_diff_added_deuteran = "#002044",
        bg_diff_changed = "#fcefcf",
        fg_diff_changed = "#524200",
        bg_diff_removed = "#ffe8ef",
        fg_diff_removed = "#691616",
        bg_diff_refine_added = "#94cf94",
        fg_diff_refine_added = "#002a00",
        bg_diff_refine_added_deuteran = "#77c0ef",
        fg_diff_refine_added_deuteran = "#000035",
        bg_diff_refine_changed = "#cccf8f",
        fg_diff_refine_changed = "#302010",
        bg_diff_refine_removed = "#daa2b0",
        fg_diff_refine_removed = "#400000",
        bg_diff_focus_added = "#bbeabb",
        fg_diff_focus_added = "#002c00",
        bg_diff_focus_added_deuteran = "#bacfff",
        fg_diff_focus_added_deuteran = "#001755",
        bg_diff_focus_changed = "#ecdfbf",
        fg_diff_focus_changed = "#392900",
        bg_diff_focus_removed = "#efcbcf",
        fg_diff_focus_removed = "#4a0000",
        bg_mark_sel = "#a0f0cf",
        fg_mark_sel = "#005040",
        bg_mark_del = "#ffccbb",
        fg_mark_del = "#840040",
        bg_mark_alt = "#f5d88f",
        fg_mark_alt = "#782900"
    }
    return my_colors
end

return M