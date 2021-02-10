#@#!/usr/bin/env bash

## build all overviews
source ./.scripts/tool-overview.sh
source ./.scripts/project-overview.sh

## archive daily notes after 7 days
find ./daily -type f -mindepth 1 -maxdepth 1 -Btime +7 -exec mv {} ./daily/archive \;
