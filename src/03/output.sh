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
} 