#!/bin/bash

function sysinfo {
  echo "HOSTNAME = " $(hostname);
  echo "TIMEZONE = " $(cat /etc/timezone) "UTC" $(date +"%Z %:z");
  echo "USER = " $(whoami);
  echo "OS = " $(cat /etc/issue.net);
  echo "DATE = " $(date '+%d %B %Y %T');
  echo "UPTIME = " $(uptime | awk '{print $1}');
  echo "UPTIME_SEC = " $(awk '{print $1}' /proc/uptime);
  echo "IP =" $(hostname -I);
  echo "MASK = " $(ifconfig enp0s3 | grep netmask | awk '{print $4}');
  echo "GATEWAY = " $(ip route | grep default | awk '{print $3}');
  echo "RAM_TOTAL = " $(free -m | grep -i mem | awk '{ printf("%.3f GB"), $2/1024 }');
  echo "RAM_USED = " $(free -m | grep -i mem | awk '{ printf("%.3f GB"), $3/1024 }');
  echo "RAM_FREE = " $(free -m | grep -i mem | awk '{ printf("%.3f GB"), $4/1024 }');
  echo "SPACE_ROOT = " $(df -B K /root | grep /dev | awk '{printf("%.2f MB"), $2/1024}');
  echo "SPACE_ROOT_USED = " $(df -B K /root | grep /dev | awk '{printf("%.2f MB"), $3/1024}');
  echo "SPACE_ROOT_FREE = " $(df -B K /root | grep /dev | awk '{printf("%.2f MB"), $4/1024}');
} 
