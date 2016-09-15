#!/bin/bash

#Lea un valor entero que representa una nota, y
#"compruebe si está en el rango adecuado (0 a 10)
#"Si lo está, debe imprimirlo; si no lo está, debe mostrar un mensaje de error.
#"Si no se introduce ningún número, el script debe asumir un valor por defecto de 0.

source fns.sh

function valida_nota() {

  read x

  if [[ $(is_integer $x) -eq 1 ]] 
  then
    x=0
  fi

  result=$(in_range $x 0 10)

  return_value=$?

  echo $result
  return $return_value
}

log "Introduce un número entre 0 y 10: "
resultado=$(valida_nota)
log $resultado

export resultado
