#!/bin/bash

function get_color {
  colr=0

  if [[ $1 -eq 1 ]]; then
    colr=7
  elif [[ $1 -eq 2 ]]; then
    colr=1
  elif [[ $1 -eq 3 ]]; then
    colr=2
  elif [[ $1 -eq 4 ]]; then
    colr=4
  elif [[ $1 -eq 5 ]]; then
    colr=5
  elif [[ $1 -eq 6 ]]; then
    colr=0
  fi

  return $colr
}

column1_background_default=6
column1_font_color_default=3
column2_background_default=6
column2_font_color_default=4

function set_color {
  if ! [[ -z $column1_background ]]; then
    get_color $column1_background
    left_bg="\033[4${colr}m"
  else
    get_color $column1_background_default
    left_bg="\033[4${colr}m"
  fi 

  if ! [[ -z $column1_font_color ]]; then
    get_color $column1_font_color
    left_txt="\033[3${colr}m"
  else
    get_color $column1_font_color_default
    left_txt="\033[3${colr}m"
  fi

  if ! [[ -z $column2_background ]]; then
    get_color $column2_background
    right_bg="\033[4${colr}m"
  else
    get_color $column2_background_default
    right_bg="\033[4${colr}m"
  fi 

  if ! [[ -z $column2_font_color ]]; then
    get_color $column2_font_color
    right_txt="\033[3${colr}m"
  else
    get_color $column2_font_color_default
    right_txt="\033[3${colr}m"
  fi

  default_colors="\033[37m\033[0m"
}

