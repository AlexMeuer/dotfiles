# tmux cheatsheet

Prefix: `Ctrl+Space`

## Navigation (prefix-free)

| Key | Action |
|---|---|
| `Ctrl+h/j/k/l` | Move between panes (vim-aware) |
| `Alt+1..9` | Jump to window by number |

## Windows (tabs)

| Key | Action |
|---|---|
| `prefix, t` | New window |
| `prefix, w` | Kill window (confirm) |
| `prefix, ,` | Rename window |
| `prefix, ]` | Next window |
| `prefix, [` | Previous window |

## Panes

| Key | Action |
|---|---|
| `prefix, \|` | Vertical split |
| `prefix, -` | Horizontal split |
| `prefix, x` | Kill pane (confirm) |
| `prefix, z` | Zoom/fullscreen toggle |
| `prefix, Space` | Cycle layouts |
| `prefix, arrows` | Resize pane |

## Copy mode

| Key | Action |
|---|---|
| `prefix, Escape` | Enter copy mode |
| `prefix, v` | Paste buffer |

## Sessions

| Key / Command | Action |
|---|---|
| `prefix, d` | Detach |
| `prefix, s` | List / switch sessions |
| `prefix, $` | Rename current session |
| `prefix, )` / `prefix, (` | Next / prev session |
| `prefix, .` | Move current window to another session |
| `prefix, :kill-session` | Kill current session |
| `tmux new -s name` | New named session |
| `tmux a -t name` | Attach to session |
| `tmux kill-session -t name` | Kill session by name |

## Plugins (TPM)

| Key | Action |
|---|---|
| `prefix, I` | Install plugins |
| `prefix, U` | Update plugins |
