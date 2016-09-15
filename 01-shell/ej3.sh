#!/bin/bash

fichero=$1
declare -A V

for word in $(cat $fichero | tr " " "\n") 
do
  word=$(echo ${word} | tr -d ,\.;:)
  if [[ ${V[${word}]} ]]
  then
    (( V[${word}] = ${V[${word}]} + 1 ))
  else
    V[${word}]=1
  fi
done

for k in "${!V[@]}"
do
    echo $k ' - ' ${V["$k"]}
done |
sort -rn -k3
