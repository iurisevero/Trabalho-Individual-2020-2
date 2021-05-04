echo "Running init_db.sh"
# postgresql initdb creates the database and sets the username and password
# there is no need to repeat this process here
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    \set postgres_db `echo "$POSTGRES_DB"`
    \set postgres_user `echo "$POSTGRES_USER"`
    GRANT ALL PRIVILEGES ON DATABASE :postgres_db TO :postgres_user ;
    ALTER USER :postgres_user CREATEDB;
EOSQL
