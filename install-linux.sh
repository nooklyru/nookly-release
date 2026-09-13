#!/usr/bin/env bash
# Загрузчик Nookly для Linux (x64).
set -euo pipefail

REPO="notchy-ru/nookly-release"
TAG="${NOOKLY_VERSION:-v0.1.0}"
NAME="nookly-${TAG#v}-linux-x64.tar.gz"
URL="https://github.com/${REPO}/releases/download/${TAG}/${NAME}"
PREFIX="${NOOKLY_PREFIX:-$HOME/.local}"
DEST="${PREFIX}/opt/nookly"
BIN="${PREFIX}/bin"

echo "Скачиваю ${URL}"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
if ! curl -fsSL "$URL" -o "${tmp}/${NAME}"; then
  echo "Не удалось скачать сборку. Файл ${NAME} ещё не выложен в Releases." >&2
  exit 1
fi

mkdir -p "$DEST" "$BIN"
tar -xzf "${tmp}/${NAME}" -C "$DEST" --strip-components=1
ln -sfn "${DEST}/nookly" "${BIN}/nookly"
echo "Готово. Запуск: ${BIN}/nookly"
echo "Если команды нет в PATH, добавьте: export PATH=\"${BIN}:\$PATH\""
