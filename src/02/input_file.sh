#!/bin/bash

function input_file {
  echo -n "Сохранить данные в файл? [Y/n] "
  read save_param
  if [[ $save_param == "Y" || $save_param == "y" ]]; then
    date_filename=$(date +'%d_%m_%y_%H_%M_%S').status
    sysinfo >> $date_filename
    echo "Результат сохранён!"
  else
    exit 1
  fi
}