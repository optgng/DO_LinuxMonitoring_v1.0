#!/bin/bash

source info.sh
source color.sh
source output.sh

if [[ $# -eq 4 ]]; then
  regex="^[1-6]$";
  if [[ $1 =~ $regex  &&  $2 =~ $regex  &&  $3 =~ $regex  && $4 =~ $regex ]]; then
    if [[ $1 -ne $2 && $3 -ne $4 ]]; then
      sysinfo
      set_color $1 $2 $3 $4
      output
    else
      echo "Совпадают параметры цвета фона и текстa. Введите ещё раз."
      exit 1
    fi
  else
    echo "Некорректные значения для параметров. Введите ещё раз."
    exit 1
  fi
else
  echo "Должно быть 4 параметра..."
  exit 1
fi