#!/bin/bash
cd "$(dirname "$0")"
for f in *.docx.b64; do
  [ -f "$f" ] || continue
  out="${f%.b64}"
  base64 -d "$f" > "$out"
  echo "Creat: $out"
done
echo "Fet."
