#!/bin/bash
set -euo pipefail
sha256sum -c package_hashes.txt

mapfile -t ENTRIES <package_hashes.txt

FILES=()
for ENTRY in "${ENTRIES[@]}"; do
    FILES+=("${ENTRY#*" *"}")
done

pacman -U --noconfirm --needed "${FILES[@]}"
