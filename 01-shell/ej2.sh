#!/bin/bash

source fns.sh

log "Introduce un número entre 0 y 10: "
resultado=$(valida_nota)

if [[ $? != 0 ]]
then
  log 'error'
  exit 1
fi

declare -a V

V[0]="Muy deficiente"
V[1]="Muy deficiente"
V[2]="Muy deficiente"
V[3]="Muy deficiente"
V[4]="Insuficiente"
V[5]="Suficiente"
V[6]="Bien"
V[7]="Notable"
V[8]="Notable"
V[9]="Sobresaliente"
V[10]="Matrícula de honor"
echo ${V[${resultado}]}
