if status is-interactive
  fish_vi_key_bindings
  thefuck --alias | source
end

set -x GPG_TTY (tty)

eval "$(/opt/homebrew/bin/brew shellenv)"

# pnpm
set -gx PNPM_HOME "/Users/alex/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

abbr -a -- gitl lazygit
abbr -a -- ls exa
abbr -a -- grep rg
