#!/usr/bin/env bash
set -e

ogr2ogr -f "PostgreSQL" PG:"user=$POSTGRES_USER dbname=$POSTGRES_DB" /var/lib/postgresql/database.gpkg
