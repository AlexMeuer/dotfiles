if status is-interactive
  thefuck --alias | source
  direnv hook fish | source
end

set -x GPG_TTY (tty)

abbr -a -- gits git status
abbr -a -- gitl lazygit
abbr -a -- ls exa
abbr -a -- grep rg
abbr -a -- agenda 'gcalcli agenda (date) (date  -v 23H -v 59M -v 59S) --details=location'
abbr -a -- search 'firefox -foreground -search'
