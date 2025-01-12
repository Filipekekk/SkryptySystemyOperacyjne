#!/bin/bash

dysk_info=$(lsblk)


partycja="/dev/sda1"
miejsce_info=$(df -h | grep "$partycja")

data=$(date +"%Y%m%d-%H%M%S")

plik="Report_${data}.txt"

echo "Informacje o dostępnych dyskach:" > "$plik"
echo "$dysk_info" >> "$plik"
echo "" >> "$plik"
echo "Dostępne miejsce na partycji $partycja:" >> "$plik"
echo "$miejsce_info" >> "$plik"

lokalizacja=$(realpath "$plik")

echo "Plik o nazwie <$plik> został zapisany w <$lokalizacja>."
