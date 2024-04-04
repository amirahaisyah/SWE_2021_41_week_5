#!/bin/bash

#define the directory paths

FILES_DIR="files"
ALPHABET="."

for file in "$FILES_DIR"/*; do
	if [[ -f "$file" ]]; then
		first_letter=$(basename "$file" | cut -c1 |tr '[:upper:]' '[:lower:]')
		if [[ "$first_letter" =~ [a-z] ]]; then
			mv "$file" "$ALPHABET/$first_letter/"
		fi
	fi
done

