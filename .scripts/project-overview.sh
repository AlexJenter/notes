#!/usr/bin/env bash

PROJECTS=(projects/**/*.md*)
OUTPUT='project-overview.md'
TITLE='Project Overview'

printf "# %s\n" "$TITLE" > $OUTPUT

for FILENAME in "${PROJECTS[@]}"
do
	COMPANIES+=`<$FILENAME md::fm::prop Company`$'\n'
done

for C in `echo "$COMPANIES" | sed '/^$/d' | sort -u`
do
	printf "\n## %s\n\n" $C >> $OUTPUT

	for P in "${PROJECTS[@]}"
	do
		COMPANY=`<$P md::fm::prop Company`
		[[ "$COMPANY" != "$C" ]] && continue
		P=${P##*/}
		P=${P%%.*}
		printf -- "- [[%s]]\n" $P >> $OUTPUT
	done
done

