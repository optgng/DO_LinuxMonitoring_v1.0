#!/bin/bash

function output {
    echo -e "${left_bg}${left_txt}HOSTNAME${default_colors} = ${right_bg}${right_txt}$HOSTNAME${default_colors}"
    echo -e "${left_bg}${left_txt}TIMEZONE${default_colors} = ${right_bg}${right_txt}${right_bg}${right_txt}$TIMEZONE${default_colors}"
    echo -e "${left_bg}${left_txt}USER${default_colors} = ${right_bg}${right_txt}$USER${default_colors}"
    echo -e "${left_bg}${left_txt}OS${default_colors} = ${right_bg}${right_txt}$OS${default_colors}"
    echo -e "${left_bg}${left_txt}DATE${default_colors} = ${right_bg}${right_txt}$DATE${default_colors}"
    echo -e "${left_bg}${left_txt}UPTIME${default_colors} = ${right_bg}${right_txt}$UPTIME${default_colors}"
    echo -e "${left_bg}${left_txt}UPTIME_SEC${default_colors} = ${right_bg}${right_txt}$UPTIME_SEC${default_colors}"
    echo -e "${left_bg}${left_txt}IP${default_colors} = ${right_bg}${right_txt}$IP${default_colors}"
    echo -e "${left_bg}${left_txt}MASK${default_colors} = ${right_bg}${right_txt}$MASK${default_colors}"
    echo -e "${left_bg}${left_txt}GATEWAY${default_colors} = ${right_bg}${right_txt}$GATEWAY${default_colors}"
    echo -e "${left_bg}${left_txt}RAM_TOTAL${default_colors} = ${right_bg}${right_txt}$RAM_TOTAL${default_colors}"
    echo -e "${left_bg}${left_txt}RAM_USED${default_colors} = ${right_bg}${right_txt}$RAM_USED${default_colors}"
    echo -e "${left_bg}${left_txt}RAM_FREE${default_colors} = ${right_bg}${right_txt}$RAM_FREE${default_colors}"
    echo -e "${left_bg}${left_txt}SPACE_ROOT${default_colors} = ${right_bg}${right_txt}$SPACE_ROOT${default_colors}"
    echo -e "${left_bg}${left_txt}SPACE_ROOT_USED${default_colors} = ${right_bg}${right_txt}$SPACE_ROOT_USED${default_colors}"
    echo -e "${left_bg}${left_txt}SPACE_ROOT_FREE${default_colors} = ${right_bg}${right_txt}$SPACE_ROOT_FREE${default_colors}"
    echo ""
}

color_name=""

function get_color_name {

  if [[ $1 -eq 1 ]]; then
    color_name="(white)"
  elif [[ $1 -eq 2 ]]; then
    color_name="(red)"
  elif [[ $1 -eq 3 ]]; then
    color_name="(green)"
  elif [[ $1 -eq 4 ]]; then
    color_name="(blue)"
  elif [[ $1 -eq 5 ]]; then
    color_name="(purple)"
  elif [[ $1 -eq 6 ]]; then
    color_name="(black)"
  fi
}

function output_color_name {
  if ! [[ -z $column1_background ]]; then
    get_color_name $column1_background
    echo "Color 1 backrgound $column1_background $color_name"
  else
    get_color_name $column1_background_default
    echo "Color 1 backrgound default $color_name"
  fi 

  if ! [[ -z $column1_font_color ]]; then
    get_color_name $column1_font_color
    echo "Color 1 font color $column1_font_color $color_name"
  else
    get_color_name $column1_font_color_default
    echo "Color 1 font_color default $color_name"
  fi

  if ! [[ -z $column2_background ]]; then
    get_color_name $column2_background
    echo "Color 2 backrgound $column2_background $color_name"
  else
    get_color_name $column2_background_default
    echo "Color 2 backrgound default $color_name"
  fi 

  if ! [[ -z $column2_font_color ]]; then
    get_color_name $column2_font_color
    echo "Color 2 font color $column2_font_color $color_name"
  else
    get_color_name $column2_font_color_default
    echo "Color 2 font_color default $color_name"
  fi
}