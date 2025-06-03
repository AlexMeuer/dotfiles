if status is-interactive
  # fish_vi_key_bindings
  # fish_default_key_bindings
  # atuin init fish | source
  thefuck --alias | source
  direnv hook fish | source
  op completion fish | source
  # starship init fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"

abbr -a -- gitl lazygit
abbr -a -- ls exa
abbr -a -- grep rg
abbr -a -- agenda 'gcalcli agenda (date) (date  -v 23H -v 59M -v 59S) --details=location'
abbr -a -- search 'firefox -foreground -search'
abbr -a -- zoomq gcalcli\ agenda\ \(date\)\ \(date\ \ -v\ 23H\ -v\ 59M\ -v\ 59S\)\ --details=location\ --tsv\ \|\ awk\ -v\ current_time=\(date +%H:%M\)\ -F\ \'\\t\'\ \'\{if\ \(\$2\ \<=\ current_time\ \&\&\ \$4\ \>\ current_time\ \&\&\ \$6\ !=\ \"\"\)\ print\ \$6\}\'\ \|\ head\ -n\ 1\ \|\ xargs\ -I\ \{\}\ sh\ -c\ \"open\ -a\ zoom.us\ \{\}\"
abbr -a -- nvimf set\ FILE\ \(fzf\)\;\ and\ nvim\ \$FILE
