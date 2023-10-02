#!/bin/bash

if [ $# -eq 0 ]; then
  echo "No parameter provided"
  exit 1
fi

if [[ $1 =~ ^[+-]?([0-9]*[.])?[0-9]+$ ]]; then
  echo "Invalid input: parameter is a number"
  exit 1
fi

echo "$1"