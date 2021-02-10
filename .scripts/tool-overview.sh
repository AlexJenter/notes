#!/usr/bin/env bash

TOOLS=(tools/*.md*)
OUTPUT='tool-overview.md'
TITLE='Tools Overview'

printf "# %s\n\n" "$TITLE" > $OUTPUT

for T in "${TOOLS[@]}"
do
	T=${T##*/}
	T=${T%%.*}
	printf -- "- [[%s]]\n" "$T" >> $OUTPUT
done

