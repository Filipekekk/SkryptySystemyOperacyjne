#!/bin/bash

PROCESS_NAME="nazwa_procesu"
COMMAND="/ścieżka/do/procesu"

if ! pgrep -x "$PROCESS_NAME" > /dev/null; then
  echo "Proces $PROCESS_NAME nie działa. Restartowanie..."
  $COMMAND &
else
  echo "Proces $PROCESS_NAME działa poprawnie."
fi
