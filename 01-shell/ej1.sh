#!/bin/bash

#Lea un valor entero que representa una nota, y
#"compruebe si está en el rango adecuado (0 a 10)
#"Si lo está, debe imprimirlo; si no lo está, debe mostrar un mensaje de error.
#"Si no se introduce ningún número, el script debe asumir un valor por defecto de 0.

source fns.sh


echo -n "Introduce un número entre 0 y 10: "
read x

while [[ $(is_integer $x) -eq 1 ]] 
do
  echo $x
  echo -n "Introduce un número!!: "
  read x
done

value=${x:=0}

result=$(in_range $value 0 10)

echo $result


