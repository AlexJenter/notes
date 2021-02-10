---
Title: Yq
Description: yq is a portable command-line YAML processor
Repo: https://github.com/mikefarah/yq
Website: https://mikefarah.gitbook.io/yq/
Tags: shell yaml
---

```bash
# Get all the entries with a state of "open"
FILE="projects/neuewege/time-sheet.yml"
yq eval -j "$FILE" \
  | jq --raw-output '.[] | .Date |= strftime("%d.%m.%Y") | [.Date, .Occupation, .Duration] | join("|")' \
  | awk -F'|' '{sum+=$3;print $0} END {print "Total||"sum}' \
  | sed '1s/^/Date|Occupation|Duration\n-|-|-:\n/' \
  | pbcopy
```

| Date       | Occupation        | Duration |
| ---------- | ----------------- | -------: |
| 14.01.2021 | meeting - kickoff |        1 |
| 21.01.2021 | meeting - scope   |        1 |
| Total      |                   |        2 |

```bash
yq e -j . projects/neuewege/time-sheet.yml | mlr --ijson --omd filter '$State=="open"'
```
