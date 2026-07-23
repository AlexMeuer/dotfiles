#!/bin/sh
# window-name.sh <path>
# Pretty-print a directory basename for tmux window names:
#   my-project   -> My Project
#   web-frontend -> Web Frontend
#   some-ai      -> Some AI
# Splits on - _ and space, title-cases each word, but keeps known acronyms upper.

basename "$1" | awk '
BEGIN {
  # lowercase key -> desired display form
  acro["ai"]  = "AI";  acro["api"] = "API"; acro["ui"] = "UI";
  acro["ci"]  = "CI";  acro["db"]  = "DB";  acro["id"] = "ID";
  acro["io"]  = "IO";  acro["cli"] = "CLI"; acro["os"] = "OS";
}
{
  n = split($0, w, /[-_ ]/)
  out = ""
  for (i = 1; i <= n; i++) {
    key = tolower(w[i])
    if (key in acro) {
      word = acro[key]
    } else {
      word = toupper(substr(w[i], 1, 1)) substr(w[i], 2)
    }
    out = out (i > 1 ? " " : "") word
  }
  print out
}'
