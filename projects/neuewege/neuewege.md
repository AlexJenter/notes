---
Title: Neuewege
Company: attribute
---

## Assigned Issues

- [1](https://gitlab.com/attribute/neuewege-ch/-/issues/1)
- [4](https://gitlab.com/attribute/neuewege-ch/-/issues/4)
- [5](https://gitlab.com/attribute/neuewege-ch/-/issues/5)

```bash
yq e -j projects/neuewege/time-sheet.yml | jq '.[] | "\(.Date)|\(.Occupation)"'
```
