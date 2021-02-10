---
Title: Miller
Description: Miller is like awk, sed, cut, join, and sort for name-indexed data such as CSV, TSV, and tabular JSON
Tags: shell "tabular data"
Repo: https://github.com/johnkerl/miller
---

```bash
yq e -j . projects/neuewege/time-sheet.yml \
  | mlr --ijson --omd filter '$State=="open"' \
    then cut -o -f Date,Occupation,Duration \
    then put '@Duration += $Duration; end { dump }'
```
