local wezterm = require 'wezterm'

return {
  font = wezterm.font('JetBrainsMono Nerd Font'),
  font_size = 11.0,
  adjust_window_size_when_changing_font_size = false,
  window_padding = {
    left = 22,
    right = 22,
    top = 22,
    bottom = 22,
  },
  default_cursor_style = 'SteadyBar',
  enable_tab_bar = false,
  check_for_updates = false,
  term = 'xterm-256color',

  colors = {
    foreground = '#bdc3df',
    background = '#1f1f2a',
    cursor_bg = '#bdc3df',
    cursor_fg = '#1f1f2a',
    cursor_border = '#bdc3df',
    selection_fg = '#1f1f2a',
    selection_bg = '#bdc3df',

    ansi = {
      '#43435a',
      '#ff568e',
      '#64de83',
      '#efff73',
      '#73a9ff',
      '#946ff7',
      '#62c6da',
      '#dedeff',
    },
    brights = {
      '#53536b',
      '#ff69a2',
      '#73de8a',
      '#f3ff85',
      '#85b6ff',
      '#a481f7',
      '#71c2d9',
      '#ebebff',
    },
  },

  keys = {
    {
      key = 'c',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
    },
    {
      key = 'v',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.PasteFrom 'Clipboard',
    },
    {
      key = '+',
      mods = 'CTRL',
      action = wezterm.action.IncreaseFontSize,
    },
    {
      key = '-',
      mods = 'CTRL',
      action = wezterm.action.DecreaseFontSize,
    },
    {
      key = '0',
      mods = 'CTRL',
      action = wezterm.action.ResetFontSize,
    },
    {
      key = 'PageUp',
      mods = 'NONE',
      action = wezterm.action.ScrollByPage(-1),
    },
    {
      key = 'PageDown',
      mods = 'NONE',
      action = wezterm.action.ScrollByPage(1),
    },
    {
      key = '\\',
      mods = 'CTRL',
      action = wezterm.action.SendKey { key = '\\', mods = 'CTRL' },
    },
  },
}
