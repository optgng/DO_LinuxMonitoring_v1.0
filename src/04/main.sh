#!/bin/bash

source color.conf
source info.sh
source color.sh
source output.sh

if [[ $# -eq 0 ]]; then
  regex="^[1-6]$";
  if [[ -z $column1_background || $column1_background =~ $regex ]] && 
     [[ -z $column1_font_color || $column1_font_color =~ $regex ]] &&
     [[ -z $column2_background || $column2_background =~ $regex ]] &&
     [[ -z $column2_font_color || $column2_font_color =~ $regex ]]; then
    if ! [[ -n $column1_background && -n $column1_font_color && $column1_background -eq $column1_font_color ]] || 
       ! [[ -n $column2_background && -n $column2_font_color && $column2_background -eq $column2_font_color ]]; then
      sysinfo
      set_color
      output
      output_color_name
    else
      echo "Совпадают параметры цвета фона и текстa..."
      exit 1
    fi
  else
    echo "Некорректные значения для параметров..."
    exit 1
  fi
else
  echo "Не должно быть параметров..."
  exit 1
fi