#!/bin/bash
set -e

# Run the default entrypoint script
/docker-entrypoint.sh postgres &

# Wait for PostgreSQL to start
until psql -h localhost -U "myuser" -c '\l' >/dev/null 2>&1; do
    sleep 1
done

# Execute custom initialization script
psql -h localhost -U "myuser" -d "postgres" -f "/docker-entrypoint-initdb.d/init-db.sql"

# Wait for the default entrypoint script to finish
wait