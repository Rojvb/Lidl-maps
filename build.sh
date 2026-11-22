#!/bin/sh
# Builds the standalone index.html (PWA) from src/app.html.
set -e
cd "$(dirname "$0")"
{
  echo '<!doctype html>'
  echo '<html lang="hu">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<link rel="manifest" href="manifest.webmanifest">'
  echo '<link rel="icon" href="icon.svg" type="image/svg+xml">'
  echo '<link rel="apple-touch-icon" href="icon.svg">'
  echo '<meta name="apple-mobile-web-app-capable" content="yes">'
  echo '<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">'
  echo '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}[hidden]{display:none!important}</style>'
  echo '</head>'
  echo '<body>'
  cat src/app.html
  echo '</body>'
  echo '</html>'
} > index.html
