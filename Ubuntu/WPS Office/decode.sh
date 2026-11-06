#!/bin/bash
set -e
cd "$(dirname "$0")"
for f in *.docx.b64; do
  [ -f "$f" ] || continue
  out="${f%.b64}"
  base64 -d "$f" > "$out"
  echo "Creat: $out ($(wc -c < "$out") bytes)"
done
echo ""
echo "Tots els .docx generats. Obre'ls amb WPS Office."
