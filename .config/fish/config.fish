if status is-interactive
    # Commands to run in interactive sessions can go here
end

thefuck --alias | source

set -x GPG_TTY (tty)

# pnpm
set -gx PNPM_HOME "/Users/alex/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end