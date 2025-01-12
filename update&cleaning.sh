#!/bin/bash

echo "Aktualizacja systemu..."
sudo apt update && sudo apt upgrade -y
echo "Czyszczenie zbędnych plików..."
sudo apt autoremove -y && sudo apt autoclean
echo "System został zaktualizowany i oczyszczony."
