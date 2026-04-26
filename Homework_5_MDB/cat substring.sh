#!/bin/bash

STR="$1" 
START="$2"
END="$3"  
MODE="$4" 


if [[ -z "$STR" || -z "$START" || -z "$END" ]]; then
    echo "Использование: $0 'строка' начало конец [del]"
    exit 1
fi

if [[ "$MODE" == "del" ]]; then
    BEFORE=$(echo "$STR" | cut -c 1-$((START-1)))
    AFTER=$(echo "$STR" | cut -c $((END+1))-)
    echo "Результат удаления: ${BEFORE}${AFTER}"
else
    RESULT=$(echo "$STR" | cut -c "$START"-"$END")
    echo "Выделенная подстрока: $RESULT"
fi
