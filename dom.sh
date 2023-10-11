#!/bin/bash

# Función para obtener información sobre un dominio, incluyendo los puertos abiertos
obtener_informacion() {
    echo -n "Introduce el nombre de dominio que quieres analizar: "
    read dominio

    # Obtenemos la información utilizando la herramienta nmap y la mostramos en pantalla
    nmap $dominio
}

# Función para mostrar el menú
mostrar_menu() {
    echo "Menú:"
    echo "1. Obtener información sobre un dominio, incluyendo los puertos abiertos"
    echo "2. Salir"
}

# Ciclo principal del programa
while true; do
    mostrar_menu
    read opcion

    case $opcion in
        1)
            obtener_informacion
            ;;
        2)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opción inválida, por favor introduce una opción válida."
            ;;
    esac

    echo ""
done
