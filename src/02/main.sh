#!/bin/bash

source info.sh
source input_file.sh

if [[ $# -eq 0 ]]; then
  info=$(sysinfo)
  echo "$info"
  echo ""
  input_file
else
  echo "Некорректный ввод..."
  exit 1
fi