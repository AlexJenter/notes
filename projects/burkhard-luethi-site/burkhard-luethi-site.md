---
Title: Burkhard-luethi-site
Company: self
Client: [[burkhart-luethi]]
---

## Ops Scripts On Server

- `./scripts/db-dumps`
- `./scripts/db-sync.sh`
- `./scripts/go-live.sh`
- `./scripts/media-sync.sh`
- `./scripts/update-develop.sh`
- `./scripts/update-production.sh`
- `./scripts/wp`

## Log

- `10 Feb 2021 at 20:51:43`

  ran updates via ssh, recieved error when trying to update `advanced-custom-fields-pro` from `5.8.6` to `5.9.4`:

  ```plain
  Warning: Aktualisierungs-Paket nicht verfügbar.
  ```

  migrating time sheet to yml format, repro steps (relativ directory is `/Users/alexjenter/_notes/BUL/`):

  1. inital copy and cleanup of `B&L_Stunden.csv` resulting in `stunden-copy.csv`
  2. `mlr --c2j cat stunden-copy.csv | pbcopy` output to json in order to work with `jq`,
  3. `jq '.[] | . + {state:"open"}' stunden.json | jq -s | yq e -P > stunden.yml` add state of open per item and output as yml
  4. translated all dates to timestamps and checked for errors in reverse
