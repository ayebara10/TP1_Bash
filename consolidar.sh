#!/bin/bash

DIRE_BASE="$HOME/EPNro1"

while true; do
    for archivo in "$DIRE_BASE/entrada"/*.txt; do
        if [ -f "$archivo" ]; then
            cat "$archivo" >> "$DIRE_BASE/salida/${FILENAME}.txt"
            mv "$archivo" "$DIRE_BASE/procesado"
        fi
    done
    sleep 2
done