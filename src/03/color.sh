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

function set_color {
  get_color $1
  left_bg="\033[4$?m"
  get_color $2
  left_txt="\033[3$?m"
  get_color $3
  right_bg="\033[4$?m"
  get_color $4
  right_txt="\033[3$?m"
  default_colors="\033[37m\033[0m"
}

