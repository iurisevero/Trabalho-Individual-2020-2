echo "Running init_db.sh"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE  myproject;
    CREATE  USER myuser WITH PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE myproject TO myuser;
    ALTER USER myuser CREATEDB;
EOSQL