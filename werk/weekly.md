# Weekly Actions

Need some way of keeping track of tasks that are not getting done

- [ ] remove all tasks that are done
- [ ] measure how often a task has been repeated

```bash
CURRENT=$(date +"%V")
NEWWEEKLY=weekly/"${CURRENT}".mdx

printf "# KW ${CURRENT}\n\n" > "${NEWWEEKLY}"
cat werk/weekly.tpl.md >> "${NEWWEEKLY}"
printf "\n" >> "${NEWWEEKLY}"

grep --extended-regexp --no-filename '\- \[ \] ' daily/*.mdx \
 | sort -iu >> "${NEWWEEKLY}"
```

```bash
grep --extended-regexp --no-filename '\- \[[x ]\] ' daily/*.mdx \
  | sort  --ignore-leading-blanks \
          --field-separator "]" \
          --key=2 -s
```
