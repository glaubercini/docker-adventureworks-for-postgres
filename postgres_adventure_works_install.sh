#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE "Adventureworks";
EOSQL

cd /data
psql -d Adventureworks --username "$POSTGRES_USER" < /data/postgres_adventure_works_install.sql