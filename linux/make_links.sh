#!/usr/bin/env sh
DIR="$(git rev-parse --show-toplevel)"

linkIfNotExists() {
  if [ $# -lt 1 ]; then
    echo "developer error: cannot link without any arguments"
    exit 1
  fi
  LINK_TO="${DIR}/${1}"
  LINK_FROM="${HOME}/${2:-$1}"
  if [ -f "${LINK_FROM}" ] || [ -d "${LINK_FROM}" ]; then
    echo "Won't link ${LINK_FROM} because it already exists."
    return 1
  else
    ln -s "${LINK_FROM}" "${LINK_TO}"
    return 0
  fi
}

linkIfNotExists ".config/nvim"
linkIfNotExists ".config/fish"
