#!/bin/bash

# Verificar que se proporciona un parámetro
if [ -z "$1" ]; then
    echo "Uso: $0 <nombre_de_la_clave>"
    exit 1
fi

# Iniciar el agente SSH
eval "$(ssh-agent -s)"

# Agregar la clave SSH proporcionada como argumento
ssh-add ~/.ssh/$1
