#!/bin/bash
set -e
cd "$(dirname "$0")"
cat zip_parts/zip_part_*.txt | tr -d '\n' | base64 -d > WPS_Plantilles.docx.zip
echo "Creat: WPS_Plantilles.docx.zip"
unzip -l WPS_Plantilles.docx.zip
echo ""
echo "Descomprimeix: unzip WPS_Plantilles.docx.zip"
