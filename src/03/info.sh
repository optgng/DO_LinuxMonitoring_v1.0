#!/bin/bash

function sysinfo {
  HOSTNAME=$(hostname);
  TIMEZONE="$(cat /etc/timezone) "UTC" $(date +"%Z %:z")";
  USER=$(whoami);
  OS=$(cat /etc/issue.net);
  DATE=$(date '+%d %B %Y %T');
  UPTIME=$(uptime | awk '{print $1}');
  UPTIME_SEC=$(awk '{print $1}' /proc/uptime);
  IP=$(hostname -I);
  MASK=$(ifconfig enp0s3 | grep netmask | awk '{print $4}');
  GATEWAY=$(ip route | grep default | awk '{print $3}');
  RAM_TOTAL=$(free -m | grep -i mem | awk '{ printf("%.3f GB"), $2/1024 }');
  RAM_USED=$(free -m | grep -i mem | awk '{ printf("%.3f GB"), $3/1024 }');
  RAM_FREE=$(free -m | grep -i mem | awk '{ printf("%.3f GB"), $4/1024 }');
  SPACE_ROOT=$(df -B K /root | grep /dev | awk '{printf("%.2f MB"), $2/1024}');
  SPACE_ROOT_USED=$(df -B K /root | grep /dev | awk '{printf("%.2f MB"), $3/1024}');
  SPACE_ROOT_FREE=$(df -B K /root | grep /dev | awk '{printf("%.2f MB"), $4/1024}');
}