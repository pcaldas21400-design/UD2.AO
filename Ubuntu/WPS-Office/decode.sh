#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "=== WPS-Office: generant els .docx ==="

# Prefer ZIP if present (single or parts)
if [ -f WPS_Office_Plantilles.zip.b64 ]; then
  base64 -d WPS_Office_Plantilles.zip.b64 > WPS_Office_Plantilles.zip
  unzip -o -q WPS_Office_Plantilles.zip
  echo "Creats des de WPS_Office_Plantilles.zip"
  ls -1 *.docx
  exit 0
fi

if [ -f WPS_zip.part1.b64 ]; then
  cat WPS_zip.part*.b64 | base64 -d > WPS_Office_Plantilles.zip
  unzip -o -q WPS_Office_Plantilles.zip
  echo "Creats des de les parts del ZIP"
  ls -1 *.docx
  exit 0
fi

# Individual .docx.b64
count=0
for f in *.docx.b64; do
  [ -f "$f" ] || continue
  out="${f%.b64}"
  base64 -d "$f" > "$out"
  echo "Creat: $out ($(wc -c < "$out") bytes)"
  count=$((count+1))
done

if [ $count -eq 0 ]; then
  echo "No s'han trobat fitxers .b64. Assegura't que estan al repositori."
  exit 1
fi
echo ""
echo "Tots els .docx generats. Obre'ls amb WPS Office Writer."
