#!/bin/bash

function is_integer() {
  var=$1

  if [[ $var =~ ^-?[0-9]+$ ]] 
  then
    echo 0
  else
    echo 1
  fi
}

function in_range() {
  val=$1
  min=$2
  max=$3

  if [[ $val -ge $min && $val -le $max ]]
  then
    echo $val
  else
    echo 'error'
  fi
}
