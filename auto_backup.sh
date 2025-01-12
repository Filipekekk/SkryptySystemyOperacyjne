#!/bin/bash

SOURCE_DIR="/ścieżka/do/katalogu"
BACKUP_DIR="/ścieżka/do/kopii"
DATE=$(date +%Y-%m-%d)
BACKUP_FILE="$BACKUP_DIR/backup-$DATE.tar.gz"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_FILE $SOURCE_DIR

echo "Kopia zapasowa została zapisana w $BACKUP_FILE"
