#!/bin/bash

TEMP_DIR="/tmp"
DAYS=7

find $TEMP_DIR -type f -mtime +$DAYS -exec rm -f {} \;

echo "Usunięto pliki tymczasowe starsze niż $DAYS dni z $TEMP_DIR."
