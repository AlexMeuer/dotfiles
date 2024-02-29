if status is-interactive
  fish_vi_key_bindings
  thefuck --alias | source
end

set -x GPG_TTY (tty)

eval "$(/opt/homebrew/bin/brew shellenv)"

# pnpm
set -gx PNPM_HOME "/Users/alexandermeuer/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

abbr -a -- gitl lazygit
abbr -a -- ls exa
abbr -a -- grep rg
abbr -a -- agenda 'gcalcli agenda (date) (date  -v 23H -v 59M -v 59S) --details=location'
abbr -a -- zoomq gcalcli\ agenda\ \(date\)\ \(date\ \ -v\ 23H\ -v\ 59M\ -v\ 59S\)\ --details=location\ --tsv\ \|\ awk\ -v\ current_time=\(date +%H:%M\)\ -F\ \'\\t\'\ \'\{if\ \(\$2\ \<=\ current_time\ \&\&\ \$4\ \>\ current_time\ \&\&\ \$6\ !=\ \"\"\)\ print\ \$6\}\'\ \|\ head\ -n\ 1\ \|\ xargs\ -I\ \{\}\ sh\ -c\ \"open\ -a\ zoom.us\ \{\}\"

# bit
if not string match -q -- "/Users/alexandermeuer/bin" $PATH
  set -gx PATH $PATH "/Users/alexandermeuer/bin"
end
# bit end

# Created by `pipx` on 2024-01-09 11:07:38
set PATH $PATH /Users/alexandermeuer/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
