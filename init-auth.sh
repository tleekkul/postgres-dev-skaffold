#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER biggest;
    CREATE DATABASE auth_service;
    ALTER USER biggest with encrypted password 'example-password';
    CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
    GRANT ALL PRIVILEGES ON DATABASE auth_service TO biggest;
EOSQL
