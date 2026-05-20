#!/bin/bash
# Backup Hermes and xurl authentication files
# Run: chmod +x backup-auth.sh && ./bash backup-auth.sh

BACKUP_DIR="$HOME/.hermes-backup-$(date +%Y%m%d-%H%M%S)"

echo "Creating backup at: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

# Backup Hermes
if [ -d "$HOME/.hermes" ]; then
    cp -r "$HOME/.hermes" "$BACKUP_DIR/hermes"
    echo "✓ Hermes config backed up"
else
    echo "⚠ No ~/.hermes directory found"
fi

# Backup xurl
if [ -d "$HOME/.config/xurl" ]; then
    cp -r "$HOME/.config/xurl" "$BACKUP_DIR/xurl"
    echo "✓ xurl config backed up"
elif [ -d "$HOME/.xurl" ]; then
    cp -r "$HOME/.xurl" "$BACKUP_DIR/xurl"
    echo "✓ xurl config backed up"
else
    echo "⚠ No xurl config directory found"
fi

echo ""
echo "Backup complete: $BACKUP_DIR"
echo "To restore: cp -r $BACKUP_DIR/hermes ~/.hermes"
