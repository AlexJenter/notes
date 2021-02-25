---
Title: GNU date
Tags: shell date formating
Manual: https://www.gnu.org/software/coreutils/manual/html_node/date-invocation.html#date-invocation
---

## natural language

```bash
gdate --date 'last week' +"%d.%m.%y"
```

## even weirder

```bash
gdate --date 'TZ="America/Los_Angeles" next week' +"%d.%m.%y"
```

## unix seconds to "swiss"

```bash
gdate --date="@1534975200" +"%d.%m.%y"
```
