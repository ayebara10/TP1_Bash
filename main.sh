#!/bin/bash

BASE="$HOME/EPNro1"
SALIDA="$BASE/salida/${FILENAME}.txt"

# Manejo del parámetro optativo -d
if [ "$1" == "-d" ]; then
    echo "Borrando entorno y deteniendo procesos..."
    pkill -f "consolidar.sh"
    rm -rf "$BASE"
    exit 0
fi

# funciones del Menú 
while true; do
    echo -e "\n--- MENÚ DE OPERACIONES ---"
    echo "1) Crear entorno"
    echo "2) Correr proceso (Background)"
    echo "3) Listar alumnos por Padrón"
    echo "4) Top 10 Notas"
    echo "5) Buscar por Padrón"
    echo "6) Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) # Crear carpetas [cite: 11]
            mkdir -p "$BASE/entrada" "$BASE/salida" "$BASE/procesado"
            cp consolidar.sh "$BASE/"
            echo "Entorno EPNro1 creado con éxito." ;;
            
        2) # Correr en background
            export FILENAME
            bash "$BASE/consolidar.sh" &
            echo "Proceso de consolidación iniciado (PID: $!)." ;;
            
        3) # Ordenar por padrón (Columna 1) [cite: 14, 21]
            if [ -f "$SALIDA" ]; then
                echo -e "\n--- ALUMNOS ORDENADOS POR PADRÓN---"
                sort -n -k1 "$SALIDA"
            else
                echo "El archivo $FILENAME.txt no existe aún."
            fi ;;
            
        4) # Top 10 notas (Columna 4, numérica, reversa) [cite: 15, 21]
            if [ -f "$SALIDA" ]; then
                echo -e "\n--- TOP 10 NOTAS ---"
                sort -nr -k5 "$SALIDA" | head -n 10
            else
                echo "El archivo $FILENAME.txt no existe aún."
            fi ;;
            
        5) # Buscar por padrón [cite: 16]
            if [ -f "$SALIDA" ]; then
                echo -e "\n--- BUSCAR POR PADRÓN ---"
                read -p "Ingrese el padrón a buscar: " padron
                grep "^$padron " "$SALIDA" || echo "Padrón no encontrado."
            else
                echo "El archivo $FILENAME.txt no existe aún."
            fi ;;
            
        6) echo "¡Adiós!"; exit 0 ;;
        *) echo "Opción no válida." ;;
    esac
done
