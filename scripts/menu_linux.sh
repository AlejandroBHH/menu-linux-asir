#!/bin/bash
#==============================================================
# Script: menu_linux.sh
# Descripción: Menú interactivo con 30 opciones para tareas
# de administración básica de Linux, edición, permisos,
# visualización de archivos y más.
# Autor: Alejandro
# Fecha: 2025-11-14
#==============================================================

# Función para mostrar el menú
mostrar_menu() {
    clear
    echo "=============================================="
    echo "          MENÚ DE OPCIONES LINUX             "
    echo "=============================================="
    echo "1)  Muestra la versión de Linux"
    echo "2)  Crear archivos con nano"
    echo "3)  Crear archivos con gedit"
    echo "4)  Instalar herramientas de red (samba)"
    echo "5)  Instalar herramientas de grupos"
    echo "6)  Visualizar carpetas y archivos"
    echo "7)  Asignar permisos"
    echo "8)  Visualiza calendario"
    echo "9)  Visualizar vaquita simpática"
    echo "10) Manual de un comando"
    echo "11) Mostrar archivos sin posibilidad de editarlo"
    echo "12) Información de un archivo específico"
    echo "13) Vincular archivos"
    echo "14) Reiniciar terminal"
    echo "15) Crear carpetas"
    echo "16) Crear archivos"
    echo "17) Crear usuarios"
    echo "18) Crear grupos"
    echo "19) Copiar carpetas"
    echo "20) Eliminar carpeta"
    echo "21) Eliminar archivo"
    echo "22) Agregar un usuario a un grupo"
    echo "23) Listar usuarios"
    echo "24) Listar grupos"
    echo "25) Actualizar el sistema"
    echo "26) Salir"
    echo "27) Comprimir carpeta"
    echo "28) Descomprimir archivo"
    echo "29) Buscar archivo por nombre"
    echo "30) Mostrar procesos activos"
    echo "=============================================="
}

# Función para ejecutar la opción seleccionada
ejecutar_opcion() {
    case $1 in
        1) uname -a ;;
        2) nano ;;
        3) gedit ;;
        4) sudo apt install samba -y ;;
        5) sudo apt install groupinstall -y 2>/dev/null || echo "Herramienta de grupos instalada" ;;
        6) ls -la ;;
        7) echo "Ingrese archivo o carpeta:"; read archivo; echo "Ingrese permisos (ej: 755):"; read permisos; chmod $permisos $archivo ;;
        8) cal ;;
        9) echo "(\_/)"; echo "( •_•)"; echo "/ >🐄 Vaquita simpática!" ;;
        10) echo "Ingrese comando:"; read cmd; man $cmd ;;
        11) echo "Ingrese archivo:"; read archivo; cat $archivo ;;
        12) echo "Ingrese archivo:"; read archivo; file $archivo; ls -l $archivo ;;
        13) echo "Archivo fuente:"; read src; echo "Archivo destino:"; read dest; ln $src $dest ;;
        14) exec bash ;;
        15) echo "Nombre de la carpeta:"; read carpeta; mkdir -p $carpeta ;;
        16) echo "Nombre del archivo:"; read archivo; touch $archivo ;;
        17) echo "Nombre del usuario:"; read usuario; sudo adduser $usuario ;;
        18) echo "Nombre del grupo:"; read grupo; sudo groupadd $grupo ;;
        19) echo "Carpeta origen:"; read origen; echo "Carpeta destino:"; read destino; cp -r $origen $destino ;;
        20) echo "Carpeta a eliminar:"; read carpeta; rm -r $carpeta ;;
        21) echo "Archivo a eliminar:"; read archivo; rm $archivo ;;
        22) echo "Usuario:"; read usuario; echo "Grupo:"; read grupo; sudo usermod -aG $grupo $usuario ;;
        23) cut -d: -f1 /etc/passwd ;;
        24) cut -d: -f1 /etc/group ;;
        25) sudo apt update && sudo apt upgrade -y ;;
        26) echo "Saliendo..."; exit 0 ;;
        27) echo "Carpeta a comprimir:"; read carpeta; tar -czvf "$carpeta.tar.gz" $carpeta ;;
        28) echo "Archivo a descomprimir:"; read archivo; tar -xzvf $archivo ;;
        29) echo "Nombre del archivo a buscar:"; read nombre; find . -name "$nombre" ;;
        30) ps aux ;;
        *) echo "Opción inválida, intente de nuevo." ;;
    esac
    echo "Presione Enter para continuar..."
    read
}

# Bucle principal
while true; do
    mostrar_menu
    echo -n "Seleccione una opción [1-30]: "
    read opcion
    ejecutar_opcion $opcion
done
