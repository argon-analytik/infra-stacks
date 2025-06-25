#!/bin/sh
# Cron example for DSM: 0 2 * * * /path/to/db_dumps.sh
mkdir -p ./data/db-dumps
pg_dumpall > ./data/db-dumps/$(date +%F).sql
