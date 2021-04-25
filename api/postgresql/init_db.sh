psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    DROP DATABASE IF EXISTS myproject;
    DROP USER IF EXISTS myuser;
    CREATE DATABASE  myproject;
    CREATE  USER myuser WITH PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE myproject TO myuser;
    ALTER USER myuser CREATEDB;
EOSQL